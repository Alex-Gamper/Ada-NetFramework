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
with NetFrameworkBase.System.Globalization.CharUnicodeInfo;
with NetFrameworkBase.System.Globalization.CompareOptions;
with NetFrameworkBase.System.Globalization.CompareInfo;
with NetFrameworkBase.System.Globalization.CultureInfo;
with NetFrameworkBase.System.Globalization.CultureNotFoundException;
with NetFrameworkBase.System.Globalization.CultureTypes;
with NetFrameworkBase.System.Globalization.DateTimeStyles;
with NetFrameworkBase.System.Globalization.DateTimeFormatInfo;
with NetFrameworkBase.System.Globalization.DaylightTime;
with NetFrameworkBase.System.Globalization.DigitShapes;
with NetFrameworkBase.System.Globalization.GlobalizationExtensions;
with NetFrameworkBase.System.Globalization.GregorianCalendar;
with NetFrameworkBase.System.Globalization.GregorianCalendarTypes;
with NetFrameworkBase.System.Globalization.HebrewCalendar;
with NetFrameworkBase.System.Globalization.HijriCalendar;
with NetFrameworkBase.System.Globalization.UmAlQuraCalendar;
with NetFrameworkBase.System.Globalization.ChineseLunisolarCalendar;
with NetFrameworkBase.System.Globalization.EastAsianLunisolarCalendar;
with NetFrameworkBase.System.Globalization.JapaneseLunisolarCalendar;
with NetFrameworkBase.System.Globalization.JulianCalendar;
with NetFrameworkBase.System.Globalization.KoreanLunisolarCalendar;
with NetFrameworkBase.System.Globalization.PersianCalendar;
with NetFrameworkBase.System.Globalization.TaiwanLunisolarCalendar;
with NetFrameworkBase.System.Globalization.IdnMapping;
with NetFrameworkBase.System.Globalization.JapaneseCalendar;
with NetFrameworkBase.System.Globalization.KoreanCalendar;
with NetFrameworkBase.System.Globalization.RegionInfo;
with NetFrameworkBase.System.Globalization.SortKey;
with NetFrameworkBase.System.Globalization.StringInfo;
with NetFrameworkBase.System.Globalization.TaiwanCalendar;
with NetFrameworkBase.System.Globalization.TextElementEnumerator;
with NetFrameworkBase.System.Globalization.TextInfo;
with NetFrameworkBase.System.Globalization.ThaiBuddhistCalendar;
with NetFrameworkBase.System.Globalization.TimeSpanStyles;
with NetFrameworkBase.System.Globalization.NumberFormatInfo;
with NetFrameworkBase.System.Globalization.NumberStyles;
with NetFrameworkBase.System.Globalization.UnicodeCategory;
with NetFrameworkBase.System.Globalization.SortVersion;
with NetFrameworkBase.System.Exception_x;
with NetFrameworkBase.System.TimeSpan;
with NetFrameworkBase.System.Guid;
--------------------------------------------------------------------------------
package NetFramework.System.Globalization is
   
      --------------------------------------------------------------------------
      subtype Calendar is NetFrameworkBase.System.Globalization.Calendar.Kind_Ptr;
      subtype Calendar_Array is NetFrameworkBase.System.Globalization.Calendar.Kind_Array;
      
      --------------------------------------------------------------------------
      subtype CalendarAlgorithmType is NetFrameworkBase.System.Globalization.CalendarAlgorithmType.Kind;
      
      --------------------------------------------------------------------------
      subtype CalendarWeekRule is NetFrameworkBase.System.Globalization.CalendarWeekRule.Kind;
      
      --------------------------------------------------------------------------
      subtype CharUnicodeInfo is NetFrameworkBase.System.Globalization.CharUnicodeInfo.Kind_Ptr;
      subtype CharUnicodeInfo_Array is NetFrameworkBase.System.Globalization.CharUnicodeInfo.Kind_Array;
      
      --------------------------------------------------------------------------
      subtype CompareOptions is NetFrameworkBase.System.Globalization.CompareOptions.Kind;
      
      --------------------------------------------------------------------------
      subtype CompareInfo is NetFrameworkBase.System.Globalization.CompareInfo.Kind_Ptr;
      subtype CompareInfo_Array is NetFrameworkBase.System.Globalization.CompareInfo.Kind_Array;
      
      --------------------------------------------------------------------------
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
         
      --------------------------------------------------------------------------
      subtype CultureNotFoundException is NetFrameworkBase.System.Globalization.CultureNotFoundException.Kind_Ptr;
      subtype CultureNotFoundException_Array is NetFrameworkBase.System.Globalization.CultureNotFoundException.Kind_Array;
      
         function Constructor return NetFrameworkBase.System.Globalization.CultureNotFoundException.Kind_Ptr renames NetFrameworkBase.System.Globalization.CultureNotFoundException.Constructor;
         
         function Constructor
         (
            message : NetFrameworkBase.BSTR
         )
         return NetFrameworkBase.System.Globalization.CultureNotFoundException.Kind_Ptr renames NetFrameworkBase.System.Globalization.CultureNotFoundException.Constructor; 
         
         function Constructor
         (
            paramName : NetFrameworkBase.BSTR;
            message : NetFrameworkBase.BSTR
         )
         return NetFrameworkBase.System.Globalization.CultureNotFoundException.Kind_Ptr renames NetFrameworkBase.System.Globalization.CultureNotFoundException.Constructor; 
         
         function Constructor
         (
            message : NetFrameworkBase.BSTR;
            innerException : NetFrameworkBase.System.Exception_x.Kind_Ptr
         )
         return NetFrameworkBase.System.Globalization.CultureNotFoundException.Kind_Ptr renames NetFrameworkBase.System.Globalization.CultureNotFoundException.Constructor; 
         
         function Constructor
         (
            paramName : NetFrameworkBase.BSTR;
            invalidCultureId : NetFrameworkBase.Int32;
            message : NetFrameworkBase.BSTR
         )
         return NetFrameworkBase.System.Globalization.CultureNotFoundException.Kind_Ptr renames NetFrameworkBase.System.Globalization.CultureNotFoundException.Constructor; 
         
         function Constructor
         (
            message : NetFrameworkBase.BSTR;
            invalidCultureId : NetFrameworkBase.Int32;
            innerException : NetFrameworkBase.System.Exception_x.Kind_Ptr
         )
         return NetFrameworkBase.System.Globalization.CultureNotFoundException.Kind_Ptr renames NetFrameworkBase.System.Globalization.CultureNotFoundException.Constructor; 
         
         function Constructor
         (
            paramName : NetFrameworkBase.BSTR;
            invalidCultureName : NetFrameworkBase.BSTR;
            message : NetFrameworkBase.BSTR
         )
         return NetFrameworkBase.System.Globalization.CultureNotFoundException.Kind_Ptr renames NetFrameworkBase.System.Globalization.CultureNotFoundException.Constructor; 
         
         function Constructor
         (
            message : NetFrameworkBase.BSTR;
            invalidCultureName : NetFrameworkBase.BSTR;
            innerException : NetFrameworkBase.System.Exception_x.Kind_Ptr
         )
         return NetFrameworkBase.System.Globalization.CultureNotFoundException.Kind_Ptr renames NetFrameworkBase.System.Globalization.CultureNotFoundException.Constructor; 
         
      --------------------------------------------------------------------------
      subtype CultureTypes is NetFrameworkBase.System.Globalization.CultureTypes.Kind;
      
      --------------------------------------------------------------------------
      subtype DateTimeStyles is NetFrameworkBase.System.Globalization.DateTimeStyles.Kind;
      
      --------------------------------------------------------------------------
      subtype DateTimeFormatInfo is NetFrameworkBase.System.Globalization.DateTimeFormatInfo.Kind_Ptr;
      subtype DateTimeFormatInfo_Array is NetFrameworkBase.System.Globalization.DateTimeFormatInfo.Kind_Array;
      
         function Constructor return NetFrameworkBase.System.Globalization.DateTimeFormatInfo.Kind_Ptr renames NetFrameworkBase.System.Globalization.DateTimeFormatInfo.Constructor;
         
      --------------------------------------------------------------------------
      subtype DaylightTime is NetFrameworkBase.System.Globalization.DaylightTime.Kind_Ptr;
      subtype DaylightTime_Array is NetFrameworkBase.System.Globalization.DaylightTime.Kind_Array;
      
         function Constructor
         (
            start : NetFrameworkBase.Date;
            end_x : NetFrameworkBase.Date;
            delta_x : NetFrameworkBase.System.TimeSpan.Kind_Ptr
         )
         return NetFrameworkBase.System.Globalization.DaylightTime.Kind_Ptr renames NetFrameworkBase.System.Globalization.DaylightTime.Constructor; 
         
      --------------------------------------------------------------------------
      subtype DigitShapes is NetFrameworkBase.System.Globalization.DigitShapes.Kind;
      
      --------------------------------------------------------------------------
      subtype GlobalizationExtensions is NetFrameworkBase.System.Globalization.GlobalizationExtensions.Kind_Ptr;
      subtype GlobalizationExtensions_Array is NetFrameworkBase.System.Globalization.GlobalizationExtensions.Kind_Array;
      
      --------------------------------------------------------------------------
      subtype GregorianCalendar is NetFrameworkBase.System.Globalization.GregorianCalendar.Kind_Ptr;
      subtype GregorianCalendar_Array is NetFrameworkBase.System.Globalization.GregorianCalendar.Kind_Array;
      
         function Constructor return NetFrameworkBase.System.Globalization.GregorianCalendar.Kind_Ptr renames NetFrameworkBase.System.Globalization.GregorianCalendar.Constructor;
         
         function Constructor
         (
            type_x : NetFrameworkBase.System.Globalization.GregorianCalendarTypes.Kind
         )
         return NetFrameworkBase.System.Globalization.GregorianCalendar.Kind_Ptr renames NetFrameworkBase.System.Globalization.GregorianCalendar.Constructor; 
         
      --------------------------------------------------------------------------
      subtype GregorianCalendarTypes is NetFrameworkBase.System.Globalization.GregorianCalendarTypes.Kind;
      
      --------------------------------------------------------------------------
      subtype HebrewCalendar is NetFrameworkBase.System.Globalization.HebrewCalendar.Kind_Ptr;
      subtype HebrewCalendar_Array is NetFrameworkBase.System.Globalization.HebrewCalendar.Kind_Array;
      
         function Constructor return NetFrameworkBase.System.Globalization.HebrewCalendar.Kind_Ptr renames NetFrameworkBase.System.Globalization.HebrewCalendar.Constructor;
         
      --------------------------------------------------------------------------
      subtype HijriCalendar is NetFrameworkBase.System.Globalization.HijriCalendar.Kind_Ptr;
      subtype HijriCalendar_Array is NetFrameworkBase.System.Globalization.HijriCalendar.Kind_Array;
      
         function Constructor return NetFrameworkBase.System.Globalization.HijriCalendar.Kind_Ptr renames NetFrameworkBase.System.Globalization.HijriCalendar.Constructor;
         
      --------------------------------------------------------------------------
      subtype UmAlQuraCalendar is NetFrameworkBase.System.Globalization.UmAlQuraCalendar.Kind_Ptr;
      subtype UmAlQuraCalendar_Array is NetFrameworkBase.System.Globalization.UmAlQuraCalendar.Kind_Array;
      
         function Constructor return NetFrameworkBase.System.Globalization.UmAlQuraCalendar.Kind_Ptr renames NetFrameworkBase.System.Globalization.UmAlQuraCalendar.Constructor;
         
      --------------------------------------------------------------------------
      subtype ChineseLunisolarCalendar is NetFrameworkBase.System.Globalization.ChineseLunisolarCalendar.Kind_Ptr;
      subtype ChineseLunisolarCalendar_Array is NetFrameworkBase.System.Globalization.ChineseLunisolarCalendar.Kind_Array;
      
         function Constructor return NetFrameworkBase.System.Globalization.ChineseLunisolarCalendar.Kind_Ptr renames NetFrameworkBase.System.Globalization.ChineseLunisolarCalendar.Constructor;
         
      --------------------------------------------------------------------------
      subtype EastAsianLunisolarCalendar is NetFrameworkBase.System.Globalization.EastAsianLunisolarCalendar.Kind_Ptr;
      subtype EastAsianLunisolarCalendar_Array is NetFrameworkBase.System.Globalization.EastAsianLunisolarCalendar.Kind_Array;
      
      --------------------------------------------------------------------------
      subtype JapaneseLunisolarCalendar is NetFrameworkBase.System.Globalization.JapaneseLunisolarCalendar.Kind_Ptr;
      subtype JapaneseLunisolarCalendar_Array is NetFrameworkBase.System.Globalization.JapaneseLunisolarCalendar.Kind_Array;
      
         function Constructor return NetFrameworkBase.System.Globalization.JapaneseLunisolarCalendar.Kind_Ptr renames NetFrameworkBase.System.Globalization.JapaneseLunisolarCalendar.Constructor;
         
      --------------------------------------------------------------------------
      subtype JulianCalendar is NetFrameworkBase.System.Globalization.JulianCalendar.Kind_Ptr;
      subtype JulianCalendar_Array is NetFrameworkBase.System.Globalization.JulianCalendar.Kind_Array;
      
         function Constructor return NetFrameworkBase.System.Globalization.JulianCalendar.Kind_Ptr renames NetFrameworkBase.System.Globalization.JulianCalendar.Constructor;
         
      --------------------------------------------------------------------------
      subtype KoreanLunisolarCalendar is NetFrameworkBase.System.Globalization.KoreanLunisolarCalendar.Kind_Ptr;
      subtype KoreanLunisolarCalendar_Array is NetFrameworkBase.System.Globalization.KoreanLunisolarCalendar.Kind_Array;
      
         function Constructor return NetFrameworkBase.System.Globalization.KoreanLunisolarCalendar.Kind_Ptr renames NetFrameworkBase.System.Globalization.KoreanLunisolarCalendar.Constructor;
         
      --------------------------------------------------------------------------
      subtype PersianCalendar is NetFrameworkBase.System.Globalization.PersianCalendar.Kind_Ptr;
      subtype PersianCalendar_Array is NetFrameworkBase.System.Globalization.PersianCalendar.Kind_Array;
      
         function Constructor return NetFrameworkBase.System.Globalization.PersianCalendar.Kind_Ptr renames NetFrameworkBase.System.Globalization.PersianCalendar.Constructor;
         
      --------------------------------------------------------------------------
      subtype TaiwanLunisolarCalendar is NetFrameworkBase.System.Globalization.TaiwanLunisolarCalendar.Kind_Ptr;
      subtype TaiwanLunisolarCalendar_Array is NetFrameworkBase.System.Globalization.TaiwanLunisolarCalendar.Kind_Array;
      
         function Constructor return NetFrameworkBase.System.Globalization.TaiwanLunisolarCalendar.Kind_Ptr renames NetFrameworkBase.System.Globalization.TaiwanLunisolarCalendar.Constructor;
         
      --------------------------------------------------------------------------
      subtype IdnMapping is NetFrameworkBase.System.Globalization.IdnMapping.Kind_Ptr;
      subtype IdnMapping_Array is NetFrameworkBase.System.Globalization.IdnMapping.Kind_Array;
      
         function Constructor return NetFrameworkBase.System.Globalization.IdnMapping.Kind_Ptr renames NetFrameworkBase.System.Globalization.IdnMapping.Constructor;
         
      --------------------------------------------------------------------------
      subtype JapaneseCalendar is NetFrameworkBase.System.Globalization.JapaneseCalendar.Kind_Ptr;
      subtype JapaneseCalendar_Array is NetFrameworkBase.System.Globalization.JapaneseCalendar.Kind_Array;
      
         function Constructor return NetFrameworkBase.System.Globalization.JapaneseCalendar.Kind_Ptr renames NetFrameworkBase.System.Globalization.JapaneseCalendar.Constructor;
         
      --------------------------------------------------------------------------
      subtype KoreanCalendar is NetFrameworkBase.System.Globalization.KoreanCalendar.Kind_Ptr;
      subtype KoreanCalendar_Array is NetFrameworkBase.System.Globalization.KoreanCalendar.Kind_Array;
      
         function Constructor return NetFrameworkBase.System.Globalization.KoreanCalendar.Kind_Ptr renames NetFrameworkBase.System.Globalization.KoreanCalendar.Constructor;
         
      --------------------------------------------------------------------------
      subtype RegionInfo is NetFrameworkBase.System.Globalization.RegionInfo.Kind_Ptr;
      subtype RegionInfo_Array is NetFrameworkBase.System.Globalization.RegionInfo.Kind_Array;
      
         function Constructor
         (
            name : NetFrameworkBase.BSTR
         )
         return NetFrameworkBase.System.Globalization.RegionInfo.Kind_Ptr renames NetFrameworkBase.System.Globalization.RegionInfo.Constructor; 
         
         function Constructor
         (
            culture : NetFrameworkBase.Int32
         )
         return NetFrameworkBase.System.Globalization.RegionInfo.Kind_Ptr renames NetFrameworkBase.System.Globalization.RegionInfo.Constructor; 
         
      --------------------------------------------------------------------------
      subtype SortKey is NetFrameworkBase.System.Globalization.SortKey.Kind_Ptr;
      subtype SortKey_Array is NetFrameworkBase.System.Globalization.SortKey.Kind_Array;
      
      --------------------------------------------------------------------------
      subtype StringInfo is NetFrameworkBase.System.Globalization.StringInfo.Kind_Ptr;
      subtype StringInfo_Array is NetFrameworkBase.System.Globalization.StringInfo.Kind_Array;
      
         function Constructor return NetFrameworkBase.System.Globalization.StringInfo.Kind_Ptr renames NetFrameworkBase.System.Globalization.StringInfo.Constructor;
         
         function Constructor
         (
            value : NetFrameworkBase.BSTR
         )
         return NetFrameworkBase.System.Globalization.StringInfo.Kind_Ptr renames NetFrameworkBase.System.Globalization.StringInfo.Constructor; 
         
      --------------------------------------------------------------------------
      subtype TaiwanCalendar is NetFrameworkBase.System.Globalization.TaiwanCalendar.Kind_Ptr;
      subtype TaiwanCalendar_Array is NetFrameworkBase.System.Globalization.TaiwanCalendar.Kind_Array;
      
         function Constructor return NetFrameworkBase.System.Globalization.TaiwanCalendar.Kind_Ptr renames NetFrameworkBase.System.Globalization.TaiwanCalendar.Constructor;
         
      --------------------------------------------------------------------------
      subtype TextElementEnumerator is NetFrameworkBase.System.Globalization.TextElementEnumerator.Kind_Ptr;
      subtype TextElementEnumerator_Array is NetFrameworkBase.System.Globalization.TextElementEnumerator.Kind_Array;
      
      --------------------------------------------------------------------------
      subtype TextInfo is NetFrameworkBase.System.Globalization.TextInfo.Kind_Ptr;
      subtype TextInfo_Array is NetFrameworkBase.System.Globalization.TextInfo.Kind_Array;
      
      --------------------------------------------------------------------------
      subtype ThaiBuddhistCalendar is NetFrameworkBase.System.Globalization.ThaiBuddhistCalendar.Kind_Ptr;
      subtype ThaiBuddhistCalendar_Array is NetFrameworkBase.System.Globalization.ThaiBuddhistCalendar.Kind_Array;
      
         function Constructor return NetFrameworkBase.System.Globalization.ThaiBuddhistCalendar.Kind_Ptr renames NetFrameworkBase.System.Globalization.ThaiBuddhistCalendar.Constructor;
         
      --------------------------------------------------------------------------
      subtype TimeSpanStyles is NetFrameworkBase.System.Globalization.TimeSpanStyles.Kind;
      
      --------------------------------------------------------------------------
      subtype NumberFormatInfo is NetFrameworkBase.System.Globalization.NumberFormatInfo.Kind_Ptr;
      subtype NumberFormatInfo_Array is NetFrameworkBase.System.Globalization.NumberFormatInfo.Kind_Array;
      
         function Constructor return NetFrameworkBase.System.Globalization.NumberFormatInfo.Kind_Ptr renames NetFrameworkBase.System.Globalization.NumberFormatInfo.Constructor;
         
      --------------------------------------------------------------------------
      subtype NumberStyles is NetFrameworkBase.System.Globalization.NumberStyles.Kind;
      
      --------------------------------------------------------------------------
      subtype UnicodeCategory is NetFrameworkBase.System.Globalization.UnicodeCategory.Kind;
      
      --------------------------------------------------------------------------
      subtype SortVersion is NetFrameworkBase.System.Globalization.SortVersion.Kind_Ptr;
      subtype SortVersion_Array is NetFrameworkBase.System.Globalization.SortVersion.Kind_Array;
      
         function Constructor
         (
            fullVersion : NetFrameworkBase.Int32;
            sortId : NetFrameworkBase.System.Guid.Kind_Ptr
         )
         return NetFrameworkBase.System.Globalization.SortVersion.Kind_Ptr renames NetFrameworkBase.System.Globalization.SortVersion.Constructor; 
         
   
end;
