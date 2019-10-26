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
limited with NetFrameworkBase.System.Reflection.Assembly;
limited with NetFrameworkBase.System.Char;
limited with NetFrameworkBase.System.Globalization.CompareOptions;
limited with NetFrameworkBase.System.Globalization.SortKey;
limited with NetFrameworkBase.System.Globalization.SortVersion;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Globalization.CompareInfo is
   
   type Kind is new NetFrameworkBase.System.Object.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function GetCompareInfo
      (
         culture : NetFrameworkBase.Int32;
         assembly : NetFrameworkBase.System.Reflection.Assembly.Kind_Ptr
      )
      return NetFrameworkBase.System.Globalization.CompareInfo.Kind_Ptr;
      
      function GetCompareInfo
      (
         culture : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.Globalization.CompareInfo.Kind_Ptr;
      
      function GetCompareInfo
      (
         name : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Globalization.CompareInfo.Kind_Ptr;
      
      function IsSortable
      (
         ch : NetFrameworkBase.System.Char.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      
      function IsSortable
      (
         text : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.Boolean;
      
      function Compare
      (
         this : in out CompareInfo.Kind;
         string1 : NetFrameworkBase.BSTR;
         string2 : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.Int32;
      
      function Compare
      (
         this : in out CompareInfo.Kind;
         string1 : NetFrameworkBase.BSTR;
         string2 : NetFrameworkBase.BSTR;
         options : NetFrameworkBase.System.Globalization.CompareOptions.Kind
      )
      return NetFrameworkBase.Int32;
      
      function Compare
      (
         this : in out CompareInfo.Kind;
         string1 : NetFrameworkBase.BSTR;
         offset1 : NetFrameworkBase.Int32;
         length1 : NetFrameworkBase.Int32;
         string2 : NetFrameworkBase.BSTR;
         offset2 : NetFrameworkBase.Int32;
         length2 : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.Int32;
      
      function Compare
      (
         this : in out CompareInfo.Kind;
         string1 : NetFrameworkBase.BSTR;
         offset1 : NetFrameworkBase.Int32;
         string2 : NetFrameworkBase.BSTR;
         offset2 : NetFrameworkBase.Int32;
         options : NetFrameworkBase.System.Globalization.CompareOptions.Kind
      )
      return NetFrameworkBase.Int32;
      
      function Compare
      (
         this : in out CompareInfo.Kind;
         string1 : NetFrameworkBase.BSTR;
         offset1 : NetFrameworkBase.Int32;
         string2 : NetFrameworkBase.BSTR;
         offset2 : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.Int32;
      
      function IsPrefix
      (
         this : in out CompareInfo.Kind;
         source : NetFrameworkBase.BSTR;
         prefix : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.Boolean;
      
      function IsSuffix
      (
         this : in out CompareInfo.Kind;
         source : NetFrameworkBase.BSTR;
         suffix : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.Boolean;
      
      function IndexOf
      (
         this : in out CompareInfo.Kind;
         source : NetFrameworkBase.BSTR;
         value : NetFrameworkBase.System.Char.Kind_Ptr
      )
      return NetFrameworkBase.Int32;
      
      function IndexOf
      (
         this : in out CompareInfo.Kind;
         source : NetFrameworkBase.BSTR;
         value : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.Int32;
      
      function IndexOf
      (
         this : in out CompareInfo.Kind;
         source : NetFrameworkBase.BSTR;
         value : NetFrameworkBase.System.Char.Kind_Ptr;
         options : NetFrameworkBase.System.Globalization.CompareOptions.Kind
      )
      return NetFrameworkBase.Int32;
      
      function IndexOf
      (
         this : in out CompareInfo.Kind;
         source : NetFrameworkBase.BSTR;
         value : NetFrameworkBase.BSTR;
         options : NetFrameworkBase.System.Globalization.CompareOptions.Kind
      )
      return NetFrameworkBase.Int32;
      
      function IndexOf
      (
         this : in out CompareInfo.Kind;
         source : NetFrameworkBase.BSTR;
         value : NetFrameworkBase.System.Char.Kind_Ptr;
         startIndex : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.Int32;
      
      function IndexOf
      (
         this : in out CompareInfo.Kind;
         source : NetFrameworkBase.BSTR;
         value : NetFrameworkBase.BSTR;
         startIndex : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.Int32;
      
      function IndexOf
      (
         this : in out CompareInfo.Kind;
         source : NetFrameworkBase.BSTR;
         value : NetFrameworkBase.System.Char.Kind_Ptr;
         startIndex : NetFrameworkBase.Int32;
         options : NetFrameworkBase.System.Globalization.CompareOptions.Kind
      )
      return NetFrameworkBase.Int32;
      
      function IndexOf
      (
         this : in out CompareInfo.Kind;
         source : NetFrameworkBase.BSTR;
         value : NetFrameworkBase.BSTR;
         startIndex : NetFrameworkBase.Int32;
         options : NetFrameworkBase.System.Globalization.CompareOptions.Kind
      )
      return NetFrameworkBase.Int32;
      
      function IndexOf
      (
         this : in out CompareInfo.Kind;
         source : NetFrameworkBase.BSTR;
         value : NetFrameworkBase.System.Char.Kind_Ptr;
         startIndex : NetFrameworkBase.Int32;
         count : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.Int32;
      
      function IndexOf
      (
         this : in out CompareInfo.Kind;
         source : NetFrameworkBase.BSTR;
         value : NetFrameworkBase.BSTR;
         startIndex : NetFrameworkBase.Int32;
         count : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.Int32;
      
      function IndexOf
      (
         this : in out CompareInfo.Kind;
         source : NetFrameworkBase.BSTR;
         value : NetFrameworkBase.System.Char.Kind_Ptr;
         startIndex : NetFrameworkBase.Int32;
         count : NetFrameworkBase.Int32;
         options : NetFrameworkBase.System.Globalization.CompareOptions.Kind
      )
      return NetFrameworkBase.Int32;
      
      function IndexOf
      (
         this : in out CompareInfo.Kind;
         source : NetFrameworkBase.BSTR;
         value : NetFrameworkBase.BSTR;
         startIndex : NetFrameworkBase.Int32;
         count : NetFrameworkBase.Int32;
         options : NetFrameworkBase.System.Globalization.CompareOptions.Kind
      )
      return NetFrameworkBase.Int32;
      
      function LastIndexOf
      (
         this : in out CompareInfo.Kind;
         source : NetFrameworkBase.BSTR;
         value : NetFrameworkBase.System.Char.Kind_Ptr
      )
      return NetFrameworkBase.Int32;
      
      function LastIndexOf
      (
         this : in out CompareInfo.Kind;
         source : NetFrameworkBase.BSTR;
         value : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.Int32;
      
      function LastIndexOf
      (
         this : in out CompareInfo.Kind;
         source : NetFrameworkBase.BSTR;
         value : NetFrameworkBase.System.Char.Kind_Ptr;
         options : NetFrameworkBase.System.Globalization.CompareOptions.Kind
      )
      return NetFrameworkBase.Int32;
      
      function LastIndexOf
      (
         this : in out CompareInfo.Kind;
         source : NetFrameworkBase.BSTR;
         value : NetFrameworkBase.BSTR;
         options : NetFrameworkBase.System.Globalization.CompareOptions.Kind
      )
      return NetFrameworkBase.Int32;
      
      function LastIndexOf
      (
         this : in out CompareInfo.Kind;
         source : NetFrameworkBase.BSTR;
         value : NetFrameworkBase.System.Char.Kind_Ptr;
         startIndex : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.Int32;
      
      function LastIndexOf
      (
         this : in out CompareInfo.Kind;
         source : NetFrameworkBase.BSTR;
         value : NetFrameworkBase.BSTR;
         startIndex : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.Int32;
      
      function LastIndexOf
      (
         this : in out CompareInfo.Kind;
         source : NetFrameworkBase.BSTR;
         value : NetFrameworkBase.System.Char.Kind_Ptr;
         startIndex : NetFrameworkBase.Int32;
         options : NetFrameworkBase.System.Globalization.CompareOptions.Kind
      )
      return NetFrameworkBase.Int32;
      
      function LastIndexOf
      (
         this : in out CompareInfo.Kind;
         source : NetFrameworkBase.BSTR;
         value : NetFrameworkBase.BSTR;
         startIndex : NetFrameworkBase.Int32;
         options : NetFrameworkBase.System.Globalization.CompareOptions.Kind
      )
      return NetFrameworkBase.Int32;
      
      function LastIndexOf
      (
         this : in out CompareInfo.Kind;
         source : NetFrameworkBase.BSTR;
         value : NetFrameworkBase.System.Char.Kind_Ptr;
         startIndex : NetFrameworkBase.Int32;
         count : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.Int32;
      
      function LastIndexOf
      (
         this : in out CompareInfo.Kind;
         source : NetFrameworkBase.BSTR;
         value : NetFrameworkBase.BSTR;
         startIndex : NetFrameworkBase.Int32;
         count : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.Int32;
      
      function LastIndexOf
      (
         this : in out CompareInfo.Kind;
         source : NetFrameworkBase.BSTR;
         value : NetFrameworkBase.System.Char.Kind_Ptr;
         startIndex : NetFrameworkBase.Int32;
         count : NetFrameworkBase.Int32;
         options : NetFrameworkBase.System.Globalization.CompareOptions.Kind
      )
      return NetFrameworkBase.Int32;
      
      function LastIndexOf
      (
         this : in out CompareInfo.Kind;
         source : NetFrameworkBase.BSTR;
         value : NetFrameworkBase.BSTR;
         startIndex : NetFrameworkBase.Int32;
         count : NetFrameworkBase.Int32;
         options : NetFrameworkBase.System.Globalization.CompareOptions.Kind
      )
      return NetFrameworkBase.Int32;
      
      function GetSortKey
      (
         this : in out CompareInfo.Kind;
         source : NetFrameworkBase.BSTR;
         options : NetFrameworkBase.System.Globalization.CompareOptions.Kind
      )
      return NetFrameworkBase.System.Globalization.SortKey.Kind_Ptr;
      
      function GetSortKey
      (
         this : in out CompareInfo.Kind;
         source : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Globalization.SortKey.Kind_Ptr;
      
      function Equals
      (
         this : in out CompareInfo.Kind;
         value : NetFrameworkBase.System.Object.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      
      function GetHashCode
      (
         this : in out CompareInfo.Kind
      )
      return NetFrameworkBase.Int32;
      
      function GetHashCode
      (
         this : in out CompareInfo.Kind;
         source : NetFrameworkBase.BSTR;
         options : NetFrameworkBase.System.Globalization.CompareOptions.Kind
      )
      return NetFrameworkBase.Int32;
      
      function LCID
      (
         this : in out CompareInfo.Kind
      )
      return NetFrameworkBase.Int32;
      
      function Version
      (
         this : in out CompareInfo.Kind
      )
      return NetFrameworkBase.System.Globalization.SortVersion.Kind_Ptr;
      
      function GetCompareInfo
      (
         name : NetFrameworkBase.BSTR;
         assembly : NetFrameworkBase.System.Reflection.Assembly.Kind_Ptr
      )
      return NetFrameworkBase.System.Globalization.CompareInfo.Kind_Ptr;
      
      function Name
      (
         this : in out CompareInfo.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function Compare
      (
         this : in out CompareInfo.Kind;
         string1 : NetFrameworkBase.BSTR;
         offset1 : NetFrameworkBase.Int32;
         length1 : NetFrameworkBase.Int32;
         string2 : NetFrameworkBase.BSTR;
         offset2 : NetFrameworkBase.Int32;
         length2 : NetFrameworkBase.Int32;
         options : NetFrameworkBase.System.Globalization.CompareOptions.Kind
      )
      return NetFrameworkBase.Int32;
      
      function IsPrefix
      (
         this : in out CompareInfo.Kind;
         source : NetFrameworkBase.BSTR;
         prefix : NetFrameworkBase.BSTR;
         options : NetFrameworkBase.System.Globalization.CompareOptions.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function IsSuffix
      (
         this : in out CompareInfo.Kind;
         source : NetFrameworkBase.BSTR;
         suffix : NetFrameworkBase.BSTR;
         options : NetFrameworkBase.System.Globalization.CompareOptions.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function ToString
      (
         this : in out CompareInfo.Kind
      )
      return NetFrameworkBase.BSTR;
      
end;