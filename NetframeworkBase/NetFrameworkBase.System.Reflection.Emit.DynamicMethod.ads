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
with NetFrameworkBase.System.Reflection.MethodInfo;
limited with NetFrameworkBase.System.Type_x;
with NetFrameworkBase.System.Object;
limited with NetFrameworkBase.System.Reflection.BindingFlags;
limited with NetFrameworkBase.System.Reflection.Binder;
limited with NetFrameworkBase.System.Globalization.CultureInfo;
limited with NetFrameworkBase.System.Reflection.ParameterAttributes;
limited with NetFrameworkBase.System.Reflection.Module;
limited with NetFrameworkBase.System.Reflection.MethodAttributes;
limited with NetFrameworkBase.System.Reflection.CallingConventions;
limited with NetFrameworkBase.System.Delegate;
limited with NetFrameworkBase.System.RuntimeMethodHandle;
limited with NetFrameworkBase.System.Reflection.ParameterInfo;
limited with NetFrameworkBase.System.Reflection.MethodImplAttributes;
limited with NetFrameworkBase.System.Reflection.ICustomAttributeProvider;
limited with NetFrameworkBase.System.Reflection.Emit.ParameterBuilder;
limited with NetFrameworkBase.System.Reflection.Emit.DynamicILInfo;
limited with NetFrameworkBase.System.Reflection.Emit.ILGenerator;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Reflection.Emit.DynamicMethod is
   
   type Kind is new NetFrameworkBase.System.Reflection.MethodInfo.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function CreateDelegate
      (
         this : in out DynamicMethod.Kind;
         delegateType : NetFrameworkBase.System.Type_x.Kind_Ptr
      )
      return NetFrameworkBase.System.Delegate.Kind_Ptr;
      
      function CreateDelegate
      (
         this : in out DynamicMethod.Kind;
         delegateType : NetFrameworkBase.System.Type_x.Kind_Ptr; 
         target : NetFrameworkBase.System.Object.Kind_Ptr
      )
      return NetFrameworkBase.System.Delegate.Kind_Ptr;
      
      function ToString
      (
         this : in out DynamicMethod.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function Name
      (
         this : in out DynamicMethod.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function DeclaringType
      (
         this : in out DynamicMethod.Kind
      )
      return NetFrameworkBase.System.Type_x.Kind_Ptr;
      
      function ReflectedType
      (
         this : in out DynamicMethod.Kind
      )
      return NetFrameworkBase.System.Type_x.Kind_Ptr;
      
      function Module
      (
         this : in out DynamicMethod.Kind
      )
      return NetFrameworkBase.System.Reflection.Module.Kind_Ptr;
      
      function MethodHandle
      (
         this : in out DynamicMethod.Kind
      )
      return NetFrameworkBase.System.RuntimeMethodHandle.Kind_Ptr;
      
      function Attributes
      (
         this : in out DynamicMethod.Kind
      )
      return NetFrameworkBase.System.Reflection.MethodAttributes.Kind;
      
      function CallingConvention
      (
         this : in out DynamicMethod.Kind
      )
      return NetFrameworkBase.System.Reflection.CallingConventions.Kind;
      
      function GetBaseDefinition
      (
         this : in out DynamicMethod.Kind
      )
      return NetFrameworkBase.System.Reflection.MethodInfo.Kind_Ptr;
      
      function GetParameters
      (
         this : in out DynamicMethod.Kind
      )
      return NetFrameworkBase.System.Reflection.ParameterInfo.Kind_Array;
      
      function GetMethodImplementationFlags
      (
         this : in out DynamicMethod.Kind
      )
      return NetFrameworkBase.System.Reflection.MethodImplAttributes.Kind;
      
      function IsSecurityCritical
      (
         this : in out DynamicMethod.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function IsSecuritySafeCritical
      (
         this : in out DynamicMethod.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function IsSecurityTransparent
      (
         this : in out DynamicMethod.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function Invoke
      (
         this : in out DynamicMethod.Kind;
         obj : NetFrameworkBase.System.Object.Kind_Ptr; 
         invokeAttr : NetFrameworkBase.System.Reflection.BindingFlags.Kind; 
         binder : NetFrameworkBase.System.Reflection.Binder.Kind_Ptr; 
         parameters : NetFrameworkBase.System.Object.Kind_Array; 
         culture : NetFrameworkBase.System.Globalization.CultureInfo.Kind_Ptr
      )
      return NetFrameworkBase.System.Object.Kind_Ptr;
      
      function GetCustomAttributes
      (
         this : in out DynamicMethod.Kind;
         attributeType : NetFrameworkBase.System.Type_x.Kind_Ptr; 
         inherit : NetFrameworkBase.Boolean
      )
      return NetFrameworkBase.System.Object.Kind_Array;
      
      function GetCustomAttributes
      (
         this : in out DynamicMethod.Kind;
         inherit : NetFrameworkBase.Boolean
      )
      return NetFrameworkBase.System.Object.Kind_Array;
      
      function IsDefined
      (
         this : in out DynamicMethod.Kind;
         attributeType : NetFrameworkBase.System.Type_x.Kind_Ptr; 
         inherit : NetFrameworkBase.Boolean
      )
      return NetFrameworkBase.Boolean;
      
      function ReturnType
      (
         this : in out DynamicMethod.Kind
      )
      return NetFrameworkBase.System.Type_x.Kind_Ptr;
      
      function ReturnParameter
      (
         this : in out DynamicMethod.Kind
      )
      return NetFrameworkBase.System.Reflection.ParameterInfo.Kind_Ptr;
      
      function ReturnTypeCustomAttributes
      (
         this : in out DynamicMethod.Kind
      )
      return NetFrameworkBase.System.Reflection.ICustomAttributeProvider.Kind_Ptr;
      
      function DefineParameter
      (
         this : in out DynamicMethod.Kind;
         position : NetFrameworkBase.Int32; 
         attributes : NetFrameworkBase.System.Reflection.ParameterAttributes.Kind; 
         parameterName : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Reflection.Emit.ParameterBuilder.Kind_Ptr;
      
      function GetDynamicILInfo
      (
         this : in out DynamicMethod.Kind
      )
      return NetFrameworkBase.System.Reflection.Emit.DynamicILInfo.Kind_Ptr;
      
      function GetILGenerator
      (
         this : in out DynamicMethod.Kind
      )
      return NetFrameworkBase.System.Reflection.Emit.ILGenerator.Kind_Ptr;
      
      function GetILGenerator
      (
         this : in out DynamicMethod.Kind;
         streamSize : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.Reflection.Emit.ILGenerator.Kind_Ptr;
      
      function InitLocals
      (
         this : in out DynamicMethod.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure InitLocals
      (
         this : in out DynamicMethod.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      function Constructor
      (
         name : NetFrameworkBase.BSTR;
         returnType : NetFrameworkBase.System.Type_x.Kind_Ptr;
         parameterTypes : NetFrameworkBase.System.Type_x.Kind_Array
      )
      return NetFrameworkBase.System.Reflection.Emit.DynamicMethod.Kind_Ptr;
      
      function Constructor
      (
         name : NetFrameworkBase.BSTR;
         returnType : NetFrameworkBase.System.Type_x.Kind_Ptr;
         parameterTypes : NetFrameworkBase.System.Type_x.Kind_Array;
         restrictedSkipVisibility : NetFrameworkBase.Boolean
      )
      return NetFrameworkBase.System.Reflection.Emit.DynamicMethod.Kind_Ptr;
      
      function Constructor
      (
         name : NetFrameworkBase.BSTR;
         returnType : NetFrameworkBase.System.Type_x.Kind_Ptr;
         parameterTypes : NetFrameworkBase.System.Type_x.Kind_Array;
         m : NetFrameworkBase.System.Reflection.Module.Kind_Ptr
      )
      return NetFrameworkBase.System.Reflection.Emit.DynamicMethod.Kind_Ptr;
      
      function Constructor
      (
         name : NetFrameworkBase.BSTR;
         returnType : NetFrameworkBase.System.Type_x.Kind_Ptr;
         parameterTypes : NetFrameworkBase.System.Type_x.Kind_Array;
         m : NetFrameworkBase.System.Reflection.Module.Kind_Ptr;
         skipVisibility : NetFrameworkBase.Boolean
      )
      return NetFrameworkBase.System.Reflection.Emit.DynamicMethod.Kind_Ptr;
      
      function Constructor
      (
         name : NetFrameworkBase.BSTR;
         attributes : NetFrameworkBase.System.Reflection.MethodAttributes.Kind;
         callingConvention : NetFrameworkBase.System.Reflection.CallingConventions.Kind;
         returnType : NetFrameworkBase.System.Type_x.Kind_Ptr;
         parameterTypes : NetFrameworkBase.System.Type_x.Kind_Array;
         m : NetFrameworkBase.System.Reflection.Module.Kind_Ptr;
         skipVisibility : NetFrameworkBase.Boolean
      )
      return NetFrameworkBase.System.Reflection.Emit.DynamicMethod.Kind_Ptr;
      
      function Constructor
      (
         name : NetFrameworkBase.BSTR;
         returnType : NetFrameworkBase.System.Type_x.Kind_Ptr;
         parameterTypes : NetFrameworkBase.System.Type_x.Kind_Array;
         owner : NetFrameworkBase.System.Type_x.Kind_Ptr
      )
      return NetFrameworkBase.System.Reflection.Emit.DynamicMethod.Kind_Ptr;
      
      function Constructor
      (
         name : NetFrameworkBase.BSTR;
         returnType : NetFrameworkBase.System.Type_x.Kind_Ptr;
         parameterTypes : NetFrameworkBase.System.Type_x.Kind_Array;
         owner : NetFrameworkBase.System.Type_x.Kind_Ptr;
         skipVisibility : NetFrameworkBase.Boolean
      )
      return NetFrameworkBase.System.Reflection.Emit.DynamicMethod.Kind_Ptr;
      
      function Constructor
      (
         name : NetFrameworkBase.BSTR;
         attributes : NetFrameworkBase.System.Reflection.MethodAttributes.Kind;
         callingConvention : NetFrameworkBase.System.Reflection.CallingConventions.Kind;
         returnType : NetFrameworkBase.System.Type_x.Kind_Ptr;
         parameterTypes : NetFrameworkBase.System.Type_x.Kind_Array;
         owner : NetFrameworkBase.System.Type_x.Kind_Ptr;
         skipVisibility : NetFrameworkBase.Boolean
      )
      return NetFrameworkBase.System.Reflection.Emit.DynamicMethod.Kind_Ptr;
      
end;
