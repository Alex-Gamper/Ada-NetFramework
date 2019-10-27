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
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Globalization.TextInfo is
   
   type Kind is new NetFrameworkBase.System.Object.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function ANSICodePage
      (
         this : in out TextInfo.Kind
      )
      return NetFrameworkBase.Int32;
      
      function OEMCodePage
      (
         this : in out TextInfo.Kind
      )
      return NetFrameworkBase.Int32;
      
      function MacCodePage
      (
         this : in out TextInfo.Kind
      )
      return NetFrameworkBase.Int32;
      
      function EBCDICCodePage
      (
         this : in out TextInfo.Kind
      )
      return NetFrameworkBase.Int32;
      
      function LCID
      (
         this : in out TextInfo.Kind
      )
      return NetFrameworkBase.Int32;
      
      function CultureName
      (
         this : in out TextInfo.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function IsReadOnly
      (
         this : in out TextInfo.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function Clone
      (
         this : in out TextInfo.Kind
      )
      return NetFrameworkBase.System.Object.Kind_Ptr;
      
      function ReadOnly
      (
         textInfo : NetFrameworkBase.System.Globalization.TextInfo.Kind_Ptr
      )
      return NetFrameworkBase.System.Globalization.TextInfo.Kind_Ptr;
      
      function ListSeparator
      (
         this : in out TextInfo.Kind
      )
      return NetFrameworkBase.BSTR;
      
      procedure ListSeparator
      (
         this : in out TextInfo.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      function ToLower
      (
         this : in out TextInfo.Kind;
         c : NetFrameworkBase.Char
      )
      return NetFrameworkBase.Char;
      
      function ToLower
      (
         this : in out TextInfo.Kind;
         str : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.BSTR;
      
      function ToUpper
      (
         this : in out TextInfo.Kind;
         c : NetFrameworkBase.Char
      )
      return NetFrameworkBase.Char;
      
      function ToUpper
      (
         this : in out TextInfo.Kind;
         str : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.BSTR;
      
      function Equals
      (
         this : in out TextInfo.Kind;
         obj : NetFrameworkBase.System.Object.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      
      function GetHashCode
      (
         this : in out TextInfo.Kind
      )
      return NetFrameworkBase.Int32;
      
      function ToTitleCase
      (
         this : in out TextInfo.Kind;
         str : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.BSTR;
      
      function IsRightToLeft
      (
         this : in out TextInfo.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function ToString
      (
         this : in out TextInfo.Kind
      )
      return NetFrameworkBase.BSTR;
      
end;
