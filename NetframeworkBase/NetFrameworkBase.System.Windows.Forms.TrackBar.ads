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
with NetFrameworkBase.System.Windows.Forms.Control;
limited with NetFrameworkBase.System.Windows.Forms.TickStyle;
limited with NetFrameworkBase.System.EventHandler;
limited with NetFrameworkBase.System.Drawing.Image;
limited with NetFrameworkBase.System.Windows.Forms.ImageLayout;
limited with NetFrameworkBase.System.Drawing.Font;
limited with NetFrameworkBase.System.Drawing.Color;
limited with NetFrameworkBase.System.Windows.Forms.ImeMode;
limited with NetFrameworkBase.System.Windows.Forms.Orientation;
limited with NetFrameworkBase.System.Windows.Forms.Padding;
limited with NetFrameworkBase.System.Windows.Forms.MouseEventHandler;
limited with NetFrameworkBase.System.Windows.Forms.PaintEventHandler;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Windows.Forms.TrackBar is
   
   type Kind is new NetFrameworkBase.System.Windows.Forms.Control.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function ForeColor
      (
         this : in out TrackBar.Kind
      )
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      procedure LargeChange
      (
         this : in out TrackBar.Kind;
         value : NetFrameworkBase.Int32
      );
      
      procedure Maximum
      (
         this : in out TrackBar.Kind;
         value : NetFrameworkBase.Int32
      );
      
      procedure TickStyle
      (
         this : in out TrackBar.Kind;
         value : NetFrameworkBase.System.Windows.Forms.TickStyle.Kind
      );
      
      procedure TickFrequency
      (
         this : in out TrackBar.Kind;
         value : NetFrameworkBase.Int32
      );
      
      function Value
      (
         this : in out TrackBar.Kind
      )
      return NetFrameworkBase.Int32;
      
      procedure Value
      (
         this : in out TrackBar.Kind;
         value : NetFrameworkBase.Int32
      );
      
      procedure add_ValueChanged
      (
         this : in out TrackBar.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      function AutoSize
      (
         this : in out TrackBar.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure AutoSize
      (
         this : in out TrackBar.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      function BackgroundImage
      (
         this : in out TrackBar.Kind
      )
      return NetFrameworkBase.System.Drawing.Image.Kind_Ptr;
      
      procedure BackgroundImage
      (
         this : in out TrackBar.Kind;
         value : NetFrameworkBase.System.Drawing.Image.Kind_Ptr
      );
      
      function BackgroundImageLayout
      (
         this : in out TrackBar.Kind
      )
      return NetFrameworkBase.System.Windows.Forms.ImageLayout.Kind;
      
      procedure BackgroundImageLayout
      (
         this : in out TrackBar.Kind;
         value : NetFrameworkBase.System.Windows.Forms.ImageLayout.Kind
      );
      
      function Font
      (
         this : in out TrackBar.Kind
      )
      return NetFrameworkBase.System.Drawing.Font.Kind_Ptr;
      
      procedure Font
      (
         this : in out TrackBar.Kind;
         value : NetFrameworkBase.System.Drawing.Font.Kind_Ptr
      );
      
      procedure ForeColor
      (
         this : in out TrackBar.Kind;
         value : NetFrameworkBase.System.Drawing.Color.Kind_Ptr
      );
      
      function RightToLeftLayout
      (
         this : in out TrackBar.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure RightToLeftLayout
      (
         this : in out TrackBar.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      function Text
      (
         this : in out TrackBar.Kind
      )
      return NetFrameworkBase.BSTR;
      
      procedure Text
      (
         this : in out TrackBar.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      procedure BeginInit
      (
         this : in out TrackBar.Kind
      );
      
      procedure EndInit
      (
         this : in out TrackBar.Kind
      );
      
      procedure add_AutoSizeChanged
      (
         this : in out TrackBar.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      procedure remove_AutoSizeChanged
      (
         this : in out TrackBar.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      procedure add_BackgroundImageChanged
      (
         this : in out TrackBar.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      procedure remove_BackgroundImageChanged
      (
         this : in out TrackBar.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      procedure add_BackgroundImageLayoutChanged
      (
         this : in out TrackBar.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      procedure remove_BackgroundImageLayoutChanged
      (
         this : in out TrackBar.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      procedure add_FontChanged
      (
         this : in out TrackBar.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      procedure remove_FontChanged
      (
         this : in out TrackBar.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      procedure add_ForeColorChanged
      (
         this : in out TrackBar.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      procedure remove_ForeColorChanged
      (
         this : in out TrackBar.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      function ImeMode
      (
         this : in out TrackBar.Kind
      )
      return NetFrameworkBase.System.Windows.Forms.ImeMode.Kind;
      
      procedure ImeMode
      (
         this : in out TrackBar.Kind;
         value : NetFrameworkBase.System.Windows.Forms.ImeMode.Kind
      );
      
      procedure add_ImeModeChanged
      (
         this : in out TrackBar.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      procedure remove_ImeModeChanged
      (
         this : in out TrackBar.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      function LargeChange
      (
         this : in out TrackBar.Kind
      )
      return NetFrameworkBase.Int32;
      
      function Maximum
      (
         this : in out TrackBar.Kind
      )
      return NetFrameworkBase.Int32;
      
      function Minimum
      (
         this : in out TrackBar.Kind
      )
      return NetFrameworkBase.Int32;
      
      procedure Minimum
      (
         this : in out TrackBar.Kind;
         value : NetFrameworkBase.Int32
      );
      
      function Orientation
      (
         this : in out TrackBar.Kind
      )
      return NetFrameworkBase.System.Windows.Forms.Orientation.Kind;
      
      procedure Orientation
      (
         this : in out TrackBar.Kind;
         value : NetFrameworkBase.System.Windows.Forms.Orientation.Kind
      );
      
      function Padding
      (
         this : in out TrackBar.Kind
      )
      return NetFrameworkBase.System.Windows.Forms.Padding.Kind_Ptr;
      
      procedure Padding
      (
         this : in out TrackBar.Kind;
         value : NetFrameworkBase.System.Windows.Forms.Padding.Kind_Ptr
      );
      
      procedure add_PaddingChanged
      (
         this : in out TrackBar.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      procedure remove_PaddingChanged
      (
         this : in out TrackBar.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      function SmallChange
      (
         this : in out TrackBar.Kind
      )
      return NetFrameworkBase.Int32;
      
      procedure SmallChange
      (
         this : in out TrackBar.Kind;
         value : NetFrameworkBase.Int32
      );
      
      procedure add_TextChanged
      (
         this : in out TrackBar.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      procedure remove_TextChanged
      (
         this : in out TrackBar.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      function TickStyle
      (
         this : in out TrackBar.Kind
      )
      return NetFrameworkBase.System.Windows.Forms.TickStyle.Kind;
      
      function TickFrequency
      (
         this : in out TrackBar.Kind
      )
      return NetFrameworkBase.Int32;
      
      procedure add_Click
      (
         this : in out TrackBar.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      procedure remove_Click
      (
         this : in out TrackBar.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      procedure add_DoubleClick
      (
         this : in out TrackBar.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      procedure remove_DoubleClick
      (
         this : in out TrackBar.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      procedure add_MouseClick
      (
         this : in out TrackBar.Kind;
         value : NetFrameworkBase.System.Windows.Forms.MouseEventHandler.Kind_Ptr
      );
      
      procedure remove_MouseClick
      (
         this : in out TrackBar.Kind;
         value : NetFrameworkBase.System.Windows.Forms.MouseEventHandler.Kind_Ptr
      );
      
      procedure add_MouseDoubleClick
      (
         this : in out TrackBar.Kind;
         value : NetFrameworkBase.System.Windows.Forms.MouseEventHandler.Kind_Ptr
      );
      
      procedure remove_MouseDoubleClick
      (
         this : in out TrackBar.Kind;
         value : NetFrameworkBase.System.Windows.Forms.MouseEventHandler.Kind_Ptr
      );
      
      procedure add_RightToLeftLayoutChanged
      (
         this : in out TrackBar.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      procedure remove_RightToLeftLayoutChanged
      (
         this : in out TrackBar.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      procedure add_Scroll
      (
         this : in out TrackBar.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      procedure remove_Scroll
      (
         this : in out TrackBar.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      procedure add_Paint
      (
         this : in out TrackBar.Kind;
         value : NetFrameworkBase.System.Windows.Forms.PaintEventHandler.Kind_Ptr
      );
      
      procedure remove_Paint
      (
         this : in out TrackBar.Kind;
         value : NetFrameworkBase.System.Windows.Forms.PaintEventHandler.Kind_Ptr
      );
      
      procedure remove_ValueChanged
      (
         this : in out TrackBar.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      procedure SetRange
      (
         this : in out TrackBar.Kind;
         minValue : NetFrameworkBase.Int32; 
         maxValue : NetFrameworkBase.Int32
      );
      
      function ToString
      (
         this : in out TrackBar.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function Constructor return NetFrameworkBase.System.Windows.Forms.TrackBar.Kind_Ptr;
      
end;
