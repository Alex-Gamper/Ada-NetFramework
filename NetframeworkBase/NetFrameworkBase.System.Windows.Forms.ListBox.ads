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
with NetFrameworkBase.System.Windows.Forms.ListControl;
limited with NetFrameworkBase.System.Drawing.Color;
limited with NetFrameworkBase.System.Drawing.Image;
limited with NetFrameworkBase.System.Windows.Forms.ImageLayout;
limited with NetFrameworkBase.System.Windows.Forms.DrawMode;
limited with NetFrameworkBase.System.Drawing.Font;
limited with NetFrameworkBase.System.Windows.Forms.RightToLeft;
limited with NetFrameworkBase.System.Windows.Forms.SelectionMode;
limited with NetFrameworkBase.System.EventHandler;
limited with NetFrameworkBase.System.Windows.Forms.BorderStyle;
with NetFrameworkBase.System.Object;
limited with NetFrameworkBase.System.Windows.Forms.MouseEventHandler;
limited with NetFrameworkBase.System.Windows.Forms.Padding;
limited with NetFrameworkBase.System.Windows.Forms.PaintEventHandler;
limited with NetFrameworkBase.System.Windows.Forms.DrawItemEventHandler;
limited with NetFrameworkBase.System.Windows.Forms.MeasureItemEventHandler;
limited with NetFrameworkBase.System.Drawing.Point;
limited with NetFrameworkBase.System.Windows.Forms.ListBox.ObjectCollection;
limited with NetFrameworkBase.System.Windows.Forms.ListBox.SelectedIndexCollection;
limited with NetFrameworkBase.System.Windows.Forms.ListBox.SelectedObjectCollection;
limited with NetFrameworkBase.System.Windows.Forms.ListBox.IntegerCollection;
limited with NetFrameworkBase.System.Drawing.Rectangle;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Windows.Forms.ListBox is
   
   type Kind is new NetFrameworkBase.System.Windows.Forms.ListControl.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function BackColor
      (
         this : in out ListBox.Kind
      )
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function ForeColor
      (
         this : in out ListBox.Kind
      )
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function Items
      (
         this : in out ListBox.Kind
      )
      return NetFrameworkBase.System.Windows.Forms.ListBox.ObjectCollection.Kind_Ptr;
      
      procedure BeginUpdate
      (
         this : in out ListBox.Kind
      );
      
      procedure EndUpdate
      (
         this : in out ListBox.Kind
      );
      
      procedure BackColor
      (
         this : in out ListBox.Kind;
         value : NetFrameworkBase.System.Drawing.Color.Kind_Ptr
      );
      
      function BackgroundImage
      (
         this : in out ListBox.Kind
      )
      return NetFrameworkBase.System.Drawing.Image.Kind_Ptr;
      
      procedure BackgroundImage
      (
         this : in out ListBox.Kind;
         value : NetFrameworkBase.System.Drawing.Image.Kind_Ptr
      );
      
      function BackgroundImageLayout
      (
         this : in out ListBox.Kind
      )
      return NetFrameworkBase.System.Windows.Forms.ImageLayout.Kind;
      
      procedure BackgroundImageLayout
      (
         this : in out ListBox.Kind;
         value : NetFrameworkBase.System.Windows.Forms.ImageLayout.Kind
      );
      
      function DrawMode
      (
         this : in out ListBox.Kind
      )
      return NetFrameworkBase.System.Windows.Forms.DrawMode.Kind;
      
      procedure DrawMode
      (
         this : in out ListBox.Kind;
         value : NetFrameworkBase.System.Windows.Forms.DrawMode.Kind
      );
      
      function Font
      (
         this : in out ListBox.Kind
      )
      return NetFrameworkBase.System.Drawing.Font.Kind_Ptr;
      
      procedure Font
      (
         this : in out ListBox.Kind;
         value : NetFrameworkBase.System.Drawing.Font.Kind_Ptr
      );
      
      procedure ForeColor
      (
         this : in out ListBox.Kind;
         value : NetFrameworkBase.System.Drawing.Color.Kind_Ptr
      );
      
      function ItemHeight
      (
         this : in out ListBox.Kind
      )
      return NetFrameworkBase.Int32;
      
      function RightToLeft
      (
         this : in out ListBox.Kind
      )
      return NetFrameworkBase.System.Windows.Forms.RightToLeft.Kind;
      
      procedure RightToLeft
      (
         this : in out ListBox.Kind;
         value : NetFrameworkBase.System.Windows.Forms.RightToLeft.Kind
      );
      
      function SelectedIndex
      (
         this : in out ListBox.Kind
      )
      return NetFrameworkBase.Int32;
      
      function SelectionMode
      (
         this : in out ListBox.Kind
      )
      return NetFrameworkBase.System.Windows.Forms.SelectionMode.Kind;
      
      procedure SelectionMode
      (
         this : in out ListBox.Kind;
         value : NetFrameworkBase.System.Windows.Forms.SelectionMode.Kind
      );
      
      function Text
      (
         this : in out ListBox.Kind
      )
      return NetFrameworkBase.BSTR;
      
      procedure Text
      (
         this : in out ListBox.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      procedure Refresh
      (
         this : in out ListBox.Kind
      );
      
      procedure ResetBackColor
      (
         this : in out ListBox.Kind
      );
      
      procedure ResetForeColor
      (
         this : in out ListBox.Kind
      );
      
      procedure add_BackgroundImageChanged
      (
         this : in out ListBox.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      procedure remove_BackgroundImageChanged
      (
         this : in out ListBox.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      procedure add_BackgroundImageLayoutChanged
      (
         this : in out ListBox.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      procedure remove_BackgroundImageLayoutChanged
      (
         this : in out ListBox.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      function BorderStyle
      (
         this : in out ListBox.Kind
      )
      return NetFrameworkBase.System.Windows.Forms.BorderStyle.Kind;
      
      procedure BorderStyle
      (
         this : in out ListBox.Kind;
         value : NetFrameworkBase.System.Windows.Forms.BorderStyle.Kind
      );
      
      function ColumnWidth
      (
         this : in out ListBox.Kind
      )
      return NetFrameworkBase.Int32;
      
      procedure ColumnWidth
      (
         this : in out ListBox.Kind;
         value : NetFrameworkBase.Int32
      );
      
      function UseCustomTabOffsets
      (
         this : in out ListBox.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure UseCustomTabOffsets
      (
         this : in out ListBox.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      function HorizontalExtent
      (
         this : in out ListBox.Kind
      )
      return NetFrameworkBase.Int32;
      
      procedure HorizontalExtent
      (
         this : in out ListBox.Kind;
         value : NetFrameworkBase.Int32
      );
      
      function HorizontalScrollbar
      (
         this : in out ListBox.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure HorizontalScrollbar
      (
         this : in out ListBox.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      function IntegralHeight
      (
         this : in out ListBox.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure IntegralHeight
      (
         this : in out ListBox.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      procedure ItemHeight
      (
         this : in out ListBox.Kind;
         value : NetFrameworkBase.Int32
      );
      
      function MultiColumn
      (
         this : in out ListBox.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure MultiColumn
      (
         this : in out ListBox.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      function PreferredHeight
      (
         this : in out ListBox.Kind
      )
      return NetFrameworkBase.Int32;
      
      function ScrollAlwaysVisible
      (
         this : in out ListBox.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure ScrollAlwaysVisible
      (
         this : in out ListBox.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      procedure SelectedIndex
      (
         this : in out ListBox.Kind;
         value : NetFrameworkBase.Int32
      );
      
      function SelectedIndices
      (
         this : in out ListBox.Kind
      )
      return NetFrameworkBase.System.Windows.Forms.ListBox.SelectedIndexCollection.Kind_Ptr;
      
      function SelectedItem
      (
         this : in out ListBox.Kind
      )
      return NetFrameworkBase.System.Object.Kind_Ptr;
      
      procedure SelectedItem
      (
         this : in out ListBox.Kind;
         value : NetFrameworkBase.System.Object.Kind_Ptr
      );
      
      function SelectedItems
      (
         this : in out ListBox.Kind
      )
      return NetFrameworkBase.System.Windows.Forms.ListBox.SelectedObjectCollection.Kind_Ptr;
      
      function Sorted
      (
         this : in out ListBox.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure Sorted
      (
         this : in out ListBox.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      procedure add_TextChanged
      (
         this : in out ListBox.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      procedure remove_TextChanged
      (
         this : in out ListBox.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      function TopIndex
      (
         this : in out ListBox.Kind
      )
      return NetFrameworkBase.Int32;
      
      procedure TopIndex
      (
         this : in out ListBox.Kind;
         value : NetFrameworkBase.Int32
      );
      
      function UseTabStops
      (
         this : in out ListBox.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure UseTabStops
      (
         this : in out ListBox.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      function CustomTabOffsets
      (
         this : in out ListBox.Kind
      )
      return NetFrameworkBase.System.Windows.Forms.ListBox.IntegerCollection.Kind_Ptr;
      
      procedure add_Click
      (
         this : in out ListBox.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      procedure remove_Click
      (
         this : in out ListBox.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      procedure add_MouseClick
      (
         this : in out ListBox.Kind;
         value : NetFrameworkBase.System.Windows.Forms.MouseEventHandler.Kind_Ptr
      );
      
      procedure remove_MouseClick
      (
         this : in out ListBox.Kind;
         value : NetFrameworkBase.System.Windows.Forms.MouseEventHandler.Kind_Ptr
      );
      
      function Padding
      (
         this : in out ListBox.Kind
      )
      return NetFrameworkBase.System.Windows.Forms.Padding.Kind_Ptr;
      
      procedure Padding
      (
         this : in out ListBox.Kind;
         value : NetFrameworkBase.System.Windows.Forms.Padding.Kind_Ptr
      );
      
      procedure add_PaddingChanged
      (
         this : in out ListBox.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      procedure remove_PaddingChanged
      (
         this : in out ListBox.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      procedure add_Paint
      (
         this : in out ListBox.Kind;
         value : NetFrameworkBase.System.Windows.Forms.PaintEventHandler.Kind_Ptr
      );
      
      procedure remove_Paint
      (
         this : in out ListBox.Kind;
         value : NetFrameworkBase.System.Windows.Forms.PaintEventHandler.Kind_Ptr
      );
      
      procedure add_DrawItem
      (
         this : in out ListBox.Kind;
         value : NetFrameworkBase.System.Windows.Forms.DrawItemEventHandler.Kind_Ptr
      );
      
      procedure remove_DrawItem
      (
         this : in out ListBox.Kind;
         value : NetFrameworkBase.System.Windows.Forms.DrawItemEventHandler.Kind_Ptr
      );
      
      procedure add_MeasureItem
      (
         this : in out ListBox.Kind;
         value : NetFrameworkBase.System.Windows.Forms.MeasureItemEventHandler.Kind_Ptr
      );
      
      procedure remove_MeasureItem
      (
         this : in out ListBox.Kind;
         value : NetFrameworkBase.System.Windows.Forms.MeasureItemEventHandler.Kind_Ptr
      );
      
      procedure add_SelectedIndexChanged
      (
         this : in out ListBox.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      procedure remove_SelectedIndexChanged
      (
         this : in out ListBox.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      procedure ClearSelected
      (
         this : in out ListBox.Kind
      );
      
      function FindString
      (
         this : in out ListBox.Kind;
         s : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.Int32;
      
      function FindString
      (
         this : in out ListBox.Kind;
         s : NetFrameworkBase.BSTR; 
         startIndex : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.Int32;
      
      function FindStringExact
      (
         this : in out ListBox.Kind;
         s : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.Int32;
      
      function FindStringExact
      (
         this : in out ListBox.Kind;
         s : NetFrameworkBase.BSTR; 
         startIndex : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.Int32;
      
      function GetItemHeight
      (
         this : in out ListBox.Kind;
         index : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.Int32;
      
      function GetItemRectangle
      (
         this : in out ListBox.Kind;
         index : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.Drawing.Rectangle.Kind_Ptr;
      
      function GetSelected
      (
         this : in out ListBox.Kind;
         index : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.Boolean;
      
      function IndexFromPoint
      (
         this : in out ListBox.Kind;
         p : NetFrameworkBase.System.Drawing.Point.Kind_Ptr
      )
      return NetFrameworkBase.Int32;
      
      function IndexFromPoint
      (
         this : in out ListBox.Kind;
         x : NetFrameworkBase.Int32; 
         y : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.Int32;
      
      procedure SetSelected
      (
         this : in out ListBox.Kind;
         index : NetFrameworkBase.Int32; 
         value : NetFrameworkBase.Boolean
      );
      
      function ToString
      (
         this : in out ListBox.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function Constructor return NetFrameworkBase.System.Windows.Forms.ListBox.Kind_Ptr;
      
end;
