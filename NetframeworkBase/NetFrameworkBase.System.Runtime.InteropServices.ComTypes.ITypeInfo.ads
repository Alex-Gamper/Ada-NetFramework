--------------------------------------------------------------------------------
-- <auto-generated>                                                           --
--     This code was generated by a tool.                                     --
--                                                                            --
--     Changes to this file may cause incorrect behavior and will be lost if  --
--     the code is regenerated.                                               --
-- </auto-generated>                                                          --
--------------------------------------------------------------------------------
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
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the               --
-- GNU Lesser General Public License for more details.                        --
--                                                                            --
-- You should have received a copy of the GNU Lesser General Public License   --
-- along with this program.If not, see http://www.gnu.org/licenses            --
--                                                                            --
--------------------------------------------------------------------------------
limited with NetFrameworkBase.System.Runtime.InteropServices.ComTypes.ITypeLib;
limited with NetFrameworkBase.System.Runtime.InteropServices.ComTypes.ITypeComp;
limited with NetFrameworkBase.System.Runtime.InteropServices.ComTypes.IMPLTYPEFLAGS;
limited with NetFrameworkBase.System.Object;
limited with NetFrameworkBase.System.Runtime.InteropServices.ComTypes.DISPPARAMS;
limited with NetFrameworkBase.System.Runtime.InteropServices.ComTypes.INVOKEKIND;
limited with NetFrameworkBase.System.Guid;
with NetFrameworkWin32;
with NetFrameworkAdaRuntime;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Runtime.InteropServices.ComTypes.ITypeInfo is
   
   type Kind is interface and NetFrameworkWin32.IUnknown;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array (Natural range <>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function GetTypeAttr
      (
         this : in out ITypeInfo.Kind;
         ppTypeAttr : NetFrameworkBase.IntPtr
      ) return HResult is abstract;
      
      function GetFuncDesc
      (
         this : in out ITypeInfo.Kind;
         index : NetFrameworkBase.Int32;
         ppFuncDesc : NetFrameworkBase.IntPtr
      ) return HResult is abstract;
      
      function GetVarDesc
      (
         this : in out ITypeInfo.Kind;
         index : NetFrameworkBase.Int32;
         ppVarDesc : NetFrameworkBase.IntPtr
      ) return HResult is abstract;
      
      function GetDocumentation
      (
         this : in out ITypeInfo.Kind;
         index : NetFrameworkBase.Int32;
         strName : NetFrameworkBase.BSTR;
         strDocString : NetFrameworkBase.BSTR;
         dwHelpContext : NetFrameworkBase.Int32;
         strHelpFile : NetFrameworkBase.BSTR
      ) return HResult is abstract;
      
      function GetContainingTypeLib
      (
         this : in out ITypeInfo.Kind;
         ppTLB : NetFrameworkBase.System.Runtime.InteropServices.ComTypes.ITypeLib.Kind_Ptr;
         pIndex : NetFrameworkBase.Int32
      ) return HResult is abstract;
      
      function ReleaseTypeAttr
      (
         this : in out ITypeInfo.Kind;
         pTypeAttr : NetFrameworkBase.IntPtr
      ) return HResult is abstract;
      
      function ReleaseFuncDesc
      (
         this : in out ITypeInfo.Kind;
         pFuncDesc : NetFrameworkBase.IntPtr
      ) return HResult is abstract;
      
      function ReleaseVarDesc
      (
         this : in out ITypeInfo.Kind;
         pVarDesc : NetFrameworkBase.IntPtr
      ) return HResult is abstract;
      
      function GetTypeComp
      (
         this : in out ITypeInfo.Kind;
         ppTComp : NetFrameworkBase.System.Runtime.InteropServices.ComTypes.ITypeComp.Kind_Ptr
      ) return HResult is abstract;
      
      function GetNames
      (
         this : in out ITypeInfo.Kind;
         memid : NetFrameworkBase.Int32;
         rgBstrNames : NetFrameworkBase.BSTR_Array;
         cMaxNames : NetFrameworkBase.Int32;
         pcNames : NetFrameworkBase.Int32
      ) return HResult is abstract;
      
      function GetRefTypeOfImplType
      (
         this : in out ITypeInfo.Kind;
         index : NetFrameworkBase.Int32;
         href : NetFrameworkBase.Int32
      ) return HResult is abstract;
      
      function GetImplTypeFlags
      (
         this : in out ITypeInfo.Kind;
         index : NetFrameworkBase.Int32;
         pImplTypeFlags : NetFrameworkBase.System.Runtime.InteropServices.ComTypes.IMPLTYPEFLAGS.Kind
      ) return HResult is abstract;
      
      function GetIDsOfNames
      (
         this : in out ITypeInfo.Kind;
         rgszNames : NetFrameworkBase.BSTR_Array;
         cNames : NetFrameworkBase.Int32;
         pMemId : NetFrameworkBase.Int32_Array
      ) return HResult is abstract;
      
      function Invoke
      (
         this : in out ITypeInfo.Kind;
         pvInstance : NetFrameworkBase.System.Object.Kind_Ptr;
         memid : NetFrameworkBase.Int32;
         wFlags : NetFrameworkBase.Int16;
         pDispParams : NetFrameworkBase.System.Runtime.InteropServices.ComTypes.DISPPARAMS.Kind_Ptr;
         pVarResult : NetFrameworkBase.IntPtr;
         pExcepInfo : NetFrameworkBase.IntPtr;
         puArgErr : NetFrameworkBase.Int32
      ) return HResult is abstract;
      
      function GetDllEntry
      (
         this : in out ITypeInfo.Kind;
         memid : NetFrameworkBase.Int32;
         invKind : NetFrameworkBase.System.Runtime.InteropServices.ComTypes.INVOKEKIND.Kind;
         pBstrDllName : NetFrameworkBase.IntPtr;
         pBstrName : NetFrameworkBase.IntPtr;
         pwOrdinal : NetFrameworkBase.IntPtr
      ) return HResult is abstract;
      
      function GetRefTypeInfo
      (
         this : in out ITypeInfo.Kind;
         hRef : NetFrameworkBase.Int32;
         ppTI : NetFrameworkBase.System.Runtime.InteropServices.ComTypes.ITypeInfo.Kind_Ptr
      ) return HResult is abstract;
      
      function AddressOfMember
      (
         this : in out ITypeInfo.Kind;
         memid : NetFrameworkBase.Int32;
         invKind : NetFrameworkBase.System.Runtime.InteropServices.ComTypes.INVOKEKIND.Kind;
         ppv : NetFrameworkBase.IntPtr
      ) return HResult is abstract;
      
      function CreateInstance
      (
         this : in out ITypeInfo.Kind;
         pUnkOuter : NetFrameworkBase.System.Object.Kind_Ptr;
         riid : NetFrameworkBase.System.Guid.Kind_Ptr;
         ppvObj : NetFrameworkBase.System.Object.Kind_Ptr
      ) return HResult is abstract;
      
      function GetMops
      (
         this : in out ITypeInfo.Kind;
         memid : NetFrameworkBase.Int32;
         pBstrMops : NetFrameworkBase.BSTR
      ) return HResult is abstract;
      
   private
   
      This_AssemblyFile : constant Standard.Wide_String := "C:\Windows\Microsoft.NET\Framework64\v4.0.30319\mscorlib.dll";
      This_AssemblyName : constant Standard.Wide_String := "mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089";
      This_TypeName     : constant Standard.Wide_String := "System.Runtime.InteropServices.ComTypes.ITypeInfo";
   
end;
