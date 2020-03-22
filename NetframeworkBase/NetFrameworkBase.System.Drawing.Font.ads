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
with NetFrameworkBase.System.MarshalByRefObject;
with NetFrameworkBase.System.Object;
limited with NetFrameworkBase.System.Drawing.Graphics;
limited with NetFrameworkBase.System.Drawing.FontStyle;
limited with NetFrameworkBase.System.Drawing.FontFamily;
limited with NetFrameworkBase.System.Drawing.GraphicsUnit;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Drawing.Font is
   
   type Kind is new NetFrameworkBase.System.MarshalByRefObject.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function FromHfont
      (
         hfont : NetFrameworkBase.IntPtr
      )
      return NetFrameworkBase.System.Drawing.Font.Kind_Ptr;
      
      function FontFamily
      (
         this : in out Font.Kind
      )
      return NetFrameworkBase.System.Drawing.FontFamily.Kind_Ptr;
      
      function GdiCharSet
      (
         this : in out Font.Kind
      )
      return NetFrameworkBase.Byte;
      
      function GdiVerticalFont
      (
         this : in out Font.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function Italic
      (
         this : in out Font.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function OriginalFontName
      (
         this : in out Font.Kind
      )
      return NetFrameworkBase.BSTR;
      
      procedure ToLogFont
      (
         this : in out Font.Kind;
         logFont : NetFrameworkBase.System.Object.Kind_Ptr
      );
      
      procedure ToLogFont
      (
         this : in out Font.Kind;
         logFont : NetFrameworkBase.System.Object.Kind_Ptr; 
         graphics : NetFrameworkBase.System.Drawing.Graphics.Kind_Ptr
      );
      
      function ToHfont
      (
         this : in out Font.Kind
      )
      return NetFrameworkBase.IntPtr;
      
      function Style
      (
         this : in out Font.Kind
      )
      return NetFrameworkBase.System.Drawing.FontStyle.Kind;
      
      function Size
      (
         this : in out Font.Kind
      )
      return NetFrameworkBase.Single;
      
      function SizeInPoints
      (
         this : in out Font.Kind
      )
      return NetFrameworkBase.Single;
      
      function Unit
      (
         this : in out Font.Kind
      )
      return NetFrameworkBase.System.Drawing.GraphicsUnit.Kind;
      
      function Height
      (
         this : in out Font.Kind
      )
      return NetFrameworkBase.Int32;
      
      function FromLogFont
      (
         lf : NetFrameworkBase.System.Object.Kind_Ptr; 
         hdc : NetFrameworkBase.IntPtr
      )
      return NetFrameworkBase.System.Drawing.Font.Kind_Ptr;
      
      function FromLogFont
      (
         lf : NetFrameworkBase.System.Object.Kind_Ptr
      )
      return NetFrameworkBase.System.Drawing.Font.Kind_Ptr;
      
      function FromHdc
      (
         hdc : NetFrameworkBase.IntPtr
      )
      return NetFrameworkBase.System.Drawing.Font.Kind_Ptr;
      
      function Clone
      (
         this : in out Font.Kind
      )
      return NetFrameworkBase.System.Object.Kind_Ptr;
      
      procedure Dispose
      (
         this : in out Font.Kind
      );
      
      function Equals
      (
         this : in out Font.Kind;
         obj : NetFrameworkBase.System.Object.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      
      function GetHashCode
      (
         this : in out Font.Kind
      )
      return NetFrameworkBase.Int32;
      
      function Bold
      (
         this : in out Font.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function Name
      (
         this : in out Font.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function Strikeout
      (
         this : in out Font.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function Underline
      (
         this : in out Font.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function ToString
      (
         this : in out Font.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function GetHeight
      (
         this : in out Font.Kind;
         graphics : NetFrameworkBase.System.Drawing.Graphics.Kind_Ptr
      )
      return NetFrameworkBase.Single;
      
      function GetHeight
      (
         this : in out Font.Kind
      )
      return NetFrameworkBase.Single;
      
      function GetHeight
      (
         this : in out Font.Kind;
         dpi : NetFrameworkBase.Single
      )
      return NetFrameworkBase.Single;
      
      function IsSystemFont
      (
         this : in out Font.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function SystemFontName
      (
         this : in out Font.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function Constructor
      (
         prototype : NetFrameworkBase.System.Drawing.Font.Kind_Ptr;
         newStyle : NetFrameworkBase.System.Drawing.FontStyle.Kind
      )
      return NetFrameworkBase.System.Drawing.Font.Kind_Ptr;
      
      function Constructor
      (
         family : NetFrameworkBase.System.Drawing.FontFamily.Kind_Ptr;
         emSize : NetFrameworkBase.Single;
         style : NetFrameworkBase.System.Drawing.FontStyle.Kind;
         unit : NetFrameworkBase.System.Drawing.GraphicsUnit.Kind
      )
      return NetFrameworkBase.System.Drawing.Font.Kind_Ptr;
      
      function Constructor
      (
         family : NetFrameworkBase.System.Drawing.FontFamily.Kind_Ptr;
         emSize : NetFrameworkBase.Single;
         style : NetFrameworkBase.System.Drawing.FontStyle.Kind;
         unit : NetFrameworkBase.System.Drawing.GraphicsUnit.Kind;
         gdiCharSet : NetFrameworkBase.Byte
      )
      return NetFrameworkBase.System.Drawing.Font.Kind_Ptr;
      
      function Constructor
      (
         family : NetFrameworkBase.System.Drawing.FontFamily.Kind_Ptr;
         emSize : NetFrameworkBase.Single;
         style : NetFrameworkBase.System.Drawing.FontStyle.Kind;
         unit : NetFrameworkBase.System.Drawing.GraphicsUnit.Kind;
         gdiCharSet : NetFrameworkBase.Byte;
         gdiVerticalFont : NetFrameworkBase.Boolean
      )
      return NetFrameworkBase.System.Drawing.Font.Kind_Ptr;
      
      function Constructor
      (
         familyName : NetFrameworkBase.BSTR;
         emSize : NetFrameworkBase.Single;
         style : NetFrameworkBase.System.Drawing.FontStyle.Kind;
         unit : NetFrameworkBase.System.Drawing.GraphicsUnit.Kind;
         gdiCharSet : NetFrameworkBase.Byte
      )
      return NetFrameworkBase.System.Drawing.Font.Kind_Ptr;
      
      function Constructor
      (
         familyName : NetFrameworkBase.BSTR;
         emSize : NetFrameworkBase.Single;
         style : NetFrameworkBase.System.Drawing.FontStyle.Kind;
         unit : NetFrameworkBase.System.Drawing.GraphicsUnit.Kind;
         gdiCharSet : NetFrameworkBase.Byte;
         gdiVerticalFont : NetFrameworkBase.Boolean
      )
      return NetFrameworkBase.System.Drawing.Font.Kind_Ptr;
      
      function Constructor
      (
         family : NetFrameworkBase.System.Drawing.FontFamily.Kind_Ptr;
         emSize : NetFrameworkBase.Single;
         style : NetFrameworkBase.System.Drawing.FontStyle.Kind
      )
      return NetFrameworkBase.System.Drawing.Font.Kind_Ptr;
      
      function Constructor
      (
         family : NetFrameworkBase.System.Drawing.FontFamily.Kind_Ptr;
         emSize : NetFrameworkBase.Single;
         unit : NetFrameworkBase.System.Drawing.GraphicsUnit.Kind
      )
      return NetFrameworkBase.System.Drawing.Font.Kind_Ptr;
      
      function Constructor
      (
         family : NetFrameworkBase.System.Drawing.FontFamily.Kind_Ptr;
         emSize : NetFrameworkBase.Single
      )
      return NetFrameworkBase.System.Drawing.Font.Kind_Ptr;
      
      function Constructor
      (
         familyName : NetFrameworkBase.BSTR;
         emSize : NetFrameworkBase.Single;
         style : NetFrameworkBase.System.Drawing.FontStyle.Kind;
         unit : NetFrameworkBase.System.Drawing.GraphicsUnit.Kind
      )
      return NetFrameworkBase.System.Drawing.Font.Kind_Ptr;
      
      function Constructor
      (
         familyName : NetFrameworkBase.BSTR;
         emSize : NetFrameworkBase.Single;
         style : NetFrameworkBase.System.Drawing.FontStyle.Kind
      )
      return NetFrameworkBase.System.Drawing.Font.Kind_Ptr;
      
      function Constructor
      (
         familyName : NetFrameworkBase.BSTR;
         emSize : NetFrameworkBase.Single;
         unit : NetFrameworkBase.System.Drawing.GraphicsUnit.Kind
      )
      return NetFrameworkBase.System.Drawing.Font.Kind_Ptr;
      
      function Constructor
      (
         familyName : NetFrameworkBase.BSTR;
         emSize : NetFrameworkBase.Single
      )
      return NetFrameworkBase.System.Drawing.Font.Kind_Ptr;
      
end;