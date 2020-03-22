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
with NetFrameworkBase.System.Windows.Forms.DataGridViewCell;
limited with NetFrameworkBase.System.Windows.Forms.FlatStyle;
limited with NetFrameworkBase.System.Type_x;
with NetFrameworkBase.System.Object;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Windows.Forms.DataGridViewButtonCell is
   
   type Kind is new NetFrameworkBase.System.Windows.Forms.DataGridViewCell.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function EditType
      (
         this : in out DataGridViewButtonCell.Kind
      )
      return NetFrameworkBase.System.Type_x.Kind_Ptr;
      
      function FlatStyle
      (
         this : in out DataGridViewButtonCell.Kind
      )
      return NetFrameworkBase.System.Windows.Forms.FlatStyle.Kind;
      
      procedure FlatStyle
      (
         this : in out DataGridViewButtonCell.Kind;
         value : NetFrameworkBase.System.Windows.Forms.FlatStyle.Kind
      );
      
      function FormattedValueType
      (
         this : in out DataGridViewButtonCell.Kind
      )
      return NetFrameworkBase.System.Type_x.Kind_Ptr;
      
      function UseColumnTextForButtonValue
      (
         this : in out DataGridViewButtonCell.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure UseColumnTextForButtonValue
      (
         this : in out DataGridViewButtonCell.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      function ValueType
      (
         this : in out DataGridViewButtonCell.Kind
      )
      return NetFrameworkBase.System.Type_x.Kind_Ptr;
      
      function Clone
      (
         this : in out DataGridViewButtonCell.Kind
      )
      return NetFrameworkBase.System.Object.Kind_Ptr;
      
      function ToString
      (
         this : in out DataGridViewButtonCell.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function Constructor return NetFrameworkBase.System.Windows.Forms.DataGridViewButtonCell.Kind_Ptr;
      
end;