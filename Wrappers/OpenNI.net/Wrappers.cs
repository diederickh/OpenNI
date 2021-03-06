﻿using System;
using System.Collections.Generic;
using System.Runtime.InteropServices;

namespace xn
{
	public class WrapperUtils
	{
		public static string GetErrorMessage(UInt32 status)
		{
            return Marshal.PtrToStringAnsi(OpenNIImporter.xnGetStatusString(status));
		}

		public static void CheckStatus(UInt32 status)
		{
			if (status != 0)
			{
				throw new XnStatusException(status);
			}
		}

		public static void CheckEnumeration(UInt32 status, EnumerationErrors errors)
		{
			if (status != 0)
			{
				if (errors != null && !errors.IsEmpty())
				{
					throw new GeneralException(errors.ToString());
				}
				else
				{
					throw new XnStatusException(status);
				}
			}
		}
	}

	public abstract class HandleWrapper
	{
		internal HandleWrapper(UInt32 handle)
		{
			this.handle = handle;
		}

		/// <summary>
		/// Gets the native (C language) OpenNI handle. This method should only be used for native-managed transitions.
		/// </summary>
		/// <returns>An OpenNI handle</returns>
		public UInt32 ToNative()
		{
			return this.handle;
		}

		internal UInt32 InternalHandle
		{
			get { return this.handle; }
		}

		private UInt32 handle;
	}

	public abstract class ObjectWrapper : IDisposable
	{
		internal ObjectWrapper(IntPtr ptr)
		{
			if (ptr == IntPtr.Zero)
			{
				throw new GeneralException("c# wrappers: Trying to wrap a null object!");
			}

			this.ptr = ptr;
		}

		~ObjectWrapper()
		{
			Dispose(false);
		}

		/// <summary>
		/// Gets the native (C language) OpenNI object. This method should only be used for native-managed transitions.
		/// </summary>
		/// <returns>A pointer to the OpenNI object</returns>
		public IntPtr ToNative()
		{
			return this.ptr;
		}

		#region IDisposable Members

		public void Dispose()
		{
			Dispose(true);
			GC.SuppressFinalize(this);
		}

		#endregion

		internal IntPtr InternalObject
		{
			get { return this.ptr; }
		}

		protected abstract void FreeObject(IntPtr ptr);

		protected virtual void Dispose(bool disposing)
		{
			if (this.InternalObject != IntPtr.Zero)
			{
				FreeObject(this.InternalObject);
				this.ptr = IntPtr.Zero;
			}
		}

		private IntPtr ptr;
	}

	public class GeneralException : System.Exception
	{
		public GeneralException(string message)
			: base(message)
		{
		}
	}

	public class XnStatusException : GeneralException
	{
		public XnStatusException(UInt32 status)
			: base(WrapperUtils.GetErrorMessage(status))
		{
			this.status = status;
		}

		public UInt32 Status
		{
			get { return status; }
		}

		private UInt32 status;
	}

	public class LockHandle : HandleWrapper
	{
		internal LockHandle(UInt32 handle)
			: base(handle)
		{
		}

		/// <summary>
		/// Creates a managed LockHandle object to wrap a native one.
		/// </summary>
		/// <param name="handle">The native lock handle</param>
		/// <returns>A managed LockHandle object</returns>
		static public LockHandle FromNative(UInt32 handle)
		{
			return new LockHandle(handle);
		}
	}

	public struct CodecID
	{
		public CodecID(UInt32 internalValue)
		{
			this.val = internalValue;
		}

		public CodecID(byte byte1, byte byte2, byte byte3, byte byte4) :
			this((UInt32)(byte1 << 24 | byte2 << 16 | byte3 << 8 | byte4))
		{
		}

		public CodecID(char char1, char char2, char char3, char char4) :
			this((byte)char1, (byte)char2, (byte)char3, (byte)char4)
		{
		}

		public static readonly CodecID Null = new CodecID(0, 0, 0, 0);
		public static readonly CodecID Uncompressed = new CodecID('N', 'O', 'N', 'E');
		public static readonly CodecID Jpeg = new CodecID('J', 'P', 'E', 'G');
		public static readonly CodecID Z16 = new CodecID('1', '6', 'z', 'P');
		public static readonly CodecID Z16WithTables = new CodecID('1', '6', 'z', 'T');
		public static readonly CodecID Z8 = new CodecID('I', 'm', '8', 'z');

		internal UInt32 InternalValue
		{
			get { return this.val; }
		}

		private UInt32 val;
	}

	public class NodeWrapper : ObjectWrapper
	{
		internal NodeWrapper(IntPtr hNode, bool addRef)
			: base(hNode)
		{
			if (addRef)
			{
				OpenNIImporter.xnProductionNodeAddRef(hNode);
			}
		}

		public override bool Equals(object obj)
		{
			return Equals(obj as NodeWrapper);
		}

		public bool Equals(NodeWrapper other)
		{
			if (other == null)
				return false;

			return (this.InternalObject == other.InternalObject);
		}

		public override int GetHashCode()
		{
			return this.InternalObject.GetHashCode();
		}

 		/// TRUE if the object points to an actual node, FALSE otherwise.
 		public bool IsValid
		{
			get { return (this.InternalObject != IntPtr.Zero); }
		}

		public string GetName()
		{
			return OpenNIImporter.xnGetNodeName(this.InternalObject);
		}

		protected override void FreeObject(IntPtr ptr)
		{
			OpenNIImporter.xnProductionNodeRelease(ptr);
		}
	};

	public class Capability : NodeWrapper
	{
		public Capability(ProductionNode node) :
			base(node.InternalObject, true)
		{
			this.node = node;
		}

		internal ProductionNode node;
	}

	public interface IMarshaler : IDisposable
	{
		IntPtr Native { get; }
	}

	public class Marshaler<T> : IMarshaler
	{
		public Marshaler(T obj, bool marshalOut, params IMarshaler[] inner)
		{
			this.obj = obj;
			this.marshalOut = marshalOut;
			this.native = this.Allocate();
			// we always have to copy in (so that pointers are set correctly)
			ManagedToNative(obj, this.native);
			this.inner = inner;
		}

		#region IMarshaler Members

		public IntPtr Native
		{
			get { return this.native; }
		}

		#endregion

		#region IDisposable Members

		public void Dispose()
		{
			Dispose(true);
			GC.SuppressFinalize(this);
		}

		#endregion

		protected virtual IntPtr Allocate()
		{
			return Marshal.AllocHGlobal(Marshal.SizeOf(this.obj));
		}

		protected virtual void Free(IntPtr ptr)
		{
			Marshal.FreeHGlobal(ptr);
		}

		protected virtual void ManagedToNative(T source, IntPtr dest)
		{
			Marshal.StructureToPtr(source, dest, false);
		}

		protected virtual void NativeToManaged(IntPtr source, T dest)
		{
			Marshal.PtrToStructure(source, dest);
		}

		private void Dispose(bool disposing)
		{
			if (this.native != IntPtr.Zero)
			{
				if (this.marshalOut)
				{
					NativeToManaged(this.native, this.obj);
				}
				Free(this.native);
				this.native = IntPtr.Zero;

				foreach (IMarshaler marshaler in this.inner)
				{
					marshaler.Dispose();
				}
				this.inner = null;
			}
		}

		private T obj;
		private bool marshalOut;
		private IntPtr native;
		private IMarshaler[] inner;
	}
}
