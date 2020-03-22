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
limited with NetFrameworkBase.System.Windows.Forms.AnchorStyles;
limited with NetFrameworkBase.System.Drawing.Color;
limited with NetFrameworkBase.System.Drawing.Image;
limited with NetFrameworkBase.System.Windows.Forms.ImageLayout;
limited with NetFrameworkBase.System.Drawing.Font;
limited with NetFrameworkBase.System.Windows.Forms.DockStyle;
limited with NetFrameworkBase.System.EventHandler;
limited with NetFrameworkBase.System.Windows.Forms.BorderStyle;
limited with NetFrameworkBase.System.Windows.Forms.ImeMode;
limited with NetFrameworkBase.System.Windows.Forms.KeyEventHandler;
limited with NetFrameworkBase.System.Windows.Forms.KeyPressEventHandler;
limited with NetFrameworkBase.System.Windows.Forms.SplitterEventHandler;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Windows.Forms.Splitter is
   
   type Kind is new NetFrameworkBase.System.Windows.Forms.Control.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function Anchor
      (
         this : in out Splitter.Kind
      )
      return NetFrameworkBase.System.Windows.Forms.AnchorStyles.Kind;
      
      procedure Anchor
      (
         this : in out Splitter.Kind;
         value : NetFrameworkBase.System.Windows.Forms.AnchorStyles.Kind
      );
      
      function AllowDrop
      (
         this : in out Splitter.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure AllowDrop
      (
         this : in out Splitter.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      function ForeColor
      (
         this : in out Splitter.Kind
      )
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      procedure ForeColor
      (
         this : in out Splitter.Kind;
         value : NetFrameworkBase.System.Drawing.Color.Kind_Ptr
      );
      
      function BackgroundImage
      (
         this : in out Splitter.Kind
      )
      return NetFrameworkBase.System.Drawing.Image.Kind_Ptr;
      
      procedure BackgroundImage
      (
         this : in out Splitter.Kind;
         value : NetFrameworkBase.System.Drawing.Image.Kind_Ptr
      );
      
      function BackgroundImageLayout
      (
         this : in out Splitter.Kind
      )
      return NetFrameworkBase.System.Windows.Forms.ImageLayout.Kind;
      
      procedure BackgroundImageLayout
      (
         this : in out Splitter.Kind;
         value : NetFrameworkBase.System.Windows.Forms.ImageLayout.Kind
      );
      
      function Font
      (
         this : in out Splitter.Kind
      )
      return NetFrameworkBase.System.Drawing.Font.Kind_Ptr;
      
      procedure Font
      (
         this : in out Splitter.Kind;
         value : NetFrameworkBase.System.Drawing.Font.Kind_Ptr
      );
      
      function Dock
      (
         this : in out Splitter.Kind
      )
      return NetFrameworkBase.System.Windows.Forms.DockStyle.Kind;
      
      procedure Dock
      (
         this : in out Splitter.Kind;
         value : NetFrameworkBase.System.Windows.Forms.DockStyle.Kind
      );
      
      function Text
      (
         this : in out Splitter.Kind
      )
      return NetFrameworkBase.BSTR;
      
      procedure Text
      (
         this : in out Splitter.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      procedure add_ForeColorChanged
      (
         this : in out Splitter.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      procedure remove_ForeColorChanged
      (
         this : in out Splitter.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      procedure add_BackgroundImageChanged
      (
         this : in out Splitter.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      procedure remove_BackgroundImageChanged
      (
         this : in out Splitter.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      procedure add_BackgroundImageLayoutChanged
      (
         this : in out Splitter.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      procedure remove_BackgroundImageLayoutChanged
      (
         this : in out Splitter.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      procedure add_FontChanged
      (
         this : in out Splitter.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      procedure remove_FontChanged
      (
         this : in out Splitter.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      function BorderStyle
      (
         this : in out Splitter.Kind
      )
      return NetFrameworkBase.System.Windows.Forms.BorderStyle.Kind;
      
      procedure BorderStyle
      (
         this : in out Splitter.Kind;
         value : NetFrameworkBase.System.Windows.Forms.BorderStyle.Kind
      );
      
      function ImeMode
      (
         this : in out Splitter.Kind
      )
      return NetFrameworkBase.System.Windows.Forms.ImeMode.Kind;
      
      procedure ImeMode
      (
         this : in out Splitter.Kind;
         value : NetFrameworkBase.System.Windows.Forms.ImeMode.Kind
      );
      
      procedure add_ImeModeChanged
      (
         this : in out Splitter.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      procedure remove_ImeModeChanged
      (
         this : in out Splitter.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      function MinExtra
      (
         this : in out Splitter.Kind
      )
      return NetFrameworkBase.Int32;
      
      procedure MinExtra
      (
         this : in out Splitter.Kind;
         value : NetFrameworkBase.Int32
      );
      
      function MinSize
      (
         this : in out Splitter.Kind
      )
      return NetFrameworkBase.Int32;
      
      procedure MinSize
      (
         this : in out Splitter.Kind;
         value : NetFrameworkBase.Int32
      );
      
      function SplitPosition
      (
         this : in out Splitter.Kind
      )
      return NetFrameworkBase.Int32;
      
      procedure SplitPosition
      (
         this : in out Splitter.Kind;
         value : NetFrameworkBase.Int32
      );
      
      function TabStop
      (
         this : in out Splitter.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure TabStop
      (
         this : in out Splitter.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      procedure add_TabStopChanged
      (
         this : in out Splitter.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      procedure remove_TabStopChanged
      (
         this : in out Splitter.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      procedure add_TextChanged
      (
         this : in out Splitter.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      procedure remove_TextChanged
      (
         this : in out Splitter.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      procedure add_Enter
      (
         this : in out Splitter.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      procedure remove_Enter
      (
         this : in out Splitter.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      procedure add_KeyUp
      (
         this : in out Splitter.Kind;
         value : NetFrameworkBase.System.Windows.Forms.KeyEventHandler.Kind_Ptr
      );
      
      procedure remove_KeyUp
      (
         this : in out Splitter.Kind;
         value : NetFrameworkBase.System.Windows.Forms.KeyEventHandler.Kind_Ptr
      );
      
      procedure add_KeyDown
      (
         this : in out Splitter.Kind;
         value : NetFrameworkBase.System.Windows.Forms.KeyEventHandler.Kind_Ptr
      );
      
      procedure remove_KeyDown
      (
         this : in out Splitter.Kind;
         value : NetFrameworkBase.System.Windows.Forms.KeyEventHandler.Kind_Ptr
      );
      
      procedure add_KeyPress
      (
         this : in out Splitter.Kind;
         value : NetFrameworkBase.System.Windows.Forms.KeyPressEventHandler.Kind_Ptr
      );
      
      procedure remove_KeyPress
      (
         this : in out Splitter.Kind;
         value : NetFrameworkBase.System.Windows.Forms.KeyPressEventHandler.Kind_Ptr
      );
      
      procedure add_Leave
      (
         this : in out Splitter.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      procedure remove_Leave
      (
         this : in out Splitter.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      procedure add_SplitterMoving
      (
         this : in out Splitter.Kind;
         value : NetFrameworkBase.System.Windows.Forms.SplitterEventHandler.Kind_Ptr
      );
      
      procedure remove_SplitterMoving
      (
         this : in out Splitter.Kind;
         value : NetFrameworkBase.System.Windows.Forms.SplitterEventHandler.Kind_Ptr
      );
      
      procedure add_SplitterMoved
      (
         this : in out Splitter.Kind;
         value : NetFrameworkBase.System.Windows.Forms.SplitterEventHandler.Kind_Ptr
      );
      
      procedure remove_SplitterMoved
      (
         this : in out Splitter.Kind;
         value : NetFrameworkBase.System.Windows.Forms.SplitterEventHandler.Kind_Ptr
      );
      
      function ToString
      (
         this : in out Splitter.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function Constructor return NetFrameworkBase.System.Windows.Forms.Splitter.Kind_Ptr;
      
end;