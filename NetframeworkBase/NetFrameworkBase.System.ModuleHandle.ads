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
with NetFrameworkBase.System.ValueType;
with NetFrameworkBase.System.Object;
limited with NetFrameworkBase.System.RuntimeTypeHandle;
limited with NetFrameworkBase.System.RuntimeMethodHandle;
limited with NetFrameworkBase.System.RuntimeFieldHandle;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.ModuleHandle is
   
   type Kind is new NetFrameworkBase.System.ValueType.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function GetHashCode
      (
         this : in out ModuleHandle.Kind
      )
      return NetFrameworkBase.Int32;
      
      function Equals
      (
         this : in out ModuleHandle.Kind;
         obj : NetFrameworkBase.System.Object.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      
      function Equals
      (
         this : in out ModuleHandle.Kind;
         handle : NetFrameworkBase.System.ModuleHandle.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      
      function op_Equality
      (
         left : NetFrameworkBase.System.ModuleHandle.Kind_Ptr; 
         right : NetFrameworkBase.System.ModuleHandle.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      function "="(left : NetFrameworkBase.System.ModuleHandle.Kind_Ptr; right : NetFrameworkBase.System.ModuleHandle.Kind_Ptr) return NetFrameworkBase.Boolean renames op_Equality;
      
      function op_Inequality
      (
         left : NetFrameworkBase.System.ModuleHandle.Kind_Ptr; 
         right : NetFrameworkBase.System.ModuleHandle.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      
      function GetRuntimeTypeHandleFromMetadataToken
      (
         this : in out ModuleHandle.Kind;
         typeToken : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.RuntimeTypeHandle.Kind_Ptr;
      
      function ResolveTypeHandle
      (
         this : in out ModuleHandle.Kind;
         typeToken : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.RuntimeTypeHandle.Kind_Ptr;
      
      function ResolveTypeHandle
      (
         this : in out ModuleHandle.Kind;
         typeToken : NetFrameworkBase.Int32; 
         typeInstantiationContext : NetFrameworkBase.System.RuntimeTypeHandle.Kind_Array_Ptr; 
         methodInstantiationContext : NetFrameworkBase.System.RuntimeTypeHandle.Kind_Array_Ptr
      )
      return NetFrameworkBase.System.RuntimeTypeHandle.Kind_Ptr;
      
      function GetRuntimeMethodHandleFromMetadataToken
      (
         this : in out ModuleHandle.Kind;
         methodToken : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.RuntimeMethodHandle.Kind_Ptr;
      
      function ResolveMethodHandle
      (
         this : in out ModuleHandle.Kind;
         methodToken : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.RuntimeMethodHandle.Kind_Ptr;
      
      function ResolveMethodHandle
      (
         this : in out ModuleHandle.Kind;
         methodToken : NetFrameworkBase.Int32; 
         typeInstantiationContext : NetFrameworkBase.System.RuntimeTypeHandle.Kind_Array_Ptr; 
         methodInstantiationContext : NetFrameworkBase.System.RuntimeTypeHandle.Kind_Array_Ptr
      )
      return NetFrameworkBase.System.RuntimeMethodHandle.Kind_Ptr;
      
      function GetRuntimeFieldHandleFromMetadataToken
      (
         this : in out ModuleHandle.Kind;
         fieldToken : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.RuntimeFieldHandle.Kind_Ptr;
      
      function ResolveFieldHandle
      (
         this : in out ModuleHandle.Kind;
         fieldToken : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.RuntimeFieldHandle.Kind_Ptr;
      
      function ResolveFieldHandle
      (
         this : in out ModuleHandle.Kind;
         fieldToken : NetFrameworkBase.Int32; 
         typeInstantiationContext : NetFrameworkBase.System.RuntimeTypeHandle.Kind_Array_Ptr; 
         methodInstantiationContext : NetFrameworkBase.System.RuntimeTypeHandle.Kind_Array_Ptr
      )
      return NetFrameworkBase.System.RuntimeFieldHandle.Kind_Ptr;
      
      function MDStreamVersion
      (
         this : in out ModuleHandle.Kind
      )
      return NetFrameworkBase.Int32;
      
end;
