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
limited with NetFrameworkBase.System.Reflection.BindingFlags;
limited with NetFrameworkBase.System.Reflection.Binder;
limited with NetFrameworkBase.System.Type_x;
limited with NetFrameworkBase.System.Reflection.ParameterModifier;
limited with NetFrameworkBase.System.Object;
limited with NetFrameworkBase.System.Globalization.CultureInfo;
limited with NetFrameworkBase.System.Reflection.MethodInfo;
limited with NetFrameworkBase.System.Reflection.FieldInfo;
limited with NetFrameworkBase.System.Reflection.PropertyInfo;
limited with NetFrameworkBase.System.Reflection.MemberInfo;
with NetFrameworkWin32;
with NetFrameworkAdaRuntime;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Reflection.IReflect is
   
   type Kind is interface and NetFrameworkWin32.IUnknown;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array (Natural range <>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function GetMethod
      (
         this : in out IReflect.Kind;
         name : NetFrameworkBase.BSTR;
         bindingAttr : NetFrameworkBase.System.Reflection.BindingFlags.Kind;
         binder : NetFrameworkBase.System.Reflection.Binder.Kind_Ptr;
         types : NetFrameworkBase.System.Type_x.Kind_Array;
         modifiers : NetFrameworkBase.System.Reflection.ParameterModifier.Kind_Array;
         RetVal : access NetFrameworkBase.System.Reflection.MethodInfo.Kind_Ptr
      ) return HResult is abstract;
      
      function GetMethod
      (
         this : in out IReflect.Kind;
         name : NetFrameworkBase.BSTR;
         bindingAttr : NetFrameworkBase.System.Reflection.BindingFlags.Kind;
         RetVal : access NetFrameworkBase.System.Reflection.MethodInfo.Kind_Ptr
      ) return HResult is abstract;
      
      function GetMethods
      (
         this : in out IReflect.Kind;
         bindingAttr : NetFrameworkBase.System.Reflection.BindingFlags.Kind;
         RetVal : access NetFrameworkBase.System.Reflection.MethodInfo.Kind_Array
      ) return HResult is abstract;
      
      function GetField
      (
         this : in out IReflect.Kind;
         name : NetFrameworkBase.BSTR;
         bindingAttr : NetFrameworkBase.System.Reflection.BindingFlags.Kind;
         RetVal : access NetFrameworkBase.System.Reflection.FieldInfo.Kind_Ptr
      ) return HResult is abstract;
      
      function GetFields
      (
         this : in out IReflect.Kind;
         bindingAttr : NetFrameworkBase.System.Reflection.BindingFlags.Kind;
         RetVal : access NetFrameworkBase.System.Reflection.FieldInfo.Kind_Array
      ) return HResult is abstract;
      
      function GetProperty
      (
         this : in out IReflect.Kind;
         name : NetFrameworkBase.BSTR;
         bindingAttr : NetFrameworkBase.System.Reflection.BindingFlags.Kind;
         RetVal : access NetFrameworkBase.System.Reflection.PropertyInfo.Kind_Ptr
      ) return HResult is abstract;
      
      function GetProperty
      (
         this : in out IReflect.Kind;
         name : NetFrameworkBase.BSTR;
         bindingAttr : NetFrameworkBase.System.Reflection.BindingFlags.Kind;
         binder : NetFrameworkBase.System.Reflection.Binder.Kind_Ptr;
         returnType : NetFrameworkBase.System.Type_x.Kind_Ptr;
         types : NetFrameworkBase.System.Type_x.Kind_Array;
         modifiers : NetFrameworkBase.System.Reflection.ParameterModifier.Kind_Array;
         RetVal : access NetFrameworkBase.System.Reflection.PropertyInfo.Kind_Ptr
      ) return HResult is abstract;
      
      function GetProperties
      (
         this : in out IReflect.Kind;
         bindingAttr : NetFrameworkBase.System.Reflection.BindingFlags.Kind;
         RetVal : access NetFrameworkBase.System.Reflection.PropertyInfo.Kind_Array
      ) return HResult is abstract;
      
      function GetMember
      (
         this : in out IReflect.Kind;
         name : NetFrameworkBase.BSTR;
         bindingAttr : NetFrameworkBase.System.Reflection.BindingFlags.Kind;
         RetVal : access NetFrameworkBase.System.Reflection.MemberInfo.Kind_Array
      ) return HResult is abstract;
      
      function GetMembers
      (
         this : in out IReflect.Kind;
         bindingAttr : NetFrameworkBase.System.Reflection.BindingFlags.Kind;
         RetVal : access NetFrameworkBase.System.Reflection.MemberInfo.Kind_Array
      ) return HResult is abstract;
      
      function InvokeMember
      (
         this : in out IReflect.Kind;
         name : NetFrameworkBase.BSTR;
         invokeAttr : NetFrameworkBase.System.Reflection.BindingFlags.Kind;
         binder : NetFrameworkBase.System.Reflection.Binder.Kind_Ptr;
         target : NetFrameworkBase.System.Object.Kind_Ptr;
         args : NetFrameworkBase.System.Object.Kind_Array;
         modifiers : NetFrameworkBase.System.Reflection.ParameterModifier.Kind_Array;
         culture : NetFrameworkBase.System.Globalization.CultureInfo.Kind_Ptr;
         namedParameters : NetFrameworkBase.BSTR_Array;
         RetVal : access NetFrameworkBase.System.Object.Kind_Ptr
      ) return HResult is abstract;
      
      function get_UnderlyingSystemType
      (
         this : in out IReflect.Kind;
         RetVal : access NetFrameworkBase.System.Type_x.Kind_Ptr
      ) return HResult is abstract;
      
   private
   
      This_AssemblyFile : constant Standard.Wide_String := "C:\Windows\Microsoft.NET\Framework64\v4.0.30319\mscorlib.dll";
      This_AssemblyName : constant Standard.Wide_String := "mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089";
      This_TypeName     : constant Standard.Wide_String := "System.Reflection.IReflect";
   
end;