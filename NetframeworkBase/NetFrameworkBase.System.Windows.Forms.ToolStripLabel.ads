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
with NetFrameworkBase.System.Windows.Forms.ToolStripItem;
limited with NetFrameworkBase.System.Drawing.Color;
limited with NetFrameworkBase.System.Windows.Forms.LinkBehavior;
limited with NetFrameworkBase.System.Drawing.Image;
limited with NetFrameworkBase.System.EventHandler;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Windows.Forms.ToolStripLabel is
   
   type Kind is new NetFrameworkBase.System.Windows.Forms.ToolStripItem.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function CanSelect
      (
         this : in out ToolStripLabel.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function IsLink
      (
         this : in out ToolStripLabel.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure IsLink
      (
         this : in out ToolStripLabel.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      function ActiveLinkColor
      (
         this : in out ToolStripLabel.Kind
      )
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      procedure ActiveLinkColor
      (
         this : in out ToolStripLabel.Kind;
         value : NetFrameworkBase.System.Drawing.Color.Kind_Ptr
      );
      
      function LinkBehavior
      (
         this : in out ToolStripLabel.Kind
      )
      return NetFrameworkBase.System.Windows.Forms.LinkBehavior.Kind;
      
      procedure LinkBehavior
      (
         this : in out ToolStripLabel.Kind;
         value : NetFrameworkBase.System.Windows.Forms.LinkBehavior.Kind
      );
      
      function LinkColor
      (
         this : in out ToolStripLabel.Kind
      )
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      procedure LinkColor
      (
         this : in out ToolStripLabel.Kind;
         value : NetFrameworkBase.System.Drawing.Color.Kind_Ptr
      );
      
      function LinkVisited
      (
         this : in out ToolStripLabel.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure LinkVisited
      (
         this : in out ToolStripLabel.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      function VisitedLinkColor
      (
         this : in out ToolStripLabel.Kind
      )
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      procedure VisitedLinkColor
      (
         this : in out ToolStripLabel.Kind;
         value : NetFrameworkBase.System.Drawing.Color.Kind_Ptr
      );
      
      function Constructor return NetFrameworkBase.System.Windows.Forms.ToolStripLabel.Kind_Ptr;
      
      function Constructor
      (
         text : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Windows.Forms.ToolStripLabel.Kind_Ptr;
      
      function Constructor
      (
         image : NetFrameworkBase.System.Drawing.Image.Kind_Ptr
      )
      return NetFrameworkBase.System.Windows.Forms.ToolStripLabel.Kind_Ptr;
      
      function Constructor
      (
         text : NetFrameworkBase.BSTR;
         image : NetFrameworkBase.System.Drawing.Image.Kind_Ptr
      )
      return NetFrameworkBase.System.Windows.Forms.ToolStripLabel.Kind_Ptr;
      
      function Constructor
      (
         text : NetFrameworkBase.BSTR;
         image : NetFrameworkBase.System.Drawing.Image.Kind_Ptr;
         isLink : NetFrameworkBase.Boolean
      )
      return NetFrameworkBase.System.Windows.Forms.ToolStripLabel.Kind_Ptr;
      
      function Constructor
      (
         text : NetFrameworkBase.BSTR;
         image : NetFrameworkBase.System.Drawing.Image.Kind_Ptr;
         isLink : NetFrameworkBase.Boolean;
         onClick : NetFrameworkBase.System.EventHandler.Kind_Ptr
      )
      return NetFrameworkBase.System.Windows.Forms.ToolStripLabel.Kind_Ptr;
      
      function Constructor
      (
         text : NetFrameworkBase.BSTR;
         image : NetFrameworkBase.System.Drawing.Image.Kind_Ptr;
         isLink : NetFrameworkBase.Boolean;
         onClick : NetFrameworkBase.System.EventHandler.Kind_Ptr;
         name : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Windows.Forms.ToolStripLabel.Kind_Ptr;
      
end;
