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
limited with NetFrameworkBase.System.Type_x;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Reflection.CustomAttributeTypedArgument is
   
   type Kind is new NetFrameworkBase.System.ValueType.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function op_Equality
      (
         left : NetFrameworkBase.System.Reflection.CustomAttributeTypedArgument.Kind_Ptr;
         right : NetFrameworkBase.System.Reflection.CustomAttributeTypedArgument.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      
      function op_Inequality
      (
         left : NetFrameworkBase.System.Reflection.CustomAttributeTypedArgument.Kind_Ptr;
         right : NetFrameworkBase.System.Reflection.CustomAttributeTypedArgument.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      
      function ToString
      (
         this : in out CustomAttributeTypedArgument.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function GetHashCode
      (
         this : in out CustomAttributeTypedArgument.Kind
      )
      return NetFrameworkBase.Int32;
      
      function Equals
      (
         this : in out CustomAttributeTypedArgument.Kind;
         obj : NetFrameworkBase.System.Object.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      
      function ArgumentType
      (
         this : in out CustomAttributeTypedArgument.Kind
      )
      return NetFrameworkBase.System.Type_x.Kind_Ptr;
      
      function Value
      (
         this : in out CustomAttributeTypedArgument.Kind
      )
      return NetFrameworkBase.System.Object.Kind_Ptr;
      
      function Constructor
      (
         argumentType : NetFrameworkBase.System.Type_x.Kind_Ptr;
         value : NetFrameworkBase.System.Object.Kind_Ptr
      )
      return NetFrameworkBase.System.Reflection.CustomAttributeTypedArgument.Kind_Ptr;
      
      function Constructor
      (
         value : NetFrameworkBase.System.Object.Kind_Ptr
      )
      return NetFrameworkBase.System.Reflection.CustomAttributeTypedArgument.Kind_Ptr;
      
end;
