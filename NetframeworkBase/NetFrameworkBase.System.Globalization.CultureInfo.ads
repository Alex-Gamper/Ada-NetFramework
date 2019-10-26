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
limited with NetFrameworkBase.System.Globalization.CultureTypes;
limited with NetFrameworkBase.System.Type_x;
limited with NetFrameworkBase.System.Globalization.NumberFormatInfo;
limited with NetFrameworkBase.System.Globalization.DateTimeFormatInfo;
limited with NetFrameworkBase.System.Globalization.CompareInfo;
limited with NetFrameworkBase.System.Globalization.TextInfo;
limited with NetFrameworkBase.System.Globalization.Calendar;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Globalization.CultureInfo is
   
   type Kind is new NetFrameworkBase.System.Object.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function CreateSpecificCulture
      (
         name : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Globalization.CultureInfo.Kind_Ptr;
      
      function CurrentCulture
      return NetFrameworkBase.System.Globalization.CultureInfo.Kind_Ptr;
      
      procedure CurrentCulture
      (
         value : NetFrameworkBase.System.Globalization.CultureInfo.Kind_Ptr
      )
      ;
      
      function CurrentUICulture
      return NetFrameworkBase.System.Globalization.CultureInfo.Kind_Ptr;
      
      procedure CurrentUICulture
      (
         value : NetFrameworkBase.System.Globalization.CultureInfo.Kind_Ptr
      )
      ;
      
      function InstalledUICulture
      return NetFrameworkBase.System.Globalization.CultureInfo.Kind_Ptr;
      
      function DefaultThreadCurrentCulture
      return NetFrameworkBase.System.Globalization.CultureInfo.Kind_Ptr;
      
      procedure DefaultThreadCurrentCulture
      (
         value : NetFrameworkBase.System.Globalization.CultureInfo.Kind_Ptr
      )
      ;
      
      function DefaultThreadCurrentUICulture
      return NetFrameworkBase.System.Globalization.CultureInfo.Kind_Ptr;
      
      procedure DefaultThreadCurrentUICulture
      (
         value : NetFrameworkBase.System.Globalization.CultureInfo.Kind_Ptr
      )
      ;
      
      function InvariantCulture
      return NetFrameworkBase.System.Globalization.CultureInfo.Kind_Ptr;
      
      function Parent
      (
         this : in out CultureInfo.Kind
      )
      return NetFrameworkBase.System.Globalization.CultureInfo.Kind_Ptr;
      
      function LCID
      (
         this : in out CultureInfo.Kind
      )
      return NetFrameworkBase.Int32;
      
      function KeyboardLayoutId
      (
         this : in out CultureInfo.Kind
      )
      return NetFrameworkBase.Int32;
      
      function GetCultures
      (
         types : NetFrameworkBase.System.Globalization.CultureTypes.Kind
      )
      return NetFrameworkBase.System.Globalization.CultureInfo.Kind_Array;
      
      function Name
      (
         this : in out CultureInfo.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function DisplayName
      (
         this : in out CultureInfo.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function NativeName
      (
         this : in out CultureInfo.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function EnglishName
      (
         this : in out CultureInfo.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function TwoLetterISOLanguageName
      (
         this : in out CultureInfo.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function ThreeLetterISOLanguageName
      (
         this : in out CultureInfo.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function ThreeLetterWindowsLanguageName
      (
         this : in out CultureInfo.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function CompareInfo
      (
         this : in out CultureInfo.Kind
      )
      return NetFrameworkBase.System.Globalization.CompareInfo.Kind_Ptr;
      
      function TextInfo
      (
         this : in out CultureInfo.Kind
      )
      return NetFrameworkBase.System.Globalization.TextInfo.Kind_Ptr;
      
      function Equals
      (
         this : in out CultureInfo.Kind;
         value : NetFrameworkBase.System.Object.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      
      function GetHashCode
      (
         this : in out CultureInfo.Kind
      )
      return NetFrameworkBase.Int32;
      
      function ToString
      (
         this : in out CultureInfo.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function GetFormat
      (
         this : in out CultureInfo.Kind;
         formatType : NetFrameworkBase.System.Type_x.Kind_Ptr
      )
      return NetFrameworkBase.System.Object.Kind_Ptr;
      
      function IsNeutralCulture
      (
         this : in out CultureInfo.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function CultureTypes
      (
         this : in out CultureInfo.Kind
      )
      return NetFrameworkBase.System.Globalization.CultureTypes.Kind;
      
      function NumberFormat
      (
         this : in out CultureInfo.Kind
      )
      return NetFrameworkBase.System.Globalization.NumberFormatInfo.Kind_Ptr;
      
      procedure NumberFormat
      (
         this : in out CultureInfo.Kind;
         value : NetFrameworkBase.System.Globalization.NumberFormatInfo.Kind_Ptr
      );
      
      function DateTimeFormat
      (
         this : in out CultureInfo.Kind
      )
      return NetFrameworkBase.System.Globalization.DateTimeFormatInfo.Kind_Ptr;
      
      procedure DateTimeFormat
      (
         this : in out CultureInfo.Kind;
         value : NetFrameworkBase.System.Globalization.DateTimeFormatInfo.Kind_Ptr
      );
      
      procedure ClearCachedData
      (
         this : in out CultureInfo.Kind
      );
      
      function Calendar
      (
         this : in out CultureInfo.Kind
      )
      return NetFrameworkBase.System.Globalization.Calendar.Kind_Ptr;
      
      function OptionalCalendars
      (
         this : in out CultureInfo.Kind
      )
      return NetFrameworkBase.System.Globalization.Calendar.Kind_Array;
      
      function UseUserOverride
      (
         this : in out CultureInfo.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function GetConsoleFallbackUICulture
      (
         this : in out CultureInfo.Kind
      )
      return NetFrameworkBase.System.Globalization.CultureInfo.Kind_Ptr;
      
      function Clone
      (
         this : in out CultureInfo.Kind
      )
      return NetFrameworkBase.System.Object.Kind_Ptr;
      
      function ReadOnly
      (
         ci : NetFrameworkBase.System.Globalization.CultureInfo.Kind_Ptr
      )
      return NetFrameworkBase.System.Globalization.CultureInfo.Kind_Ptr;
      
      function IsReadOnly
      (
         this : in out CultureInfo.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function GetCultureInfo
      (
         culture : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.Globalization.CultureInfo.Kind_Ptr;
      
      function GetCultureInfo
      (
         name : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Globalization.CultureInfo.Kind_Ptr;
      
      function GetCultureInfo
      (
         name : NetFrameworkBase.BSTR;
         altName : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Globalization.CultureInfo.Kind_Ptr;
      
      function IetfLanguageTag
      (
         this : in out CultureInfo.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function GetCultureInfoByIetfLanguageTag
      (
         name : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Globalization.CultureInfo.Kind_Ptr;
      
      function Constructor
      (
         name : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Globalization.CultureInfo.Kind_Ptr;
      
      function Constructor
      (
         name : NetFrameworkBase.BSTR;
         useUserOverride : NetFrameworkBase.Boolean
      )
      return NetFrameworkBase.System.Globalization.CultureInfo.Kind_Ptr;
      
      function Constructor
      (
         culture : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.Globalization.CultureInfo.Kind_Ptr;
      
      function Constructor
      (
         culture : NetFrameworkBase.Int32;
         useUserOverride : NetFrameworkBase.Boolean
      )
      return NetFrameworkBase.System.Globalization.CultureInfo.Kind_Ptr;
      
end;
