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
with NetFrameworkBase.System.Windows.Forms.ToolStripItemRenderEventArgs;
limited with NetFrameworkBase.System.Drawing.Color;
limited with NetFrameworkBase.System.Drawing.Font;
limited with NetFrameworkBase.System.Drawing.Rectangle;
limited with NetFrameworkBase.System.Windows.Forms.TextFormatFlags;
limited with NetFrameworkBase.System.Windows.Forms.ToolStripTextDirection;
limited with NetFrameworkBase.System.Drawing.Graphics;
limited with NetFrameworkBase.System.Windows.Forms.ToolStripItem;
limited with NetFrameworkBase.System.Drawing.ContentAlignment;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Windows.Forms.ToolStripItemTextRenderEventArgs is
   
   type Kind is new NetFrameworkBase.System.Windows.Forms.ToolStripItemRenderEventArgs.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function Text
      (
         this : in out ToolStripItemTextRenderEventArgs.Kind
      )
      return NetFrameworkBase.BSTR;
      
      procedure Text
      (
         this : in out ToolStripItemTextRenderEventArgs.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      function TextColor
      (
         this : in out ToolStripItemTextRenderEventArgs.Kind
      )
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      procedure TextColor
      (
         this : in out ToolStripItemTextRenderEventArgs.Kind;
         value : NetFrameworkBase.System.Drawing.Color.Kind_Ptr
      );
      
      function TextFont
      (
         this : in out ToolStripItemTextRenderEventArgs.Kind
      )
      return NetFrameworkBase.System.Drawing.Font.Kind_Ptr;
      
      procedure TextFont
      (
         this : in out ToolStripItemTextRenderEventArgs.Kind;
         value : NetFrameworkBase.System.Drawing.Font.Kind_Ptr
      );
      
      function TextRectangle
      (
         this : in out ToolStripItemTextRenderEventArgs.Kind
      )
      return NetFrameworkBase.System.Drawing.Rectangle.Kind_Ptr;
      
      procedure TextRectangle
      (
         this : in out ToolStripItemTextRenderEventArgs.Kind;
         value : NetFrameworkBase.System.Drawing.Rectangle.Kind_Ptr
      );
      
      function TextFormat
      (
         this : in out ToolStripItemTextRenderEventArgs.Kind
      )
      return NetFrameworkBase.System.Windows.Forms.TextFormatFlags.Kind;
      
      procedure TextFormat
      (
         this : in out ToolStripItemTextRenderEventArgs.Kind;
         value : NetFrameworkBase.System.Windows.Forms.TextFormatFlags.Kind
      );
      
      function TextDirection
      (
         this : in out ToolStripItemTextRenderEventArgs.Kind
      )
      return NetFrameworkBase.System.Windows.Forms.ToolStripTextDirection.Kind;
      
      procedure TextDirection
      (
         this : in out ToolStripItemTextRenderEventArgs.Kind;
         value : NetFrameworkBase.System.Windows.Forms.ToolStripTextDirection.Kind
      );
      
      function Constructor
      (
         g : NetFrameworkBase.System.Drawing.Graphics.Kind_Ptr;
         item : NetFrameworkBase.System.Windows.Forms.ToolStripItem.Kind_Ptr;
         text : NetFrameworkBase.BSTR;
         textRectangle : NetFrameworkBase.System.Drawing.Rectangle.Kind_Ptr;
         textColor : NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
         textFont : NetFrameworkBase.System.Drawing.Font.Kind_Ptr;
         format : NetFrameworkBase.System.Windows.Forms.TextFormatFlags.Kind
      )
      return NetFrameworkBase.System.Windows.Forms.ToolStripItemTextRenderEventArgs.Kind_Ptr;
      
      function Constructor
      (
         g : NetFrameworkBase.System.Drawing.Graphics.Kind_Ptr;
         item : NetFrameworkBase.System.Windows.Forms.ToolStripItem.Kind_Ptr;
         text : NetFrameworkBase.BSTR;
         textRectangle : NetFrameworkBase.System.Drawing.Rectangle.Kind_Ptr;
         textColor : NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
         textFont : NetFrameworkBase.System.Drawing.Font.Kind_Ptr;
         textAlign : NetFrameworkBase.System.Drawing.ContentAlignment.Kind
      )
      return NetFrameworkBase.System.Windows.Forms.ToolStripItemTextRenderEventArgs.Kind_Ptr;
      
end;
