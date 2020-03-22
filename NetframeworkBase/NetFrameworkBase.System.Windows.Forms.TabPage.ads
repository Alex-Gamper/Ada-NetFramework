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
limited with NetFrameworkBase.System.Windows.Forms.AutoSizeMode;
limited with NetFrameworkBase.System.Windows.Forms.AnchorStyles;
limited with NetFrameworkBase.System.Windows.Forms.DockStyle;
limited with NetFrameworkBase.System.Drawing.Size;
with NetFrameworkBase.System.Object;
limited with NetFrameworkBase.System.EventHandler;
limited with NetFrameworkBase.System.Drawing.Color;
limited with NetFrameworkBase.System.Drawing.Point;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Windows.Forms.TabPage is
   
   type Kind is new NetFrameworkBase.System.Windows.Forms.Panel.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function AutoSizeMode
      (
         this : in out TabPage.Kind
      )
      return NetFrameworkBase.System.Windows.Forms.AutoSizeMode.Kind;
      
      procedure AutoSizeMode
      (
         this : in out TabPage.Kind;
         value : NetFrameworkBase.System.Windows.Forms.AutoSizeMode.Kind
      );
      
      function AutoSize
      (
         this : in out TabPage.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure AutoSize
      (
         this : in out TabPage.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      function Anchor
      (
         this : in out TabPage.Kind
      )
      return NetFrameworkBase.System.Windows.Forms.AnchorStyles.Kind;
      
      procedure Anchor
      (
         this : in out TabPage.Kind;
         value : NetFrameworkBase.System.Windows.Forms.AnchorStyles.Kind
      );
      
      function Dock
      (
         this : in out TabPage.Kind
      )
      return NetFrameworkBase.System.Windows.Forms.DockStyle.Kind;
      
      procedure Dock
      (
         this : in out TabPage.Kind;
         value : NetFrameworkBase.System.Windows.Forms.DockStyle.Kind
      );
      
      function MaximumSize
      (
         this : in out TabPage.Kind
      )
      return NetFrameworkBase.System.Drawing.Size.Kind_Ptr;
      
      procedure MaximumSize
      (
         this : in out TabPage.Kind;
         value : NetFrameworkBase.System.Drawing.Size.Kind_Ptr
      );
      
      function MinimumSize
      (
         this : in out TabPage.Kind
      )
      return NetFrameworkBase.System.Drawing.Size.Kind_Ptr;
      
      procedure MinimumSize
      (
         this : in out TabPage.Kind;
         value : NetFrameworkBase.System.Drawing.Size.Kind_Ptr
      );
      
      function Text
      (
         this : in out TabPage.Kind
      )
      return NetFrameworkBase.BSTR;
      
      procedure Text
      (
         this : in out TabPage.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      function GetTabPageOfComponent
      (
         comp : NetFrameworkBase.System.Object.Kind_Ptr
      )
      return NetFrameworkBase.System.Windows.Forms.TabPage.Kind_Ptr;
      
      procedure add_AutoSizeChanged
      (
         this : in out TabPage.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      procedure remove_AutoSizeChanged
      (
         this : in out TabPage.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      function BackColor
      (
         this : in out TabPage.Kind
      )
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      procedure BackColor
      (
         this : in out TabPage.Kind;
         value : NetFrameworkBase.System.Drawing.Color.Kind_Ptr
      );
      
      function ImageIndex
      (
         this : in out TabPage.Kind
      )
      return NetFrameworkBase.Int32;
      
      procedure ImageIndex
      (
         this : in out TabPage.Kind;
         value : NetFrameworkBase.Int32
      );
      
      function ImageKey
      (
         this : in out TabPage.Kind
      )
      return NetFrameworkBase.BSTR;
      
      procedure ImageKey
      (
         this : in out TabPage.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      procedure add_DockChanged
      (
         this : in out TabPage.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      procedure remove_DockChanged
      (
         this : in out TabPage.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      function Enabled
      (
         this : in out TabPage.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure Enabled
      (
         this : in out TabPage.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      procedure add_EnabledChanged
      (
         this : in out TabPage.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      procedure remove_EnabledChanged
      (
         this : in out TabPage.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      function UseVisualStyleBackColor
      (
         this : in out TabPage.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure UseVisualStyleBackColor
      (
         this : in out TabPage.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      function Location
      (
         this : in out TabPage.Kind
      )
      return NetFrameworkBase.System.Drawing.Point.Kind_Ptr;
      
      procedure Location
      (
         this : in out TabPage.Kind;
         value : NetFrameworkBase.System.Drawing.Point.Kind_Ptr
      );
      
      procedure add_LocationChanged
      (
         this : in out TabPage.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      procedure remove_LocationChanged
      (
         this : in out TabPage.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      function PreferredSize
      (
         this : in out TabPage.Kind
      )
      return NetFrameworkBase.System.Drawing.Size.Kind_Ptr;
      
      function TabIndex
      (
         this : in out TabPage.Kind
      )
      return NetFrameworkBase.Int32;
      
      procedure TabIndex
      (
         this : in out TabPage.Kind;
         value : NetFrameworkBase.Int32
      );
      
      procedure add_TabIndexChanged
      (
         this : in out TabPage.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      procedure remove_TabIndexChanged
      (
         this : in out TabPage.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      function TabStop
      (
         this : in out TabPage.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure TabStop
      (
         this : in out TabPage.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      procedure add_TabStopChanged
      (
         this : in out TabPage.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      procedure remove_TabStopChanged
      (
         this : in out TabPage.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      procedure add_TextChanged
      (
         this : in out TabPage.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      procedure remove_TextChanged
      (
         this : in out TabPage.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      function ToolTipText
      (
         this : in out TabPage.Kind
      )
      return NetFrameworkBase.BSTR;
      
      procedure ToolTipText
      (
         this : in out TabPage.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      function Visible
      (
         this : in out TabPage.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure Visible
      (
         this : in out TabPage.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      procedure add_VisibleChanged
      (
         this : in out TabPage.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      procedure remove_VisibleChanged
      (
         this : in out TabPage.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      function ToString
      (
         this : in out TabPage.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function Constructor return NetFrameworkBase.System.Windows.Forms.TabPage.Kind_Ptr;
      
      function Constructor
      (
         text : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Windows.Forms.TabPage.Kind_Ptr;
      
end;