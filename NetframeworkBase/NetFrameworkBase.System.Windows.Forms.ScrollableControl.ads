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
limited with NetFrameworkBase.System.Drawing.Size;
limited with NetFrameworkBase.System.Drawing.Point;
limited with NetFrameworkBase.System.Windows.Forms.ScrollEventHandler;
limited with NetFrameworkBase.System.Drawing.Rectangle;
limited with NetFrameworkBase.System.Windows.Forms.HScrollProperties;
limited with NetFrameworkBase.System.Windows.Forms.VScrollProperties;
limited with NetFrameworkBase.System.Windows.Forms.ScrollableControl.DockPaddingEdges;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Windows.Forms.ScrollableControl is
   
   type Kind is new NetFrameworkBase.System.Windows.Forms.Control.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function AutoScroll
      (
         this : in out ScrollableControl.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure AutoScroll
      (
         this : in out ScrollableControl.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      function DisplayRectangle
      (
         this : in out ScrollableControl.Kind
      )
      return NetFrameworkBase.System.Drawing.Rectangle.Kind_Ptr;
      
      function AutoScrollMargin
      (
         this : in out ScrollableControl.Kind
      )
      return NetFrameworkBase.System.Drawing.Size.Kind_Ptr;
      
      procedure AutoScrollMargin
      (
         this : in out ScrollableControl.Kind;
         value : NetFrameworkBase.System.Drawing.Size.Kind_Ptr
      );
      
      function AutoScrollPosition
      (
         this : in out ScrollableControl.Kind
      )
      return NetFrameworkBase.System.Drawing.Point.Kind_Ptr;
      
      procedure AutoScrollPosition
      (
         this : in out ScrollableControl.Kind;
         value : NetFrameworkBase.System.Drawing.Point.Kind_Ptr
      );
      
      function AutoScrollMinSize
      (
         this : in out ScrollableControl.Kind
      )
      return NetFrameworkBase.System.Drawing.Size.Kind_Ptr;
      
      procedure AutoScrollMinSize
      (
         this : in out ScrollableControl.Kind;
         value : NetFrameworkBase.System.Drawing.Size.Kind_Ptr
      );
      
      function HorizontalScroll
      (
         this : in out ScrollableControl.Kind
      )
      return NetFrameworkBase.System.Windows.Forms.HScrollProperties.Kind_Ptr;
      
      function VerticalScroll
      (
         this : in out ScrollableControl.Kind
      )
      return NetFrameworkBase.System.Windows.Forms.VScrollProperties.Kind_Ptr;
      
      function DockPadding
      (
         this : in out ScrollableControl.Kind
      )
      return NetFrameworkBase.System.Windows.Forms.ScrollableControl.DockPaddingEdges.Kind_Ptr;
      
      procedure ScrollControlIntoView
      (
         this : in out ScrollableControl.Kind;
         activeControl : NetFrameworkBase.System.Windows.Forms.Control.Kind_Ptr
      );
      
      procedure add_Scroll
      (
         this : in out ScrollableControl.Kind;
         value : NetFrameworkBase.System.Windows.Forms.ScrollEventHandler.Kind_Ptr
      );
      
      procedure remove_Scroll
      (
         this : in out ScrollableControl.Kind;
         value : NetFrameworkBase.System.Windows.Forms.ScrollEventHandler.Kind_Ptr
      );
      
      procedure SetAutoScrollMargin
      (
         this : in out ScrollableControl.Kind;
         x : NetFrameworkBase.Int32; 
         y : NetFrameworkBase.Int32
      );
      
      function Constructor return NetFrameworkBase.System.Windows.Forms.ScrollableControl.Kind_Ptr;
      
end;