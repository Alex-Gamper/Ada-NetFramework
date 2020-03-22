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
with NetFrameworkBase.System.Windows.Forms.DataGridViewElement;
limited with NetFrameworkBase.System.Windows.Forms.ContextMenuStrip;
limited with NetFrameworkBase.System.Windows.Forms.DataGridViewCellStyle;
with NetFrameworkBase.System.Object;
limited with NetFrameworkBase.System.Type_x;
limited with NetFrameworkBase.System.Windows.Forms.DataGridViewAdvancedBorderStyle;
limited with NetFrameworkBase.System.Windows.Forms.DataGridViewDataErrorContexts;
limited with NetFrameworkBase.System.Windows.Forms.KeyEventArgs;
limited with NetFrameworkBase.System.Drawing.Graphics;
limited with NetFrameworkBase.System.Drawing.Font;
limited with NetFrameworkBase.System.Windows.Forms.TextFormatFlags;
limited with NetFrameworkBase.System.ComponentModel.TypeConverter;
limited with NetFrameworkBase.System.Drawing.Rectangle;
limited with NetFrameworkBase.System.Windows.Forms.AccessibleObject;
limited with NetFrameworkBase.System.Windows.Forms.DataGridViewElementStates;
limited with NetFrameworkBase.System.Windows.Forms.DataGridViewColumn;
limited with NetFrameworkBase.System.Windows.Forms.DataGridViewRow;
limited with NetFrameworkBase.System.Drawing.Size;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Windows.Forms.DataGridViewCell is
   
   type Kind is new NetFrameworkBase.System.Windows.Forms.DataGridViewElement.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function AccessibilityObject
      (
         this : in out DataGridViewCell.Kind
      )
      return NetFrameworkBase.System.Windows.Forms.AccessibleObject.Kind_Ptr;
      
      function ColumnIndex
      (
         this : in out DataGridViewCell.Kind
      )
      return NetFrameworkBase.Int32;
      
      function ContentBounds
      (
         this : in out DataGridViewCell.Kind
      )
      return NetFrameworkBase.System.Drawing.Rectangle.Kind_Ptr;
      
      function ContextMenuStrip
      (
         this : in out DataGridViewCell.Kind
      )
      return NetFrameworkBase.System.Windows.Forms.ContextMenuStrip.Kind_Ptr;
      
      procedure ContextMenuStrip
      (
         this : in out DataGridViewCell.Kind;
         value : NetFrameworkBase.System.Windows.Forms.ContextMenuStrip.Kind_Ptr
      );
      
      function DefaultNewRowValue
      (
         this : in out DataGridViewCell.Kind
      )
      return NetFrameworkBase.System.Object.Kind_Ptr;
      
      function Displayed
      (
         this : in out DataGridViewCell.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function EditedFormattedValue
      (
         this : in out DataGridViewCell.Kind
      )
      return NetFrameworkBase.System.Object.Kind_Ptr;
      
      function EditType
      (
         this : in out DataGridViewCell.Kind
      )
      return NetFrameworkBase.System.Type_x.Kind_Ptr;
      
      function ErrorIconBounds
      (
         this : in out DataGridViewCell.Kind
      )
      return NetFrameworkBase.System.Drawing.Rectangle.Kind_Ptr;
      
      function ErrorText
      (
         this : in out DataGridViewCell.Kind
      )
      return NetFrameworkBase.BSTR;
      
      procedure ErrorText
      (
         this : in out DataGridViewCell.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      function FormattedValue
      (
         this : in out DataGridViewCell.Kind
      )
      return NetFrameworkBase.System.Object.Kind_Ptr;
      
      function FormattedValueType
      (
         this : in out DataGridViewCell.Kind
      )
      return NetFrameworkBase.System.Type_x.Kind_Ptr;
      
      function Frozen
      (
         this : in out DataGridViewCell.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function HasStyle
      (
         this : in out DataGridViewCell.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function InheritedState
      (
         this : in out DataGridViewCell.Kind
      )
      return NetFrameworkBase.System.Windows.Forms.DataGridViewElementStates.Kind;
      
      function InheritedStyle
      (
         this : in out DataGridViewCell.Kind
      )
      return NetFrameworkBase.System.Windows.Forms.DataGridViewCellStyle.Kind_Ptr;
      
      function IsInEditMode
      (
         this : in out DataGridViewCell.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function OwningColumn
      (
         this : in out DataGridViewCell.Kind
      )
      return NetFrameworkBase.System.Windows.Forms.DataGridViewColumn.Kind_Ptr;
      
      function OwningRow
      (
         this : in out DataGridViewCell.Kind
      )
      return NetFrameworkBase.System.Windows.Forms.DataGridViewRow.Kind_Ptr;
      
      function PreferredSize
      (
         this : in out DataGridViewCell.Kind
      )
      return NetFrameworkBase.System.Drawing.Size.Kind_Ptr;
      
      function ReadOnly
      (
         this : in out DataGridViewCell.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure ReadOnly
      (
         this : in out DataGridViewCell.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      function Resizable
      (
         this : in out DataGridViewCell.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function RowIndex
      (
         this : in out DataGridViewCell.Kind
      )
      return NetFrameworkBase.Int32;
      
      function Selected
      (
         this : in out DataGridViewCell.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure Selected
      (
         this : in out DataGridViewCell.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      function Size
      (
         this : in out DataGridViewCell.Kind
      )
      return NetFrameworkBase.System.Drawing.Size.Kind_Ptr;
      
      function Style
      (
         this : in out DataGridViewCell.Kind
      )
      return NetFrameworkBase.System.Windows.Forms.DataGridViewCellStyle.Kind_Ptr;
      
      procedure Style
      (
         this : in out DataGridViewCell.Kind;
         value : NetFrameworkBase.System.Windows.Forms.DataGridViewCellStyle.Kind_Ptr
      );
      
      function Tag
      (
         this : in out DataGridViewCell.Kind
      )
      return NetFrameworkBase.System.Object.Kind_Ptr;
      
      procedure Tag
      (
         this : in out DataGridViewCell.Kind;
         value : NetFrameworkBase.System.Object.Kind_Ptr
      );
      
      function ToolTipText
      (
         this : in out DataGridViewCell.Kind
      )
      return NetFrameworkBase.BSTR;
      
      procedure ToolTipText
      (
         this : in out DataGridViewCell.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      function Value
      (
         this : in out DataGridViewCell.Kind
      )
      return NetFrameworkBase.System.Object.Kind_Ptr;
      
      procedure Value
      (
         this : in out DataGridViewCell.Kind;
         value : NetFrameworkBase.System.Object.Kind_Ptr
      );
      
      function ValueType
      (
         this : in out DataGridViewCell.Kind
      )
      return NetFrameworkBase.System.Type_x.Kind_Ptr;
      
      procedure ValueType
      (
         this : in out DataGridViewCell.Kind;
         value : NetFrameworkBase.System.Type_x.Kind_Ptr
      );
      
      function Visible
      (
         this : in out DataGridViewCell.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function AdjustCellBorderStyle
      (
         this : in out DataGridViewCell.Kind;
         dataGridViewAdvancedBorderStyleInput : NetFrameworkBase.System.Windows.Forms.DataGridViewAdvancedBorderStyle.Kind_Ptr; 
         dataGridViewAdvancedBorderStylePlaceholder : NetFrameworkBase.System.Windows.Forms.DataGridViewAdvancedBorderStyle.Kind_Ptr; 
         singleVerticalBorderAdded : NetFrameworkBase.Boolean; 
         singleHorizontalBorderAdded : NetFrameworkBase.Boolean; 
         isFirstDisplayedColumn : NetFrameworkBase.Boolean; 
         isFirstDisplayedRow : NetFrameworkBase.Boolean
      )
      return NetFrameworkBase.System.Windows.Forms.DataGridViewAdvancedBorderStyle.Kind_Ptr;
      
      function Clone
      (
         this : in out DataGridViewCell.Kind
      )
      return NetFrameworkBase.System.Object.Kind_Ptr;
      
      procedure DetachEditingControl
      (
         this : in out DataGridViewCell.Kind
      );
      
      procedure Dispose
      (
         this : in out DataGridViewCell.Kind
      );
      
      function GetEditedFormattedValue
      (
         this : in out DataGridViewCell.Kind;
         rowIndex : NetFrameworkBase.Int32; 
         context : NetFrameworkBase.System.Windows.Forms.DataGridViewDataErrorContexts.Kind
      )
      return NetFrameworkBase.System.Object.Kind_Ptr;
      
      function GetInheritedContextMenuStrip
      (
         this : in out DataGridViewCell.Kind;
         rowIndex : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.Windows.Forms.ContextMenuStrip.Kind_Ptr;
      
      procedure InitializeEditingControl
      (
         this : in out DataGridViewCell.Kind;
         rowIndex : NetFrameworkBase.Int32; 
         initialFormattedValue : NetFrameworkBase.System.Object.Kind_Ptr; 
         dataGridViewCellStyle : NetFrameworkBase.System.Windows.Forms.DataGridViewCellStyle.Kind_Ptr
      );
      
      function KeyEntersEditMode
      (
         this : in out DataGridViewCell.Kind;
         e : NetFrameworkBase.System.Windows.Forms.KeyEventArgs.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      
      function MeasureTextHeight
      (
         graphics : NetFrameworkBase.System.Drawing.Graphics.Kind_Ptr; 
         text : NetFrameworkBase.BSTR; 
         font : NetFrameworkBase.System.Drawing.Font.Kind_Ptr; 
         maxWidth : NetFrameworkBase.Int32; 
         flags : NetFrameworkBase.System.Windows.Forms.TextFormatFlags.Kind
      )
      return NetFrameworkBase.Int32;
      
      function MeasureTextSize
      (
         graphics : NetFrameworkBase.System.Drawing.Graphics.Kind_Ptr; 
         text : NetFrameworkBase.BSTR; 
         font : NetFrameworkBase.System.Drawing.Font.Kind_Ptr; 
         flags : NetFrameworkBase.System.Windows.Forms.TextFormatFlags.Kind
      )
      return NetFrameworkBase.System.Drawing.Size.Kind_Ptr;
      
      function ParseFormattedValue
      (
         this : in out DataGridViewCell.Kind;
         formattedValue : NetFrameworkBase.System.Object.Kind_Ptr; 
         cellStyle : NetFrameworkBase.System.Windows.Forms.DataGridViewCellStyle.Kind_Ptr; 
         formattedValueTypeConverter : NetFrameworkBase.System.ComponentModel.TypeConverter.Kind_Ptr; 
         valueTypeConverter : NetFrameworkBase.System.ComponentModel.TypeConverter.Kind_Ptr
      )
      return NetFrameworkBase.System.Object.Kind_Ptr;
      
      procedure PositionEditingControl
      (
         this : in out DataGridViewCell.Kind;
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
      
      function PositionEditingPanel
      (
         this : in out DataGridViewCell.Kind;
         cellBounds : NetFrameworkBase.System.Drawing.Rectangle.Kind_Ptr; 
         cellClip : NetFrameworkBase.System.Drawing.Rectangle.Kind_Ptr; 
         cellStyle : NetFrameworkBase.System.Windows.Forms.DataGridViewCellStyle.Kind_Ptr; 
         singleVerticalBorderAdded : NetFrameworkBase.Boolean; 
         singleHorizontalBorderAdded : NetFrameworkBase.Boolean; 
         isFirstDisplayedColumn : NetFrameworkBase.Boolean; 
         isFirstDisplayedRow : NetFrameworkBase.Boolean
      )
      return NetFrameworkBase.System.Drawing.Rectangle.Kind_Ptr;
      
      function GetContentBounds
      (
         this : in out DataGridViewCell.Kind;
         rowIndex : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.Drawing.Rectangle.Kind_Ptr;
      
      function GetInheritedState
      (
         this : in out DataGridViewCell.Kind;
         rowIndex : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.Windows.Forms.DataGridViewElementStates.Kind;
      
      function GetInheritedStyle
      (
         this : in out DataGridViewCell.Kind;
         inheritedCellStyle : NetFrameworkBase.System.Windows.Forms.DataGridViewCellStyle.Kind_Ptr; 
         rowIndex : NetFrameworkBase.Int32; 
         includeColors : NetFrameworkBase.Boolean
      )
      return NetFrameworkBase.System.Windows.Forms.DataGridViewCellStyle.Kind_Ptr;
      
      function MeasureTextHeight
      (
         graphics : NetFrameworkBase.System.Drawing.Graphics.Kind_Ptr; 
         text : NetFrameworkBase.BSTR; 
         font : NetFrameworkBase.System.Drawing.Font.Kind_Ptr; 
         maxWidth : NetFrameworkBase.Int32; 
         flags : NetFrameworkBase.System.Windows.Forms.TextFormatFlags.Kind; 
         widthTruncated : out NetFrameworkBase.Boolean
      )
      return NetFrameworkBase.Int32;
      
      function MeasureTextPreferredSize
      (
         graphics : NetFrameworkBase.System.Drawing.Graphics.Kind_Ptr; 
         text : NetFrameworkBase.BSTR; 
         font : NetFrameworkBase.System.Drawing.Font.Kind_Ptr; 
         maxRatio : NetFrameworkBase.Single; 
         flags : NetFrameworkBase.System.Windows.Forms.TextFormatFlags.Kind
      )
      return NetFrameworkBase.System.Drawing.Size.Kind_Ptr;
      
      function MeasureTextWidth
      (
         graphics : NetFrameworkBase.System.Drawing.Graphics.Kind_Ptr; 
         text : NetFrameworkBase.BSTR; 
         font : NetFrameworkBase.System.Drawing.Font.Kind_Ptr; 
         maxHeight : NetFrameworkBase.Int32; 
         flags : NetFrameworkBase.System.Windows.Forms.TextFormatFlags.Kind
      )
      return NetFrameworkBase.Int32;
      
      function ToString
      (
         this : in out DataGridViewCell.Kind
      )
      return NetFrameworkBase.BSTR;
      
end;