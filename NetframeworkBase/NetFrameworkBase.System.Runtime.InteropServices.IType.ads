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
limited with NetFrameworkBase.System.Guid;
limited with NetFrameworkBase.System.Object;
limited with NetFrameworkBase.System.Type_x;
limited with NetFrameworkBase.System.Reflection.BindingFlags;
limited with NetFrameworkBase.System.Reflection.TypeFilter;
limited with NetFrameworkBase.System.Reflection.MemberTypes;
limited with NetFrameworkBase.System.Reflection.MemberFilter;
limited with NetFrameworkBase.System.Reflection.Binder;
limited with NetFrameworkBase.System.Reflection.ParameterModifier;
limited with NetFrameworkBase.System.Globalization.CultureInfo;
limited with NetFrameworkBase.System.Reflection.CallingConventions;
limited with NetFrameworkBase.System.Reflection.Module;
limited with NetFrameworkBase.System.Reflection.Assembly;
limited with NetFrameworkBase.System.RuntimeTypeHandle;
limited with NetFrameworkBase.System.Reflection.ConstructorInfo;
limited with NetFrameworkBase.System.Reflection.EventInfo;
limited with NetFrameworkBase.System.Reflection.MemberInfo;
limited with NetFrameworkBase.System.Reflection.InterfaceMapping;
limited with NetFrameworkBase.System.Reflection.MethodInfo;
limited with NetFrameworkBase.System.Reflection.FieldInfo;
limited with NetFrameworkBase.System.Reflection.PropertyInfo;
limited with NetFrameworkBase.System.Reflection.TypeAttributes;
with NetFrameworkWin32;
with NetFrameworkAdaRuntime;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Runtime.InteropServices.IType is
   
   type Kind is interface and NetFrameworkWin32.IUnknown;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array (Natural range <>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function GetTypeInfoCount
      (
         this : in out IType.Kind;
         pcTInfo : NetFrameworkBase.UInt32
      ) return HResult is abstract;
      
      function GetTypeInfo
      (
         this : in out IType.Kind;
         iTInfo : NetFrameworkBase.UInt32;
         lcid : NetFrameworkBase.UInt32;
         ppTInfo : NetFrameworkBase.IntPtr
      ) return HResult is abstract;
      
      function GetIDsOfNames
      (
         this : in out IType.Kind;
         riid : NetFrameworkBase.System.Guid.Kind_Ptr;
         rgszNames : NetFrameworkBase.IntPtr;
         cNames : NetFrameworkBase.UInt32;
         lcid : NetFrameworkBase.UInt32;
         rgDispId : NetFrameworkBase.IntPtr
      ) return HResult is abstract;
      
      function Invoke
      (
         this : in out IType.Kind;
         dispIdMember : NetFrameworkBase.UInt32;
         riid : NetFrameworkBase.System.Guid.Kind_Ptr;
         lcid : NetFrameworkBase.UInt32;
         wFlags : NetFrameworkBase.Int16;
         pDispParams : NetFrameworkBase.IntPtr;
         pVarResult : NetFrameworkBase.IntPtr;
         pExcepInfo : NetFrameworkBase.IntPtr;
         puArgErr : NetFrameworkBase.IntPtr
      ) return HResult is abstract;
      
      function ToString
      (
         this : in out IType.Kind;
         RetVal : access NetFrameworkBase.BSTR
      ) return HResult is abstract;
      
      function Equals
      (
         this : in out IType.Kind;
         other : NetFrameworkBase.System.Object.Kind_Ptr;
         RetVal : access NetFrameworkBase.Boolean
      ) return HResult is abstract;
      
      function GetHashCode
      (
         this : in out IType.Kind;
         RetVal : access NetFrameworkBase.Int32
      ) return HResult is abstract;
      
      function GetType
      (
         this : in out IType.Kind;
         RetVal : access NetFrameworkBase.System.Type_x.Kind_Ptr
      ) return HResult is abstract;
      
      function get_MemberType
      (
         this : in out IType.Kind;
         RetVal : access NetFrameworkBase.System.Reflection.MemberTypes.Kind
      ) return HResult is abstract;
      
      function get_Name
      (
         this : in out IType.Kind;
         RetVal : access NetFrameworkBase.BSTR
      ) return HResult is abstract;
      
      function get_DeclaringType
      (
         this : in out IType.Kind;
         RetVal : access NetFrameworkBase.System.Type_x.Kind_Ptr
      ) return HResult is abstract;
      
      function get_ReflectedType
      (
         this : in out IType.Kind;
         RetVal : access NetFrameworkBase.System.Type_x.Kind_Ptr
      ) return HResult is abstract;
      
      function GetCustomAttributes
      (
         this : in out IType.Kind;
         attributeType : NetFrameworkBase.System.Type_x.Kind_Ptr;
         inherit : NetFrameworkBase.Boolean;
         RetVal : access NetFrameworkBase.System.Object.Kind_Array
      ) return HResult is abstract;
      
      function GetCustomAttributes
      (
         this : in out IType.Kind;
         inherit : NetFrameworkBase.Boolean;
         RetVal : access NetFrameworkBase.System.Object.Kind_Array
      ) return HResult is abstract;
      
      function IsDefined
      (
         this : in out IType.Kind;
         attributeType : NetFrameworkBase.System.Type_x.Kind_Ptr;
         inherit : NetFrameworkBase.Boolean;
         RetVal : access NetFrameworkBase.Boolean
      ) return HResult is abstract;
      
      function get_GUID
      (
         this : in out IType.Kind;
         RetVal : access NetFrameworkBase.System.Guid.Kind
      ) return HResult is abstract;
      
      function get_Module
      (
         this : in out IType.Kind;
         RetVal : access NetFrameworkBase.System.Reflection.Module.Kind_Ptr
      ) return HResult is abstract;
      
      function get_Assembly
      (
         this : in out IType.Kind;
         RetVal : access NetFrameworkBase.System.Reflection.Assembly.Kind_Ptr
      ) return HResult is abstract;
      
      function get_TypeHandle
      (
         this : in out IType.Kind;
         RetVal : access NetFrameworkBase.System.RuntimeTypeHandle.Kind
      ) return HResult is abstract;
      
      function get_FullName
      (
         this : in out IType.Kind;
         RetVal : access NetFrameworkBase.BSTR
      ) return HResult is abstract;
      
      function get_Namespace
      (
         this : in out IType.Kind;
         RetVal : access NetFrameworkBase.BSTR
      ) return HResult is abstract;
      
      function get_AssemblyQualifiedName
      (
         this : in out IType.Kind;
         RetVal : access NetFrameworkBase.BSTR
      ) return HResult is abstract;
      
      function GetArrayRank
      (
         this : in out IType.Kind;
         RetVal : access NetFrameworkBase.Int32
      ) return HResult is abstract;
      
      function get_BaseType
      (
         this : in out IType.Kind;
         RetVal : access NetFrameworkBase.System.Type_x.Kind_Ptr
      ) return HResult is abstract;
      
      function GetConstructors
      (
         this : in out IType.Kind;
         bindingAttr : NetFrameworkBase.System.Reflection.BindingFlags.Kind;
         RetVal : access NetFrameworkBase.System.Reflection.ConstructorInfo.Kind_Array
      ) return HResult is abstract;
      
      function GetInterface
      (
         this : in out IType.Kind;
         name : NetFrameworkBase.BSTR;
         ignoreCase : NetFrameworkBase.Boolean;
         RetVal : access NetFrameworkBase.System.Type_x.Kind_Ptr
      ) return HResult is abstract;
      
      function GetInterfaces
      (
         this : in out IType.Kind;
         RetVal : access NetFrameworkBase.System.Type_x.Kind_Array
      ) return HResult is abstract;
      
      function FindInterfaces
      (
         this : in out IType.Kind;
         filter : NetFrameworkBase.System.Reflection.TypeFilter.Kind_Ptr;
         filterCriteria : NetFrameworkBase.System.Object.Kind_Ptr;
         RetVal : access NetFrameworkBase.System.Type_x.Kind_Array
      ) return HResult is abstract;
      
      function GetEvent
      (
         this : in out IType.Kind;
         name : NetFrameworkBase.BSTR;
         bindingAttr : NetFrameworkBase.System.Reflection.BindingFlags.Kind;
         RetVal : access NetFrameworkBase.System.Reflection.EventInfo.Kind_Ptr
      ) return HResult is abstract;
      
      function GetEvents
      (
         this : in out IType.Kind;
         RetVal : access NetFrameworkBase.System.Reflection.EventInfo.Kind_Array
      ) return HResult is abstract;
      
      function GetEvents
      (
         this : in out IType.Kind;
         bindingAttr : NetFrameworkBase.System.Reflection.BindingFlags.Kind;
         RetVal : access NetFrameworkBase.System.Reflection.EventInfo.Kind_Array
      ) return HResult is abstract;
      
      function GetNestedTypes
      (
         this : in out IType.Kind;
         bindingAttr : NetFrameworkBase.System.Reflection.BindingFlags.Kind;
         RetVal : access NetFrameworkBase.System.Type_x.Kind_Array
      ) return HResult is abstract;
      
      function GetNestedType
      (
         this : in out IType.Kind;
         name : NetFrameworkBase.BSTR;
         bindingAttr : NetFrameworkBase.System.Reflection.BindingFlags.Kind;
         RetVal : access NetFrameworkBase.System.Type_x.Kind_Ptr
      ) return HResult is abstract;
      
      function GetMember
      (
         this : in out IType.Kind;
         name : NetFrameworkBase.BSTR;
         type_x : NetFrameworkBase.System.Reflection.MemberTypes.Kind;
         bindingAttr : NetFrameworkBase.System.Reflection.BindingFlags.Kind;
         RetVal : access NetFrameworkBase.System.Reflection.MemberInfo.Kind_Array
      ) return HResult is abstract;
      
      function GetDefaultMembers
      (
         this : in out IType.Kind;
         RetVal : access NetFrameworkBase.System.Reflection.MemberInfo.Kind_Array
      ) return HResult is abstract;
      
      function FindMembers
      (
         this : in out IType.Kind;
         memberType : NetFrameworkBase.System.Reflection.MemberTypes.Kind;
         bindingAttr : NetFrameworkBase.System.Reflection.BindingFlags.Kind;
         filter : NetFrameworkBase.System.Reflection.MemberFilter.Kind_Ptr;
         filterCriteria : NetFrameworkBase.System.Object.Kind_Ptr;
         RetVal : access NetFrameworkBase.System.Reflection.MemberInfo.Kind_Array
      ) return HResult is abstract;
      
      function GetElementType
      (
         this : in out IType.Kind;
         RetVal : access NetFrameworkBase.System.Type_x.Kind_Ptr
      ) return HResult is abstract;
      
      function IsSubclassOf
      (
         this : in out IType.Kind;
         c : NetFrameworkBase.System.Type_x.Kind_Ptr;
         RetVal : access NetFrameworkBase.Boolean
      ) return HResult is abstract;
      
      function IsInstanceOfType
      (
         this : in out IType.Kind;
         o : NetFrameworkBase.System.Object.Kind_Ptr;
         RetVal : access NetFrameworkBase.Boolean
      ) return HResult is abstract;
      
      function IsAssignableFrom
      (
         this : in out IType.Kind;
         c : NetFrameworkBase.System.Type_x.Kind_Ptr;
         RetVal : access NetFrameworkBase.Boolean
      ) return HResult is abstract;
      
      function GetInterfaceMap
      (
         this : in out IType.Kind;
         interfaceType : NetFrameworkBase.System.Type_x.Kind_Ptr;
         RetVal : access NetFrameworkBase.System.Reflection.InterfaceMapping.Kind
      ) return HResult is abstract;
      
      function GetMethod
      (
         this : in out IType.Kind;
         name : NetFrameworkBase.BSTR;
         bindingAttr : NetFrameworkBase.System.Reflection.BindingFlags.Kind;
         binder : NetFrameworkBase.System.Reflection.Binder.Kind_Ptr;
         types : NetFrameworkBase.System.Type_x.Kind_Array;
         modifiers : NetFrameworkBase.System.Reflection.ParameterModifier.Kind_Array;
         RetVal : access NetFrameworkBase.System.Reflection.MethodInfo.Kind_Ptr
      ) return HResult is abstract;
      
      function GetMethod
      (
         this : in out IType.Kind;
         name : NetFrameworkBase.BSTR;
         bindingAttr : NetFrameworkBase.System.Reflection.BindingFlags.Kind;
         RetVal : access NetFrameworkBase.System.Reflection.MethodInfo.Kind_Ptr
      ) return HResult is abstract;
      
      function GetMethods
      (
         this : in out IType.Kind;
         bindingAttr : NetFrameworkBase.System.Reflection.BindingFlags.Kind;
         RetVal : access NetFrameworkBase.System.Reflection.MethodInfo.Kind_Array
      ) return HResult is abstract;
      
      function GetField
      (
         this : in out IType.Kind;
         name : NetFrameworkBase.BSTR;
         bindingAttr : NetFrameworkBase.System.Reflection.BindingFlags.Kind;
         RetVal : access NetFrameworkBase.System.Reflection.FieldInfo.Kind_Ptr
      ) return HResult is abstract;
      
      function GetFields
      (
         this : in out IType.Kind;
         bindingAttr : NetFrameworkBase.System.Reflection.BindingFlags.Kind;
         RetVal : access NetFrameworkBase.System.Reflection.FieldInfo.Kind_Array
      ) return HResult is abstract;
      
      function GetProperty
      (
         this : in out IType.Kind;
         name : NetFrameworkBase.BSTR;
         bindingAttr : NetFrameworkBase.System.Reflection.BindingFlags.Kind;
         RetVal : access NetFrameworkBase.System.Reflection.PropertyInfo.Kind_Ptr
      ) return HResult is abstract;
      
      function GetProperty
      (
         this : in out IType.Kind;
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
         this : in out IType.Kind;
         bindingAttr : NetFrameworkBase.System.Reflection.BindingFlags.Kind;
         RetVal : access NetFrameworkBase.System.Reflection.PropertyInfo.Kind_Array
      ) return HResult is abstract;
      
      function GetMember
      (
         this : in out IType.Kind;
         name : NetFrameworkBase.BSTR;
         bindingAttr : NetFrameworkBase.System.Reflection.BindingFlags.Kind;
         RetVal : access NetFrameworkBase.System.Reflection.MemberInfo.Kind_Array
      ) return HResult is abstract;
      
      function GetMembers
      (
         this : in out IType.Kind;
         bindingAttr : NetFrameworkBase.System.Reflection.BindingFlags.Kind;
         RetVal : access NetFrameworkBase.System.Reflection.MemberInfo.Kind_Array
      ) return HResult is abstract;
      
      function InvokeMember
      (
         this : in out IType.Kind;
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
         this : in out IType.Kind;
         RetVal : access NetFrameworkBase.System.Type_x.Kind_Ptr
      ) return HResult is abstract;
      
      function InvokeMember
      (
         this : in out IType.Kind;
         name : NetFrameworkBase.BSTR;
         invokeAttr : NetFrameworkBase.System.Reflection.BindingFlags.Kind;
         binder : NetFrameworkBase.System.Reflection.Binder.Kind_Ptr;
         target : NetFrameworkBase.System.Object.Kind_Ptr;
         args : NetFrameworkBase.System.Object.Kind_Array;
         culture : NetFrameworkBase.System.Globalization.CultureInfo.Kind_Ptr;
         RetVal : access NetFrameworkBase.System.Object.Kind_Ptr
      ) return HResult is abstract;
      
      function InvokeMember
      (
         this : in out IType.Kind;
         name : NetFrameworkBase.BSTR;
         invokeAttr : NetFrameworkBase.System.Reflection.BindingFlags.Kind;
         binder : NetFrameworkBase.System.Reflection.Binder.Kind_Ptr;
         target : NetFrameworkBase.System.Object.Kind_Ptr;
         args : NetFrameworkBase.System.Object.Kind_Array;
         RetVal : access NetFrameworkBase.System.Object.Kind_Ptr
      ) return HResult is abstract;
      
      function GetConstructor
      (
         this : in out IType.Kind;
         bindingAttr : NetFrameworkBase.System.Reflection.BindingFlags.Kind;
         binder : NetFrameworkBase.System.Reflection.Binder.Kind_Ptr;
         callConvention : NetFrameworkBase.System.Reflection.CallingConventions.Kind;
         types : NetFrameworkBase.System.Type_x.Kind_Array;
         modifiers : NetFrameworkBase.System.Reflection.ParameterModifier.Kind_Array;
         RetVal : access NetFrameworkBase.System.Reflection.ConstructorInfo.Kind_Ptr
      ) return HResult is abstract;
      
      function GetConstructor
      (
         this : in out IType.Kind;
         bindingAttr : NetFrameworkBase.System.Reflection.BindingFlags.Kind;
         binder : NetFrameworkBase.System.Reflection.Binder.Kind_Ptr;
         types : NetFrameworkBase.System.Type_x.Kind_Array;
         modifiers : NetFrameworkBase.System.Reflection.ParameterModifier.Kind_Array;
         RetVal : access NetFrameworkBase.System.Reflection.ConstructorInfo.Kind_Ptr
      ) return HResult is abstract;
      
      function GetConstructor
      (
         this : in out IType.Kind;
         types : NetFrameworkBase.System.Type_x.Kind_Array;
         RetVal : access NetFrameworkBase.System.Reflection.ConstructorInfo.Kind_Ptr
      ) return HResult is abstract;
      
      function GetConstructors
      (
         this : in out IType.Kind;
         RetVal : access NetFrameworkBase.System.Reflection.ConstructorInfo.Kind_Array
      ) return HResult is abstract;
      
      function get_TypeInitializer
      (
         this : in out IType.Kind;
         RetVal : access NetFrameworkBase.System.Reflection.ConstructorInfo.Kind_Ptr
      ) return HResult is abstract;
      
      function GetMethod
      (
         this : in out IType.Kind;
         name : NetFrameworkBase.BSTR;
         bindingAttr : NetFrameworkBase.System.Reflection.BindingFlags.Kind;
         binder : NetFrameworkBase.System.Reflection.Binder.Kind_Ptr;
         callConvention : NetFrameworkBase.System.Reflection.CallingConventions.Kind;
         types : NetFrameworkBase.System.Type_x.Kind_Array;
         modifiers : NetFrameworkBase.System.Reflection.ParameterModifier.Kind_Array;
         RetVal : access NetFrameworkBase.System.Reflection.MethodInfo.Kind_Ptr
      ) return HResult is abstract;
      
      function GetMethod
      (
         this : in out IType.Kind;
         name : NetFrameworkBase.BSTR;
         types : NetFrameworkBase.System.Type_x.Kind_Array;
         modifiers : NetFrameworkBase.System.Reflection.ParameterModifier.Kind_Array;
         RetVal : access NetFrameworkBase.System.Reflection.MethodInfo.Kind_Ptr
      ) return HResult is abstract;
      
      function GetMethod
      (
         this : in out IType.Kind;
         name : NetFrameworkBase.BSTR;
         types : NetFrameworkBase.System.Type_x.Kind_Array;
         RetVal : access NetFrameworkBase.System.Reflection.MethodInfo.Kind_Ptr
      ) return HResult is abstract;
      
      function GetMethod
      (
         this : in out IType.Kind;
         name : NetFrameworkBase.BSTR;
         RetVal : access NetFrameworkBase.System.Reflection.MethodInfo.Kind_Ptr
      ) return HResult is abstract;
      
      function GetMethods
      (
         this : in out IType.Kind;
         RetVal : access NetFrameworkBase.System.Reflection.MethodInfo.Kind_Array
      ) return HResult is abstract;
      
      function GetField
      (
         this : in out IType.Kind;
         name : NetFrameworkBase.BSTR;
         RetVal : access NetFrameworkBase.System.Reflection.FieldInfo.Kind_Ptr
      ) return HResult is abstract;
      
      function GetFields
      (
         this : in out IType.Kind;
         RetVal : access NetFrameworkBase.System.Reflection.FieldInfo.Kind_Array
      ) return HResult is abstract;
      
      function GetInterface
      (
         this : in out IType.Kind;
         name : NetFrameworkBase.BSTR;
         RetVal : access NetFrameworkBase.System.Type_x.Kind_Ptr
      ) return HResult is abstract;
      
      function GetEvent
      (
         this : in out IType.Kind;
         name : NetFrameworkBase.BSTR;
         RetVal : access NetFrameworkBase.System.Reflection.EventInfo.Kind_Ptr
      ) return HResult is abstract;
      
      function GetProperty
      (
         this : in out IType.Kind;
         name : NetFrameworkBase.BSTR;
         returnType : NetFrameworkBase.System.Type_x.Kind_Ptr;
         types : NetFrameworkBase.System.Type_x.Kind_Array;
         modifiers : NetFrameworkBase.System.Reflection.ParameterModifier.Kind_Array;
         RetVal : access NetFrameworkBase.System.Reflection.PropertyInfo.Kind_Ptr
      ) return HResult is abstract;
      
      function GetProperty
      (
         this : in out IType.Kind;
         name : NetFrameworkBase.BSTR;
         returnType : NetFrameworkBase.System.Type_x.Kind_Ptr;
         types : NetFrameworkBase.System.Type_x.Kind_Array;
         RetVal : access NetFrameworkBase.System.Reflection.PropertyInfo.Kind_Ptr
      ) return HResult is abstract;
      
      function GetProperty
      (
         this : in out IType.Kind;
         name : NetFrameworkBase.BSTR;
         types : NetFrameworkBase.System.Type_x.Kind_Array;
         RetVal : access NetFrameworkBase.System.Reflection.PropertyInfo.Kind_Ptr
      ) return HResult is abstract;
      
      function GetProperty
      (
         this : in out IType.Kind;
         name : NetFrameworkBase.BSTR;
         returnType : NetFrameworkBase.System.Type_x.Kind_Ptr;
         RetVal : access NetFrameworkBase.System.Reflection.PropertyInfo.Kind_Ptr
      ) return HResult is abstract;
      
      function GetProperty
      (
         this : in out IType.Kind;
         name : NetFrameworkBase.BSTR;
         RetVal : access NetFrameworkBase.System.Reflection.PropertyInfo.Kind_Ptr
      ) return HResult is abstract;
      
      function GetProperties
      (
         this : in out IType.Kind;
         RetVal : access NetFrameworkBase.System.Reflection.PropertyInfo.Kind_Array
      ) return HResult is abstract;
      
      function GetNestedTypes
      (
         this : in out IType.Kind;
         RetVal : access NetFrameworkBase.System.Type_x.Kind_Array
      ) return HResult is abstract;
      
      function GetNestedType
      (
         this : in out IType.Kind;
         name : NetFrameworkBase.BSTR;
         RetVal : access NetFrameworkBase.System.Type_x.Kind_Ptr
      ) return HResult is abstract;
      
      function GetMember
      (
         this : in out IType.Kind;
         name : NetFrameworkBase.BSTR;
         RetVal : access NetFrameworkBase.System.Reflection.MemberInfo.Kind_Array
      ) return HResult is abstract;
      
      function GetMembers
      (
         this : in out IType.Kind;
         RetVal : access NetFrameworkBase.System.Reflection.MemberInfo.Kind_Array
      ) return HResult is abstract;
      
      function get_Attributes
      (
         this : in out IType.Kind;
         RetVal : access NetFrameworkBase.System.Reflection.TypeAttributes.Kind
      ) return HResult is abstract;
      
      function get_IsNotPublic
      (
         this : in out IType.Kind;
         RetVal : access NetFrameworkBase.Boolean
      ) return HResult is abstract;
      
      function get_IsPublic
      (
         this : in out IType.Kind;
         RetVal : access NetFrameworkBase.Boolean
      ) return HResult is abstract;
      
      function get_IsNestedPublic
      (
         this : in out IType.Kind;
         RetVal : access NetFrameworkBase.Boolean
      ) return HResult is abstract;
      
      function get_IsNestedPrivate
      (
         this : in out IType.Kind;
         RetVal : access NetFrameworkBase.Boolean
      ) return HResult is abstract;
      
      function get_IsNestedFamily
      (
         this : in out IType.Kind;
         RetVal : access NetFrameworkBase.Boolean
      ) return HResult is abstract;
      
      function get_IsNestedAssembly
      (
         this : in out IType.Kind;
         RetVal : access NetFrameworkBase.Boolean
      ) return HResult is abstract;
      
      function get_IsNestedFamANDAssem
      (
         this : in out IType.Kind;
         RetVal : access NetFrameworkBase.Boolean
      ) return HResult is abstract;
      
      function get_IsNestedFamORAssem
      (
         this : in out IType.Kind;
         RetVal : access NetFrameworkBase.Boolean
      ) return HResult is abstract;
      
      function get_IsAutoLayout
      (
         this : in out IType.Kind;
         RetVal : access NetFrameworkBase.Boolean
      ) return HResult is abstract;
      
      function get_IsLayoutSequential
      (
         this : in out IType.Kind;
         RetVal : access NetFrameworkBase.Boolean
      ) return HResult is abstract;
      
      function get_IsExplicitLayout
      (
         this : in out IType.Kind;
         RetVal : access NetFrameworkBase.Boolean
      ) return HResult is abstract;
      
      function get_IsClass
      (
         this : in out IType.Kind;
         RetVal : access NetFrameworkBase.Boolean
      ) return HResult is abstract;
      
      function get_IsInterface
      (
         this : in out IType.Kind;
         RetVal : access NetFrameworkBase.Boolean
      ) return HResult is abstract;
      
      function get_IsValueType
      (
         this : in out IType.Kind;
         RetVal : access NetFrameworkBase.Boolean
      ) return HResult is abstract;
      
      function get_IsAbstract
      (
         this : in out IType.Kind;
         RetVal : access NetFrameworkBase.Boolean
      ) return HResult is abstract;
      
      function get_IsSealed
      (
         this : in out IType.Kind;
         RetVal : access NetFrameworkBase.Boolean
      ) return HResult is abstract;
      
      function get_IsEnum
      (
         this : in out IType.Kind;
         RetVal : access NetFrameworkBase.Boolean
      ) return HResult is abstract;
      
      function get_IsSpecialName
      (
         this : in out IType.Kind;
         RetVal : access NetFrameworkBase.Boolean
      ) return HResult is abstract;
      
      function get_IsImport
      (
         this : in out IType.Kind;
         RetVal : access NetFrameworkBase.Boolean
      ) return HResult is abstract;
      
      function get_IsSerializable
      (
         this : in out IType.Kind;
         RetVal : access NetFrameworkBase.Boolean
      ) return HResult is abstract;
      
      function get_IsAnsiClass
      (
         this : in out IType.Kind;
         RetVal : access NetFrameworkBase.Boolean
      ) return HResult is abstract;
      
      function get_IsUnicodeClass
      (
         this : in out IType.Kind;
         RetVal : access NetFrameworkBase.Boolean
      ) return HResult is abstract;
      
      function get_IsAutoClass
      (
         this : in out IType.Kind;
         RetVal : access NetFrameworkBase.Boolean
      ) return HResult is abstract;
      
      function get_IsArray
      (
         this : in out IType.Kind;
         RetVal : access NetFrameworkBase.Boolean
      ) return HResult is abstract;
      
      function get_IsByRef
      (
         this : in out IType.Kind;
         RetVal : access NetFrameworkBase.Boolean
      ) return HResult is abstract;
      
      function get_IsPointer
      (
         this : in out IType.Kind;
         RetVal : access NetFrameworkBase.Boolean
      ) return HResult is abstract;
      
      function get_IsPrimitive
      (
         this : in out IType.Kind;
         RetVal : access NetFrameworkBase.Boolean
      ) return HResult is abstract;
      
      function get_IsCOMObject
      (
         this : in out IType.Kind;
         RetVal : access NetFrameworkBase.Boolean
      ) return HResult is abstract;
      
      function get_HasElementType
      (
         this : in out IType.Kind;
         RetVal : access NetFrameworkBase.Boolean
      ) return HResult is abstract;
      
      function get_IsContextful
      (
         this : in out IType.Kind;
         RetVal : access NetFrameworkBase.Boolean
      ) return HResult is abstract;
      
      function get_IsMarshalByRef
      (
         this : in out IType.Kind;
         RetVal : access NetFrameworkBase.Boolean
      ) return HResult is abstract;
      
      function Equals
      (
         this : in out IType.Kind;
         o : NetFrameworkBase.System.Type_x.Kind_Ptr;
         RetVal : access NetFrameworkBase.Boolean
      ) return HResult is abstract;
      
   private
   
      This_AssemblyFile : constant Standard.Wide_String := "C:\Windows\Microsoft.NET\Framework64\v4.0.30319\mscorlib.dll";
      This_AssemblyName : constant Standard.Wide_String := "mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089";
      This_TypeName     : constant Standard.Wide_String := "System.Runtime.InteropServices._Type";
   
end;
