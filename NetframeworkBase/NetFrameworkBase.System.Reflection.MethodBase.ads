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
with NetFrameworkBase.System.Reflection.MemberInfo;
limited with NetFrameworkBase.System.RuntimeMethodHandle;
limited with NetFrameworkBase.System.RuntimeTypeHandle;
with NetFrameworkBase.System.Object;
limited with NetFrameworkBase.System.Reflection.BindingFlags;
limited with NetFrameworkBase.System.Reflection.Binder;
limited with NetFrameworkBase.System.Globalization.CultureInfo;
limited with NetFrameworkBase.System.Reflection.MethodImplAttributes;
limited with NetFrameworkBase.System.Reflection.CallingConventions;
limited with NetFrameworkBase.System.Type_x;
limited with NetFrameworkBase.System.Reflection.MethodBody;
limited with NetFrameworkBase.System.Reflection.ParameterInfo;
limited with NetFrameworkBase.System.Reflection.MethodAttributes;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Reflection.MethodBase is
   
   type Kind is new NetFrameworkBase.System.Reflection.MemberInfo.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function GetMethodFromHandle
      (
         handle : NetFrameworkBase.System.RuntimeMethodHandle.Kind_Ptr
      )
      return NetFrameworkBase.System.Reflection.MethodBase.Kind_Ptr;
      
      function GetMethodFromHandle
      (
         handle : NetFrameworkBase.System.RuntimeMethodHandle.Kind_Ptr;
         declaringType : NetFrameworkBase.System.RuntimeTypeHandle.Kind_Ptr
      )
      return NetFrameworkBase.System.Reflection.MethodBase.Kind_Ptr;
      
      function GetCurrentMethod
      return NetFrameworkBase.System.Reflection.MethodBase.Kind_Ptr;
      
      function op_Equality
      (
         left : NetFrameworkBase.System.Reflection.MethodBase.Kind_Ptr;
         right : NetFrameworkBase.System.Reflection.MethodBase.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      
      function op_Inequality
      (
         left : NetFrameworkBase.System.Reflection.MethodBase.Kind_Ptr;
         right : NetFrameworkBase.System.Reflection.MethodBase.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      
      function Equals
      (
         this : in out MethodBase.Kind;
         obj : NetFrameworkBase.System.Object.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      
      function GetHashCode
      (
         this : in out MethodBase.Kind
      )
      return NetFrameworkBase.Int32;
      
      function MethodImplementationFlags
      (
         this : in out MethodBase.Kind
      )
      return NetFrameworkBase.System.Reflection.MethodImplAttributes.Kind;
      
      function CallingConvention
      (
         this : in out MethodBase.Kind
      )
      return NetFrameworkBase.System.Reflection.CallingConventions.Kind;
      
      function GetGenericArguments
      (
         this : in out MethodBase.Kind
      )
      return NetFrameworkBase.System.Type_x.Kind_Array;
      
      function IsGenericMethodDefinition
      (
         this : in out MethodBase.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function ContainsGenericParameters
      (
         this : in out MethodBase.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function IsGenericMethod
      (
         this : in out MethodBase.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function IsSecurityCritical
      (
         this : in out MethodBase.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function IsSecuritySafeCritical
      (
         this : in out MethodBase.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function IsSecurityTransparent
      (
         this : in out MethodBase.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function Invoke
      (
         this : in out MethodBase.Kind;
         obj : NetFrameworkBase.System.Object.Kind_Ptr;
         parameters : NetFrameworkBase.System.Object.Kind_Array
      )
      return NetFrameworkBase.System.Object.Kind_Ptr;
      
      function IsPublic
      (
         this : in out MethodBase.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function IsPrivate
      (
         this : in out MethodBase.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function IsFamily
      (
         this : in out MethodBase.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function IsAssembly
      (
         this : in out MethodBase.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function IsFamilyAndAssembly
      (
         this : in out MethodBase.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function IsFamilyOrAssembly
      (
         this : in out MethodBase.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function IsStatic
      (
         this : in out MethodBase.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function IsFinal
      (
         this : in out MethodBase.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function IsVirtual
      (
         this : in out MethodBase.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function IsHideBySig
      (
         this : in out MethodBase.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function IsAbstract
      (
         this : in out MethodBase.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function IsSpecialName
      (
         this : in out MethodBase.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function IsConstructor
      (
         this : in out MethodBase.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function GetMethodBody
      (
         this : in out MethodBase.Kind
      )
      return NetFrameworkBase.System.Reflection.MethodBody.Kind_Ptr;
      
      function GetParameters
      (
         this : in out MethodBase.Kind
      )
      return NetFrameworkBase.System.Reflection.ParameterInfo.Kind_Array;
      
      function GetMethodImplementationFlags
      (
         this : in out MethodBase.Kind
      )
      return NetFrameworkBase.System.Reflection.MethodImplAttributes.Kind;
      
      function MethodHandle
      (
         this : in out MethodBase.Kind
      )
      return NetFrameworkBase.System.RuntimeMethodHandle.Kind_Ptr;
      
      function Attributes
      (
         this : in out MethodBase.Kind
      )
      return NetFrameworkBase.System.Reflection.MethodAttributes.Kind;
      
      function Invoke
      (
         this : in out MethodBase.Kind;
         obj : NetFrameworkBase.System.Object.Kind_Ptr;
         invokeAttr : NetFrameworkBase.System.Reflection.BindingFlags.Kind;
         binder : NetFrameworkBase.System.Reflection.Binder.Kind_Ptr;
         parameters : NetFrameworkBase.System.Object.Kind_Array;
         culture : NetFrameworkBase.System.Globalization.CultureInfo.Kind_Ptr
      )
      return NetFrameworkBase.System.Object.Kind_Ptr;
      
end;