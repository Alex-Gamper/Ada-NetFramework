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
with NetFrameworkBase.System.Globalization.Calendar;
with NetFrameworkBase.System.Globalization.CalendarAlgorithmType;
with NetFrameworkBase.System.Globalization.CalendarWeekRule;
with NetFrameworkBase.System.Globalization.CompareOptions;
with NetFrameworkBase.System.Globalization.CompareInfo;
with NetFrameworkBase.System.Globalization.CultureInfo;
with NetFrameworkBase.System.Globalization.CultureTypes;
with NetFrameworkBase.System.Globalization.DateTimeStyles;
with NetFrameworkBase.System.Globalization.DateTimeFormatInfo;
with NetFrameworkBase.System.Globalization.DigitShapes;
with NetFrameworkBase.System.Globalization.SortKey;
with NetFrameworkBase.System.Globalization.TextInfo;
with NetFrameworkBase.System.Globalization.TimeSpanStyles;
with NetFrameworkBase.System.Globalization.NumberFormatInfo;
with NetFrameworkBase.System.Globalization.NumberStyles;
with NetFrameworkBase.System.Globalization.UnicodeCategory;
with NetFrameworkBase.System.Globalization.SortVersion;
with NetFrameworkBase.System.Guid;
--------------------------------------------------------------------------------
package NetFramework.System.Globalization is
   
      subtype Calendar is NetFrameworkBase.System.Globalization.Calendar.Kind_Ptr;
      subtype Calendar_Array is NetFrameworkBase.System.Globalization.Calendar.Kind_Array;
      
      subtype CalendarAlgorithmType is NetFrameworkBase.System.Globalization.CalendarAlgorithmType.Kind;
      
      subtype CalendarWeekRule is NetFrameworkBase.System.Globalization.CalendarWeekRule.Kind;
      
      subtype CompareOptions is NetFrameworkBase.System.Globalization.CompareOptions.Kind;
      
      subtype CompareInfo is NetFrameworkBase.System.Globalization.CompareInfo.Kind_Ptr;
      subtype CompareInfo_Array is NetFrameworkBase.System.Globalization.CompareInfo.Kind_Array;
      
      subtype CultureInfo is NetFrameworkBase.System.Globalization.CultureInfo.Kind_Ptr;
      subtype CultureInfo_Array is NetFrameworkBase.System.Globalization.CultureInfo.Kind_Array;
      
         function Constructor
         (
            name : NetFrameworkBase.BSTR
         )
         return NetFrameworkBase.System.Globalization.CultureInfo.Kind_Ptr renames NetFrameworkBase.System.Globalization.CultureInfo.Constructor; 
         
         function Constructor
         (
            name : NetFrameworkBase.BSTR;
            useUserOverride : NetFrameworkBase.Boolean
         )
         return NetFrameworkBase.System.Globalization.CultureInfo.Kind_Ptr renames NetFrameworkBase.System.Globalization.CultureInfo.Constructor; 
         
         function Constructor
         (
            culture : NetFrameworkBase.Int32
         )
         return NetFrameworkBase.System.Globalization.CultureInfo.Kind_Ptr renames NetFrameworkBase.System.Globalization.CultureInfo.Constructor; 
         
         function Constructor
         (
            culture : NetFrameworkBase.Int32;
            useUserOverride : NetFrameworkBase.Boolean
         )
         return NetFrameworkBase.System.Globalization.CultureInfo.Kind_Ptr renames NetFrameworkBase.System.Globalization.CultureInfo.Constructor; 
         
      subtype CultureTypes is NetFrameworkBase.System.Globalization.CultureTypes.Kind;
      
      subtype DateTimeStyles is NetFrameworkBase.System.Globalization.DateTimeStyles.Kind;
      
      subtype DateTimeFormatInfo is NetFrameworkBase.System.Globalization.DateTimeFormatInfo.Kind_Ptr;
      subtype DateTimeFormatInfo_Array is NetFrameworkBase.System.Globalization.DateTimeFormatInfo.Kind_Array;
      
         function Constructor return NetFrameworkBase.System.Globalization.DateTimeFormatInfo.Kind_Ptr renames NetFrameworkBase.System.Globalization.DateTimeFormatInfo.Constructor;
         
      subtype DigitShapes is NetFrameworkBase.System.Globalization.DigitShapes.Kind;
      
      subtype SortKey is NetFrameworkBase.System.Globalization.SortKey.Kind_Ptr;
      subtype SortKey_Array is NetFrameworkBase.System.Globalization.SortKey.Kind_Array;
      
      subtype TextInfo is NetFrameworkBase.System.Globalization.TextInfo.Kind_Ptr;
      subtype TextInfo_Array is NetFrameworkBase.System.Globalization.TextInfo.Kind_Array;
      
      subtype TimeSpanStyles is NetFrameworkBase.System.Globalization.TimeSpanStyles.Kind;
      
      subtype NumberFormatInfo is NetFrameworkBase.System.Globalization.NumberFormatInfo.Kind_Ptr;
      subtype NumberFormatInfo_Array is NetFrameworkBase.System.Globalization.NumberFormatInfo.Kind_Array;
      
         function Constructor return NetFrameworkBase.System.Globalization.NumberFormatInfo.Kind_Ptr renames NetFrameworkBase.System.Globalization.NumberFormatInfo.Constructor;
         
      subtype NumberStyles is NetFrameworkBase.System.Globalization.NumberStyles.Kind;
      
      subtype UnicodeCategory is NetFrameworkBase.System.Globalization.UnicodeCategory.Kind;
      
      subtype SortVersion is NetFrameworkBase.System.Globalization.SortVersion.Kind_Ptr;
      subtype SortVersion_Array is NetFrameworkBase.System.Globalization.SortVersion.Kind_Array;
      
         function Constructor
         (
            fullVersion : NetFrameworkBase.Int32;
            sortId : NetFrameworkBase.System.Guid.Kind_Ptr
         )
         return NetFrameworkBase.System.Globalization.SortVersion.Kind_Ptr renames NetFrameworkBase.System.Globalization.SortVersion.Constructor; 
         
   
end;
