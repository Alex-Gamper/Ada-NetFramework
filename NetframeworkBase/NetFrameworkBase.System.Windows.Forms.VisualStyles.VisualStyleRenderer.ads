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
limited with NetFrameworkBase.System.Drawing.IDeviceContext;
limited with NetFrameworkBase.System.Drawing.Rectangle;
limited with NetFrameworkBase.System.Windows.Forms.VisualStyles.VisualStyleElement;
limited with NetFrameworkBase.System.Drawing.Graphics;
limited with NetFrameworkBase.System.Drawing.Image;
limited with NetFrameworkBase.System.Windows.Forms.Control;
limited with NetFrameworkBase.System.Windows.Forms.TextFormatFlags;
limited with NetFrameworkBase.System.Windows.Forms.VisualStyles.BooleanProperty;
limited with NetFrameworkBase.System.Windows.Forms.VisualStyles.ColorProperty;
limited with NetFrameworkBase.System.Windows.Forms.VisualStyles.EnumProperty;
limited with NetFrameworkBase.System.Windows.Forms.VisualStyles.FilenameProperty;
limited with NetFrameworkBase.System.Windows.Forms.VisualStyles.FontProperty;
limited with NetFrameworkBase.System.Windows.Forms.VisualStyles.IntegerProperty;
limited with NetFrameworkBase.System.Windows.Forms.VisualStyles.ThemeSizeType;
limited with NetFrameworkBase.System.Windows.Forms.VisualStyles.PointProperty;
limited with NetFrameworkBase.System.Windows.Forms.VisualStyles.MarginProperty;
limited with NetFrameworkBase.System.Windows.Forms.VisualStyles.StringProperty;
limited with NetFrameworkBase.System.Drawing.Point;
limited with NetFrameworkBase.System.Windows.Forms.VisualStyles.HitTestOptions;
limited with NetFrameworkBase.System.Drawing.Region;
limited with NetFrameworkBase.System.Windows.Forms.VisualStyles.Edges;
limited with NetFrameworkBase.System.Windows.Forms.VisualStyles.EdgeStyle;
limited with NetFrameworkBase.System.Windows.Forms.VisualStyles.EdgeEffects;
limited with NetFrameworkBase.System.Windows.Forms.ImageList;
limited with NetFrameworkBase.System.Drawing.Color;
limited with NetFrameworkBase.System.Drawing.Font;
limited with NetFrameworkBase.System.Drawing.Size;
limited with NetFrameworkBase.System.Windows.Forms.Padding;
limited with NetFrameworkBase.System.Windows.Forms.VisualStyles.TextMetrics;
limited with NetFrameworkBase.System.Windows.Forms.VisualStyles.HitTestCode;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Windows.Forms.VisualStyles.VisualStyleRenderer is
   
   type Kind is new NetFrameworkBase.System.Object.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function IsSupported
      return NetFrameworkBase.Boolean;
      
      function GetBackgroundContentRectangle
      (
         this : in out VisualStyleRenderer.Kind;
         dc : NetFrameworkBase.System.Drawing.IDeviceContext.Kind_Ptr; 
         bounds : NetFrameworkBase.System.Drawing.Rectangle.Kind_Ptr
      )
      return NetFrameworkBase.System.Drawing.Rectangle.Kind_Ptr;
      
      function IsElementDefined
      (
         element : NetFrameworkBase.System.Windows.Forms.VisualStyles.VisualStyleElement.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      
      function Class
      (
         this : in out VisualStyleRenderer.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function Part
      (
         this : in out VisualStyleRenderer.Kind
      )
      return NetFrameworkBase.Int32;
      
      function State
      (
         this : in out VisualStyleRenderer.Kind
      )
      return NetFrameworkBase.Int32;
      
      function Handle
      (
         this : in out VisualStyleRenderer.Kind
      )
      return NetFrameworkBase.IntPtr;
      
      procedure SetParameters
      (
         this : in out VisualStyleRenderer.Kind;
         element : NetFrameworkBase.System.Windows.Forms.VisualStyles.VisualStyleElement.Kind_Ptr
      );
      
      procedure SetParameters
      (
         this : in out VisualStyleRenderer.Kind;
         className : NetFrameworkBase.BSTR; 
         part : NetFrameworkBase.Int32; 
         state : NetFrameworkBase.Int32
      );
      
      procedure DrawBackground
      (
         this : in out VisualStyleRenderer.Kind;
         dc : NetFrameworkBase.System.Drawing.IDeviceContext.Kind_Ptr; 
         bounds : NetFrameworkBase.System.Drawing.Rectangle.Kind_Ptr
      );
      
      procedure DrawBackground
      (
         this : in out VisualStyleRenderer.Kind;
         dc : NetFrameworkBase.System.Drawing.IDeviceContext.Kind_Ptr; 
         bounds : NetFrameworkBase.System.Drawing.Rectangle.Kind_Ptr; 
         clipRectangle : NetFrameworkBase.System.Drawing.Rectangle.Kind_Ptr
      );
      
      procedure DrawImage
      (
         this : in out VisualStyleRenderer.Kind;
         g : NetFrameworkBase.System.Drawing.Graphics.Kind_Ptr; 
         bounds : NetFrameworkBase.System.Drawing.Rectangle.Kind_Ptr; 
         image : NetFrameworkBase.System.Drawing.Image.Kind_Ptr
      );
      
      procedure DrawParentBackground
      (
         this : in out VisualStyleRenderer.Kind;
         dc : NetFrameworkBase.System.Drawing.IDeviceContext.Kind_Ptr; 
         bounds : NetFrameworkBase.System.Drawing.Rectangle.Kind_Ptr; 
         childControl : NetFrameworkBase.System.Windows.Forms.Control.Kind_Ptr
      );
      
      procedure DrawText
      (
         this : in out VisualStyleRenderer.Kind;
         dc : NetFrameworkBase.System.Drawing.IDeviceContext.Kind_Ptr; 
         bounds : NetFrameworkBase.System.Drawing.Rectangle.Kind_Ptr; 
         textToDraw : NetFrameworkBase.BSTR
      );
      
      procedure DrawText
      (
         this : in out VisualStyleRenderer.Kind;
         dc : NetFrameworkBase.System.Drawing.IDeviceContext.Kind_Ptr; 
         bounds : NetFrameworkBase.System.Drawing.Rectangle.Kind_Ptr; 
         textToDraw : NetFrameworkBase.BSTR; 
         drawDisabled : NetFrameworkBase.Boolean
      );
      
      procedure DrawText
      (
         this : in out VisualStyleRenderer.Kind;
         dc : NetFrameworkBase.System.Drawing.IDeviceContext.Kind_Ptr; 
         bounds : NetFrameworkBase.System.Drawing.Rectangle.Kind_Ptr; 
         textToDraw : NetFrameworkBase.BSTR; 
         drawDisabled : NetFrameworkBase.Boolean; 
         flags : NetFrameworkBase.System.Windows.Forms.TextFormatFlags.Kind
      );
      
      function GetBackgroundRegion
      (
         this : in out VisualStyleRenderer.Kind;
         dc : NetFrameworkBase.System.Drawing.IDeviceContext.Kind_Ptr; 
         bounds : NetFrameworkBase.System.Drawing.Rectangle.Kind_Ptr
      )
      return NetFrameworkBase.System.Drawing.Region.Kind_Ptr;
      
      function GetBoolean
      (
         this : in out VisualStyleRenderer.Kind;
         prop : NetFrameworkBase.System.Windows.Forms.VisualStyles.BooleanProperty.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function GetColor
      (
         this : in out VisualStyleRenderer.Kind;
         prop : NetFrameworkBase.System.Windows.Forms.VisualStyles.ColorProperty.Kind
      )
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function GetEnumValue
      (
         this : in out VisualStyleRenderer.Kind;
         prop : NetFrameworkBase.System.Windows.Forms.VisualStyles.EnumProperty.Kind
      )
      return NetFrameworkBase.Int32;
      
      function GetFilename
      (
         this : in out VisualStyleRenderer.Kind;
         prop : NetFrameworkBase.System.Windows.Forms.VisualStyles.FilenameProperty.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function GetFont
      (
         this : in out VisualStyleRenderer.Kind;
         dc : NetFrameworkBase.System.Drawing.IDeviceContext.Kind_Ptr; 
         prop : NetFrameworkBase.System.Windows.Forms.VisualStyles.FontProperty.Kind
      )
      return NetFrameworkBase.System.Drawing.Font.Kind_Ptr;
      
      function GetInteger
      (
         this : in out VisualStyleRenderer.Kind;
         prop : NetFrameworkBase.System.Windows.Forms.VisualStyles.IntegerProperty.Kind
      )
      return NetFrameworkBase.Int32;
      
      function GetPartSize
      (
         this : in out VisualStyleRenderer.Kind;
         dc : NetFrameworkBase.System.Drawing.IDeviceContext.Kind_Ptr; 
         type_x : NetFrameworkBase.System.Windows.Forms.VisualStyles.ThemeSizeType.Kind
      )
      return NetFrameworkBase.System.Drawing.Size.Kind_Ptr;
      
      function GetPartSize
      (
         this : in out VisualStyleRenderer.Kind;
         dc : NetFrameworkBase.System.Drawing.IDeviceContext.Kind_Ptr; 
         bounds : NetFrameworkBase.System.Drawing.Rectangle.Kind_Ptr; 
         type_x : NetFrameworkBase.System.Windows.Forms.VisualStyles.ThemeSizeType.Kind
      )
      return NetFrameworkBase.System.Drawing.Size.Kind_Ptr;
      
      function GetPoint
      (
         this : in out VisualStyleRenderer.Kind;
         prop : NetFrameworkBase.System.Windows.Forms.VisualStyles.PointProperty.Kind
      )
      return NetFrameworkBase.System.Drawing.Point.Kind_Ptr;
      
      function GetMargins
      (
         this : in out VisualStyleRenderer.Kind;
         dc : NetFrameworkBase.System.Drawing.IDeviceContext.Kind_Ptr; 
         prop : NetFrameworkBase.System.Windows.Forms.VisualStyles.MarginProperty.Kind
      )
      return NetFrameworkBase.System.Windows.Forms.Padding.Kind_Ptr;
      
      function GetString
      (
         this : in out VisualStyleRenderer.Kind;
         prop : NetFrameworkBase.System.Windows.Forms.VisualStyles.StringProperty.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function GetTextExtent
      (
         this : in out VisualStyleRenderer.Kind;
         dc : NetFrameworkBase.System.Drawing.IDeviceContext.Kind_Ptr; 
         textToDraw : NetFrameworkBase.BSTR; 
         flags : NetFrameworkBase.System.Windows.Forms.TextFormatFlags.Kind
      )
      return NetFrameworkBase.System.Drawing.Rectangle.Kind_Ptr;
      
      function GetTextExtent
      (
         this : in out VisualStyleRenderer.Kind;
         dc : NetFrameworkBase.System.Drawing.IDeviceContext.Kind_Ptr; 
         bounds : NetFrameworkBase.System.Drawing.Rectangle.Kind_Ptr; 
         textToDraw : NetFrameworkBase.BSTR; 
         flags : NetFrameworkBase.System.Windows.Forms.TextFormatFlags.Kind
      )
      return NetFrameworkBase.System.Drawing.Rectangle.Kind_Ptr;
      
      function GetTextMetrics
      (
         this : in out VisualStyleRenderer.Kind;
         dc : NetFrameworkBase.System.Drawing.IDeviceContext.Kind_Ptr
      )
      return NetFrameworkBase.System.Windows.Forms.VisualStyles.TextMetrics.Kind_Ptr;
      
      function HitTestBackground
      (
         this : in out VisualStyleRenderer.Kind;
         dc : NetFrameworkBase.System.Drawing.IDeviceContext.Kind_Ptr; 
         backgroundRectangle : NetFrameworkBase.System.Drawing.Rectangle.Kind_Ptr; 
         pt : NetFrameworkBase.System.Drawing.Point.Kind_Ptr; 
         options : NetFrameworkBase.System.Windows.Forms.VisualStyles.HitTestOptions.Kind
      )
      return NetFrameworkBase.System.Windows.Forms.VisualStyles.HitTestCode.Kind;
      
      function HitTestBackground
      (
         this : in out VisualStyleRenderer.Kind;
         g : NetFrameworkBase.System.Drawing.Graphics.Kind_Ptr; 
         backgroundRectangle : NetFrameworkBase.System.Drawing.Rectangle.Kind_Ptr; 
         region : NetFrameworkBase.System.Drawing.Region.Kind_Ptr; 
         pt : NetFrameworkBase.System.Drawing.Point.Kind_Ptr; 
         options : NetFrameworkBase.System.Windows.Forms.VisualStyles.HitTestOptions.Kind
      )
      return NetFrameworkBase.System.Windows.Forms.VisualStyles.HitTestCode.Kind;
      
      function HitTestBackground
      (
         this : in out VisualStyleRenderer.Kind;
         dc : NetFrameworkBase.System.Drawing.IDeviceContext.Kind_Ptr; 
         backgroundRectangle : NetFrameworkBase.System.Drawing.Rectangle.Kind_Ptr; 
         hRgn : NetFrameworkBase.IntPtr; 
         pt : NetFrameworkBase.System.Drawing.Point.Kind_Ptr; 
         options : NetFrameworkBase.System.Windows.Forms.VisualStyles.HitTestOptions.Kind
      )
      return NetFrameworkBase.System.Windows.Forms.VisualStyles.HitTestCode.Kind;
      
      function IsBackgroundPartiallyTransparent
      (
         this : in out VisualStyleRenderer.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function LastHResult
      (
         this : in out VisualStyleRenderer.Kind
      )
      return NetFrameworkBase.Int32;
      
      function DrawEdge
      (
         this : in out VisualStyleRenderer.Kind;
         dc : NetFrameworkBase.System.Drawing.IDeviceContext.Kind_Ptr; 
         bounds : NetFrameworkBase.System.Drawing.Rectangle.Kind_Ptr; 
         edges : NetFrameworkBase.System.Windows.Forms.VisualStyles.Edges.Kind; 
         style : NetFrameworkBase.System.Windows.Forms.VisualStyles.EdgeStyle.Kind; 
         effects : NetFrameworkBase.System.Windows.Forms.VisualStyles.EdgeEffects.Kind
      )
      return NetFrameworkBase.System.Drawing.Rectangle.Kind_Ptr;
      
      procedure DrawImage
      (
         this : in out VisualStyleRenderer.Kind;
         g : NetFrameworkBase.System.Drawing.Graphics.Kind_Ptr; 
         bounds : NetFrameworkBase.System.Drawing.Rectangle.Kind_Ptr; 
         imageList : NetFrameworkBase.System.Windows.Forms.ImageList.Kind_Ptr; 
         imageIndex : NetFrameworkBase.Int32
      );
      
      function GetBackgroundExtent
      (
         this : in out VisualStyleRenderer.Kind;
         dc : NetFrameworkBase.System.Drawing.IDeviceContext.Kind_Ptr; 
         contentBounds : NetFrameworkBase.System.Drawing.Rectangle.Kind_Ptr
      )
      return NetFrameworkBase.System.Drawing.Rectangle.Kind_Ptr;
      
      function Constructor
      (
         element : NetFrameworkBase.System.Windows.Forms.VisualStyles.VisualStyleElement.Kind_Ptr
      )
      return NetFrameworkBase.System.Windows.Forms.VisualStyles.VisualStyleRenderer.Kind_Ptr;
      
      function Constructor
      (
         className : NetFrameworkBase.BSTR;
         part : NetFrameworkBase.Int32;
         state : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.Windows.Forms.VisualStyles.VisualStyleRenderer.Kind_Ptr;
      
end;
