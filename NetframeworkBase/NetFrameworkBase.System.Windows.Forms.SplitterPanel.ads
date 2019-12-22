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
with NetFrameworkBase.System.Windows.Forms.Panel;
limited with NetFrameworkBase.System.Windows.Forms.BorderStyle;
limited with NetFrameworkBase.System.Drawing.Point;
limited with NetFrameworkBase.System.Drawing.Size;
limited with NetFrameworkBase.System.Windows.Forms.AutoSizeMode;
limited with NetFrameworkBase.System.EventHandler;
limited with NetFrameworkBase.System.Windows.Forms.AnchorStyles;
limited with NetFrameworkBase.System.Windows.Forms.DockStyle;
limited with NetFrameworkBase.System.Windows.Forms.Control;
limited with NetFrameworkBase.System.Windows.Forms.SplitContainer;
limited with NetFrameworkBase.System.Windows.Forms.ScrollableControl.DockPaddingEdges;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Windows.Forms.SplitterPanel is
   
   type Kind is new NetFrameworkBase.System.Windows.Forms.Panel.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      procedure BorderStyle
      (
         this : in out SplitterPanel.Kind;
         value : NetFrameworkBase.System.Windows.Forms.BorderStyle.Kind
      );
      
      procedure Location
      (
         this : in out SplitterPanel.Kind;
         value : NetFrameworkBase.System.Drawing.Point.Kind_Ptr
      );
      
      procedure Size
      (
         this : in out SplitterPanel.Kind;
         value : NetFrameworkBase.System.Drawing.Size.Kind_Ptr
      );
      
      function Visible
      (
         this : in out SplitterPanel.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function Width
      (
         this : in out SplitterPanel.Kind
      )
      return NetFrameworkBase.Int32;
      
      function AutoSizeMode
      (
         this : in out SplitterPanel.Kind
      )
      return NetFrameworkBase.System.Windows.Forms.AutoSizeMode.Kind;
      
      procedure AutoSizeMode
      (
         this : in out SplitterPanel.Kind;
         value : NetFrameworkBase.System.Windows.Forms.AutoSizeMode.Kind
      );
      
      function AutoSize
      (
         this : in out SplitterPanel.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure AutoSize
      (
         this : in out SplitterPanel.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      procedure add_AutoSizeChanged
      (
         this : in out SplitterPanel.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      procedure remove_AutoSizeChanged
      (
         this : in out SplitterPanel.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      function Anchor
      (
         this : in out SplitterPanel.Kind
      )
      return NetFrameworkBase.System.Windows.Forms.AnchorStyles.Kind;
      
      procedure Anchor
      (
         this : in out SplitterPanel.Kind;
         value : NetFrameworkBase.System.Windows.Forms.AnchorStyles.Kind
      );
      
      function BorderStyle
      (
         this : in out SplitterPanel.Kind
      )
      return NetFrameworkBase.System.Windows.Forms.BorderStyle.Kind;
      
      function Dock
      (
         this : in out SplitterPanel.Kind
      )
      return NetFrameworkBase.System.Windows.Forms.DockStyle.Kind;
      
      procedure Dock
      (
         this : in out SplitterPanel.Kind;
         value : NetFrameworkBase.System.Windows.Forms.DockStyle.Kind
      );
      
      function DockPadding
      (
         this : in out SplitterPanel.Kind
      )
      return NetFrameworkBase.System.Windows.Forms.ScrollableControl.DockPaddingEdges.Kind_Ptr;
      
      function Height
      (
         this : in out SplitterPanel.Kind
      )
      return NetFrameworkBase.Int32;
      
      procedure Height
      (
         this : in out SplitterPanel.Kind;
         value : NetFrameworkBase.Int32
      );
      
      function Location
      (
         this : in out SplitterPanel.Kind
      )
      return NetFrameworkBase.System.Drawing.Point.Kind_Ptr;
      
      function MinimumSize
      (
         this : in out SplitterPanel.Kind
      )
      return NetFrameworkBase.System.Drawing.Size.Kind_Ptr;
      
      procedure MinimumSize
      (
         this : in out SplitterPanel.Kind;
         value : NetFrameworkBase.System.Drawing.Size.Kind_Ptr
      );
      
      function MaximumSize
      (
         this : in out SplitterPanel.Kind
      )
      return NetFrameworkBase.System.Drawing.Size.Kind_Ptr;
      
      procedure MaximumSize
      (
         this : in out SplitterPanel.Kind;
         value : NetFrameworkBase.System.Drawing.Size.Kind_Ptr
      );
      
      function Name
      (
         this : in out SplitterPanel.Kind
      )
      return NetFrameworkBase.BSTR;
      
      procedure Name
      (
         this : in out SplitterPanel.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      function Parent
      (
         this : in out SplitterPanel.Kind
      )
      return NetFrameworkBase.System.Windows.Forms.Control.Kind_Ptr;
      
      procedure Parent
      (
         this : in out SplitterPanel.Kind;
         value : NetFrameworkBase.System.Windows.Forms.Control.Kind_Ptr
      );
      
      function Size
      (
         this : in out SplitterPanel.Kind
      )
      return NetFrameworkBase.System.Drawing.Size.Kind_Ptr;
      
      function TabIndex
      (
         this : in out SplitterPanel.Kind
      )
      return NetFrameworkBase.Int32;
      
      procedure TabIndex
      (
         this : in out SplitterPanel.Kind;
         value : NetFrameworkBase.Int32
      );
      
      function TabStop
      (
         this : in out SplitterPanel.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure TabStop
      (
         this : in out SplitterPanel.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      procedure Visible
      (
         this : in out SplitterPanel.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      procedure Width
      (
         this : in out SplitterPanel.Kind;
         value : NetFrameworkBase.Int32
      );
      
      procedure add_VisibleChanged
      (
         this : in out SplitterPanel.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      procedure remove_VisibleChanged
      (
         this : in out SplitterPanel.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      procedure add_DockChanged
      (
         this : in out SplitterPanel.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      procedure remove_DockChanged
      (
         this : in out SplitterPanel.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      procedure add_LocationChanged
      (
         this : in out SplitterPanel.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      procedure remove_LocationChanged
      (
         this : in out SplitterPanel.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      procedure add_TabIndexChanged
      (
         this : in out SplitterPanel.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      procedure remove_TabIndexChanged
      (
         this : in out SplitterPanel.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      procedure add_TabStopChanged
      (
         this : in out SplitterPanel.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      procedure remove_TabStopChanged
      (
         this : in out SplitterPanel.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      function Constructor
      (
         owner : NetFrameworkBase.System.Windows.Forms.SplitContainer.Kind_Ptr
      )
      return NetFrameworkBase.System.Windows.Forms.SplitterPanel.Kind_Ptr;
      
end;
