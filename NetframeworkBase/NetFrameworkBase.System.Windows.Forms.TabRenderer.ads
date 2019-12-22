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
with NetFrameworkBase.System.Object;
limited with NetFrameworkBase.System.Drawing.Graphics;
limited with NetFrameworkBase.System.Drawing.Rectangle;
limited with NetFrameworkBase.System.Windows.Forms.VisualStyles.TabItemState;
limited with NetFrameworkBase.System.Drawing.Font;
limited with NetFrameworkBase.System.Windows.Forms.TextFormatFlags;
limited with NetFrameworkBase.System.Drawing.Image;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Windows.Forms.TabRenderer is
   
   type Kind is new NetFrameworkBase.System.Object.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function IsSupported
      return NetFrameworkBase.Boolean;
      
      procedure DrawTabItem
      (
         g : NetFrameworkBase.System.Drawing.Graphics.Kind_Ptr; 
         bounds : NetFrameworkBase.System.Drawing.Rectangle.Kind_Ptr; 
         state : NetFrameworkBase.System.Windows.Forms.VisualStyles.TabItemState.Kind
      )
      ;
      
      procedure DrawTabItem
      (
         g : NetFrameworkBase.System.Drawing.Graphics.Kind_Ptr; 
         bounds : NetFrameworkBase.System.Drawing.Rectangle.Kind_Ptr; 
         tabItemText : NetFrameworkBase.BSTR; 
         font : NetFrameworkBase.System.Drawing.Font.Kind_Ptr; 
         state : NetFrameworkBase.System.Windows.Forms.VisualStyles.TabItemState.Kind
      )
      ;
      
      procedure DrawTabPage
      (
         g : NetFrameworkBase.System.Drawing.Graphics.Kind_Ptr; 
         bounds : NetFrameworkBase.System.Drawing.Rectangle.Kind_Ptr
      )
      ;
      
      procedure DrawTabItem
      (
         g : NetFrameworkBase.System.Drawing.Graphics.Kind_Ptr; 
         bounds : NetFrameworkBase.System.Drawing.Rectangle.Kind_Ptr; 
         focused : NetFrameworkBase.Boolean; 
         state : NetFrameworkBase.System.Windows.Forms.VisualStyles.TabItemState.Kind
      )
      ;
      
      procedure DrawTabItem
      (
         g : NetFrameworkBase.System.Drawing.Graphics.Kind_Ptr; 
         bounds : NetFrameworkBase.System.Drawing.Rectangle.Kind_Ptr; 
         tabItemText : NetFrameworkBase.BSTR; 
         font : NetFrameworkBase.System.Drawing.Font.Kind_Ptr; 
         focused : NetFrameworkBase.Boolean; 
         state : NetFrameworkBase.System.Windows.Forms.VisualStyles.TabItemState.Kind
      )
      ;
      
      procedure DrawTabItem
      (
         g : NetFrameworkBase.System.Drawing.Graphics.Kind_Ptr; 
         bounds : NetFrameworkBase.System.Drawing.Rectangle.Kind_Ptr; 
         tabItemText : NetFrameworkBase.BSTR; 
         font : NetFrameworkBase.System.Drawing.Font.Kind_Ptr; 
         flags : NetFrameworkBase.System.Windows.Forms.TextFormatFlags.Kind; 
         focused : NetFrameworkBase.Boolean; 
         state : NetFrameworkBase.System.Windows.Forms.VisualStyles.TabItemState.Kind
      )
      ;
      
      procedure DrawTabItem
      (
         g : NetFrameworkBase.System.Drawing.Graphics.Kind_Ptr; 
         bounds : NetFrameworkBase.System.Drawing.Rectangle.Kind_Ptr; 
         image : NetFrameworkBase.System.Drawing.Image.Kind_Ptr; 
         imageRectangle : NetFrameworkBase.System.Drawing.Rectangle.Kind_Ptr; 
         focused : NetFrameworkBase.Boolean; 
         state : NetFrameworkBase.System.Windows.Forms.VisualStyles.TabItemState.Kind
      )
      ;
      
      procedure DrawTabItem
      (
         g : NetFrameworkBase.System.Drawing.Graphics.Kind_Ptr; 
         bounds : NetFrameworkBase.System.Drawing.Rectangle.Kind_Ptr; 
         tabItemText : NetFrameworkBase.BSTR; 
         font : NetFrameworkBase.System.Drawing.Font.Kind_Ptr; 
         image : NetFrameworkBase.System.Drawing.Image.Kind_Ptr; 
         imageRectangle : NetFrameworkBase.System.Drawing.Rectangle.Kind_Ptr; 
         focused : NetFrameworkBase.Boolean; 
         state : NetFrameworkBase.System.Windows.Forms.VisualStyles.TabItemState.Kind
      )
      ;
      
      procedure DrawTabItem
      (
         g : NetFrameworkBase.System.Drawing.Graphics.Kind_Ptr; 
         bounds : NetFrameworkBase.System.Drawing.Rectangle.Kind_Ptr; 
         tabItemText : NetFrameworkBase.BSTR; 
         font : NetFrameworkBase.System.Drawing.Font.Kind_Ptr; 
         flags : NetFrameworkBase.System.Windows.Forms.TextFormatFlags.Kind; 
         image : NetFrameworkBase.System.Drawing.Image.Kind_Ptr; 
         imageRectangle : NetFrameworkBase.System.Drawing.Rectangle.Kind_Ptr; 
         focused : NetFrameworkBase.Boolean; 
         state : NetFrameworkBase.System.Windows.Forms.VisualStyles.TabItemState.Kind
      )
      ;
      
end;
