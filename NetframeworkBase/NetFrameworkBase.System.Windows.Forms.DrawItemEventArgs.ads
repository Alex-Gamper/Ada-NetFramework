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
with NetFrameworkBase.System.EventArgs;
limited with NetFrameworkBase.System.Drawing.Graphics;
limited with NetFrameworkBase.System.Drawing.Font;
limited with NetFrameworkBase.System.Drawing.Rectangle;
limited with NetFrameworkBase.System.Windows.Forms.DrawItemState;
limited with NetFrameworkBase.System.Drawing.Color;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Windows.Forms.DrawItemEventArgs is
   
   type Kind is new NetFrameworkBase.System.EventArgs.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      procedure DrawBackground
      (
         this : in out DrawItemEventArgs.Kind
      );
      
      function Bounds
      (
         this : in out DrawItemEventArgs.Kind
      )
      return NetFrameworkBase.System.Drawing.Rectangle.Kind_Ptr;
      
      function Font
      (
         this : in out DrawItemEventArgs.Kind
      )
      return NetFrameworkBase.System.Drawing.Font.Kind_Ptr;
      
      function Graphics
      (
         this : in out DrawItemEventArgs.Kind
      )
      return NetFrameworkBase.System.Drawing.Graphics.Kind_Ptr;
      
      function Index
      (
         this : in out DrawItemEventArgs.Kind
      )
      return NetFrameworkBase.Int32;
      
      function State
      (
         this : in out DrawItemEventArgs.Kind
      )
      return NetFrameworkBase.System.Windows.Forms.DrawItemState.Kind;
      
      procedure DrawFocusRectangle
      (
         this : in out DrawItemEventArgs.Kind
      );
      
      function BackColor
      (
         this : in out DrawItemEventArgs.Kind
      )
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function ForeColor
      (
         this : in out DrawItemEventArgs.Kind
      )
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function Constructor
      (
         graphics : NetFrameworkBase.System.Drawing.Graphics.Kind_Ptr;
         font : NetFrameworkBase.System.Drawing.Font.Kind_Ptr;
         rect : NetFrameworkBase.System.Drawing.Rectangle.Kind_Ptr;
         index : NetFrameworkBase.Int32;
         state : NetFrameworkBase.System.Windows.Forms.DrawItemState.Kind
      )
      return NetFrameworkBase.System.Windows.Forms.DrawItemEventArgs.Kind_Ptr;
      
      function Constructor
      (
         graphics : NetFrameworkBase.System.Drawing.Graphics.Kind_Ptr;
         font : NetFrameworkBase.System.Drawing.Font.Kind_Ptr;
         rect : NetFrameworkBase.System.Drawing.Rectangle.Kind_Ptr;
         index : NetFrameworkBase.Int32;
         state : NetFrameworkBase.System.Windows.Forms.DrawItemState.Kind;
         foreColor : NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
         backColor : NetFrameworkBase.System.Drawing.Color.Kind_Ptr
      )
      return NetFrameworkBase.System.Windows.Forms.DrawItemEventArgs.Kind_Ptr;
      
end;