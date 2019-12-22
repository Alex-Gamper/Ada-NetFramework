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
limited with NetFrameworkBase.System.Drawing.FontStyle;
with NetFrameworkBase.System.Object;
limited with NetFrameworkBase.System.Drawing.Graphics;
limited with NetFrameworkBase.System.Drawing.Text.FontCollection;
limited with NetFrameworkBase.System.Drawing.Text.GenericFontFamilies;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Drawing.FontFamily is
   
   type Kind is new NetFrameworkBase.System.MarshalByRefObject.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function Name
      (
         this : in out FontFamily.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function IsStyleAvailable
      (
         this : in out FontFamily.Kind;
         style : NetFrameworkBase.System.Drawing.FontStyle.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function GetEmHeight
      (
         this : in out FontFamily.Kind;
         style : NetFrameworkBase.System.Drawing.FontStyle.Kind
      )
      return NetFrameworkBase.Int32;
      
      function GetLineSpacing
      (
         this : in out FontFamily.Kind;
         style : NetFrameworkBase.System.Drawing.FontStyle.Kind
      )
      return NetFrameworkBase.Int32;
      
      function Equals
      (
         this : in out FontFamily.Kind;
         obj : NetFrameworkBase.System.Object.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      
      function GetHashCode
      (
         this : in out FontFamily.Kind
      )
      return NetFrameworkBase.Int32;
      
      procedure Dispose
      (
         this : in out FontFamily.Kind
      );
      
      function Families
      return NetFrameworkBase.System.Drawing.FontFamily.Kind_Array;
      
      function GenericSansSerif
      return NetFrameworkBase.System.Drawing.FontFamily.Kind_Ptr;
      
      function GenericSerif
      return NetFrameworkBase.System.Drawing.FontFamily.Kind_Ptr;
      
      function GenericMonospace
      return NetFrameworkBase.System.Drawing.FontFamily.Kind_Ptr;
      
      function GetFamilies
      (
         graphics : NetFrameworkBase.System.Drawing.Graphics.Kind_Ptr
      )
      return NetFrameworkBase.System.Drawing.FontFamily.Kind_Array;
      
      function ToString
      (
         this : in out FontFamily.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function GetName
      (
         this : in out FontFamily.Kind;
         language : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.BSTR;
      
      function GetCellAscent
      (
         this : in out FontFamily.Kind;
         style : NetFrameworkBase.System.Drawing.FontStyle.Kind
      )
      return NetFrameworkBase.Int32;
      
      function GetCellDescent
      (
         this : in out FontFamily.Kind;
         style : NetFrameworkBase.System.Drawing.FontStyle.Kind
      )
      return NetFrameworkBase.Int32;
      
      function Constructor
      (
         name : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Drawing.FontFamily.Kind_Ptr;
      
      function Constructor
      (
         name : NetFrameworkBase.BSTR;
         fontCollection : NetFrameworkBase.System.Drawing.Text.FontCollection.Kind_Ptr
      )
      return NetFrameworkBase.System.Drawing.FontFamily.Kind_Ptr;
      
      function Constructor
      (
         genericFamily : NetFrameworkBase.System.Drawing.Text.GenericFontFamilies.Kind
      )
      return NetFrameworkBase.System.Drawing.FontFamily.Kind_Ptr;
      
end;
