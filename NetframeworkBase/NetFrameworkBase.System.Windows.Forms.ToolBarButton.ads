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
with NetFrameworkBase.System.ComponentModel.Component;
limited with NetFrameworkBase.System.Windows.Forms.Menu;
limited with NetFrameworkBase.System.Windows.Forms.ToolBarButtonStyle;
with NetFrameworkBase.System.Object;
limited with NetFrameworkBase.System.Windows.Forms.ToolBar;
limited with NetFrameworkBase.System.Drawing.Rectangle;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Windows.Forms.ToolBarButton is
   
   type Kind is new NetFrameworkBase.System.ComponentModel.Component.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function DropDownMenu
      (
         this : in out ToolBarButton.Kind
      )
      return NetFrameworkBase.System.Windows.Forms.Menu.Kind_Ptr;
      
      procedure DropDownMenu
      (
         this : in out ToolBarButton.Kind;
         value : NetFrameworkBase.System.Windows.Forms.Menu.Kind_Ptr
      );
      
      function Enabled
      (
         this : in out ToolBarButton.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure Enabled
      (
         this : in out ToolBarButton.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      function ImageIndex
      (
         this : in out ToolBarButton.Kind
      )
      return NetFrameworkBase.Int32;
      
      procedure ImageIndex
      (
         this : in out ToolBarButton.Kind;
         value : NetFrameworkBase.Int32
      );
      
      function ImageKey
      (
         this : in out ToolBarButton.Kind
      )
      return NetFrameworkBase.BSTR;
      
      procedure ImageKey
      (
         this : in out ToolBarButton.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      function Name
      (
         this : in out ToolBarButton.Kind
      )
      return NetFrameworkBase.BSTR;
      
      procedure Name
      (
         this : in out ToolBarButton.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      function Parent
      (
         this : in out ToolBarButton.Kind
      )
      return NetFrameworkBase.System.Windows.Forms.ToolBar.Kind_Ptr;
      
      function PartialPush
      (
         this : in out ToolBarButton.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure PartialPush
      (
         this : in out ToolBarButton.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      function Pushed
      (
         this : in out ToolBarButton.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure Pushed
      (
         this : in out ToolBarButton.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      function Rectangle
      (
         this : in out ToolBarButton.Kind
      )
      return NetFrameworkBase.System.Drawing.Rectangle.Kind_Ptr;
      
      function Style
      (
         this : in out ToolBarButton.Kind
      )
      return NetFrameworkBase.System.Windows.Forms.ToolBarButtonStyle.Kind;
      
      procedure Style
      (
         this : in out ToolBarButton.Kind;
         value : NetFrameworkBase.System.Windows.Forms.ToolBarButtonStyle.Kind
      );
      
      function Tag
      (
         this : in out ToolBarButton.Kind
      )
      return NetFrameworkBase.System.Object.Kind_Ptr;
      
      procedure Tag
      (
         this : in out ToolBarButton.Kind;
         value : NetFrameworkBase.System.Object.Kind_Ptr
      );
      
      function Text
      (
         this : in out ToolBarButton.Kind
      )
      return NetFrameworkBase.BSTR;
      
      procedure Text
      (
         this : in out ToolBarButton.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      function ToolTipText
      (
         this : in out ToolBarButton.Kind
      )
      return NetFrameworkBase.BSTR;
      
      procedure ToolTipText
      (
         this : in out ToolBarButton.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      function Visible
      (
         this : in out ToolBarButton.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure Visible
      (
         this : in out ToolBarButton.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      function ToString
      (
         this : in out ToolBarButton.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function Constructor return NetFrameworkBase.System.Windows.Forms.ToolBarButton.Kind_Ptr;
      
      function Constructor
      (
         text : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Windows.Forms.ToolBarButton.Kind_Ptr;
      
end;