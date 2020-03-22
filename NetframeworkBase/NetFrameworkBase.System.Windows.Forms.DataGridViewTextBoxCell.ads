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
with NetFrameworkBase.System.Object;
limited with NetFrameworkBase.System.Windows.Forms.DataGridViewCellStyle;
limited with NetFrameworkBase.System.Windows.Forms.KeyEventArgs;
limited with NetFrameworkBase.System.Drawing.Rectangle;
limited with NetFrameworkBase.System.Type_x;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Windows.Forms.DataGridViewTextBoxCell is
   
   type Kind is new NetFrameworkBase.System.Windows.Forms.DataGridViewCell.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function FormattedValueType
      (
         this : in out DataGridViewTextBoxCell.Kind
      )
      return NetFrameworkBase.System.Type_x.Kind_Ptr;
      
      function MaxInputLength
      (
         this : in out DataGridViewTextBoxCell.Kind
      )
      return NetFrameworkBase.Int32;
      
      function ValueType
      (
         this : in out DataGridViewTextBoxCell.Kind
      )
      return NetFrameworkBase.System.Type_x.Kind_Ptr;
      
      function Clone
      (
         this : in out DataGridViewTextBoxCell.Kind
      )
      return NetFrameworkBase.System.Object.Kind_Ptr;
      
      procedure DetachEditingControl
      (
         this : in out DataGridViewTextBoxCell.Kind
      );
      
      procedure InitializeEditingControl
      (
         this : in out DataGridViewTextBoxCell.Kind;
         rowIndex : NetFrameworkBase.Int32; 
         initialFormattedValue : NetFrameworkBase.System.Object.Kind_Ptr; 
         dataGridViewCellStyle : NetFrameworkBase.System.Windows.Forms.DataGridViewCellStyle.Kind_Ptr
      );
      
      function KeyEntersEditMode
      (
         this : in out DataGridViewTextBoxCell.Kind;
         e : NetFrameworkBase.System.Windows.Forms.KeyEventArgs.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      
      procedure PositionEditingControl
      (
         this : in out DataGridViewTextBoxCell.Kind;
         setLocation : NetFrameworkBase.Boolean; 
         setSize : NetFrameworkBase.Boolean; 
         cellBounds : NetFrameworkBase.System.Drawing.Rectangle.Kind_Ptr; 
         cellClip : NetFrameworkBase.System.Drawing.Rectangle.Kind_Ptr; 
         cellStyle : NetFrameworkBase.System.Windows.Forms.DataGridViewCellStyle.Kind_Ptr; 
         singleVerticalBorderAdded : NetFrameworkBase.Boolean; 
         singleHorizontalBorderAdded : NetFrameworkBase.Boolean; 
         isFirstDisplayedColumn : NetFrameworkBase.Boolean; 
         isFirstDisplayedRow : NetFrameworkBase.Boolean
      );
      
      procedure MaxInputLength
      (
         this : in out DataGridViewTextBoxCell.Kind;
         value : NetFrameworkBase.Int32
      );
      
      function ToString
      (
         this : in out DataGridViewTextBoxCell.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function Constructor return NetFrameworkBase.System.Windows.Forms.DataGridViewTextBoxCell.Kind_Ptr;
      
end;