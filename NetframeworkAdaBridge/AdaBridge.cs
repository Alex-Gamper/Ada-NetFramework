/*
--------------------------------------------------------------------------------
--                                                                            --
--    Copyright(c) 2019 Alexander Gamper, All Rights Reserved.                --
--                                                                            --
--    Ada-NetFramework                                                        --
--    Version   : 1.0.0.0                                                     --
--                                                                            --
-- This program is free software: you can redistribute it and / or modify     --
-- it under the terms of the GNU Lesser General Public License as published by--
-- the Free Software Foundation, either version 3 of the License, or          --
-- (at your option) any later version.                                        --
--                                                                            --
-- This program is distributed in the hope that it will be useful,            --
-- but WITHOUT ANY WARRANTY; without even the implied warranty of             --
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.See the               --
-- GNU Lesser General Public License for more details.                        --
--                                                                            --
-- You should have received a copy of the GNU Lesser General Public License   --
-- along with this program.If not, see http://www.gnu.org/licenses            --
--                                                                            --
--------------------------------------------------------------------------------
*/
using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Runtime.InteropServices;
using System.Text;
using System.Threading.Tasks;

namespace NetFrameworkAdaBridge
{

    [ComVisible(true)]
    [Guid("5FE6867E-DF2C-44A5-A2F6-7644BC1D2D85")]
    public interface IAdaMarshal
    {
        Delegate GetDelegateForFunctionPointer(IntPtr pUnmanagedFunction, Type type);

        IntPtr GetFunctionPointerForDelegate(Delegate d);

        IntPtr AllocCoTaskMem(int cb);

        void FreeCoTaskMem(IntPtr ptr);

        object InvokeMethod(Type type, String name, BindingFlags invokeAtts, Binder binder, Object target, [In, Out] object[] args);

        [return: MarshalAs(UnmanagedType.Interface)]
        object GetObjectForNativeVariant(IntPtr pSrcNativeVariant);

        void GetNativeVariantForObject([MarshalAs(UnmanagedType.Interface)] object obj, [In, Out] IntPtr pDstNativeVariant);

        [return: MarshalAs(UnmanagedType.Interface)]
        object CreateEnum(Type type, int value);

        [return: MarshalAs(UnmanagedType.Interface)]
        object InvokeMethod2(Type type, String name, BindingFlags invokeAtts, Binder binder, Object target, [In, Out] object[] args);
    }

    [ComVisible(true)]
    [Guid("F9897B6B-57BD-4009-A12F-E51FC2C3CDE5")]
    [ClassInterface(ClassInterfaceType.AutoDual)]
    public class AdaMarshal : IAdaMarshal
    {
        public Delegate GetDelegateForFunctionPointer(IntPtr pUnmanagedFunction, Type type)
        {
            return Marshal.GetDelegateForFunctionPointer(pUnmanagedFunction, type);
        }

        public IntPtr GetFunctionPointerForDelegate(Delegate d)
        {
            return Marshal.GetFunctionPointerForDelegate(d);
        }

        public IntPtr AllocCoTaskMem(int cb)
        {
            return Marshal.AllocCoTaskMem(cb);
        }

        public void FreeCoTaskMem(IntPtr ptr)
        {
            Marshal.FreeCoTaskMem(ptr);
            return;
        }

        public object InvokeMethod(Type type, String name, BindingFlags invokeAtts, Binder binder, Object target, [In, Out] object[] args)
        {
            return type.InvokeMember(name, invokeAtts, binder, target, args);
        }

        [return: MarshalAs(UnmanagedType.Interface)]
        public object GetObjectForNativeVariant(IntPtr pSrcNativeVariant)
        {
            return Marshal.GetObjectForNativeVariant(pSrcNativeVariant);
        }

        public void GetNativeVariantForObject([MarshalAs(UnmanagedType.Interface)] object obj, [In, Out] IntPtr pDstNativeVariant)
        {
            Marshal.GetNativeVariantForObject(obj, pDstNativeVariant);
        }

        [return: MarshalAs(UnmanagedType.Interface)]
        public object CreateEnum(Type type, int value)
        {
            return System.Enum.ToObject(type, value);
        }

        [return: MarshalAs(UnmanagedType.Interface)]
        public object InvokeMethod2(Type type, String name, BindingFlags invokeAtts, Binder binder, Object target, [In, Out] object[] args)
        {
            return type.InvokeMember(name, invokeAtts, binder, target, args);
        }
    }
}
