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
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Drawing.CharacterRange is
   
   type Kind is new NetFrameworkBase.System.ValueType.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function First
      (
         this : in out CharacterRange.Kind
      )
      return NetFrameworkBase.Int32;
      
      procedure First
      (
         this : in out CharacterRange.Kind;
         value : NetFrameworkBase.Int32
      );
      
      function Length
      (
         this : in out CharacterRange.Kind
      )
      return NetFrameworkBase.Int32;
      
      procedure Length
      (
         this : in out CharacterRange.Kind;
         value : NetFrameworkBase.Int32
      );
      
      function Equals
      (
         this : in out CharacterRange.Kind;
         obj : NetFrameworkBase.System.Object.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      
      function op_Equality
      (
         cr1 : NetFrameworkBase.System.Drawing.CharacterRange.Kind_Ptr; 
         cr2 : NetFrameworkBase.System.Drawing.CharacterRange.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      function "="(cr1 : NetFrameworkBase.System.Drawing.CharacterRange.Kind_Ptr; cr2 : NetFrameworkBase.System.Drawing.CharacterRange.Kind_Ptr) return NetFrameworkBase.Boolean renames op_Equality;
      
      function op_Inequality
      (
         cr1 : NetFrameworkBase.System.Drawing.CharacterRange.Kind_Ptr; 
         cr2 : NetFrameworkBase.System.Drawing.CharacterRange.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      
      function GetHashCode
      (
         this : in out CharacterRange.Kind
      )
      return NetFrameworkBase.Int32;
      
      function Constructor
      (
         First : NetFrameworkBase.Int32;
         Length : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.Drawing.CharacterRange.Kind_Ptr;
      
end;
