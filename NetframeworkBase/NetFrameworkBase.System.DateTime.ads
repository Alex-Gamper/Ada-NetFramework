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
with NetFrameworkBase.System.ValueType;
limited with NetFrameworkBase.System.TimeSpan;
with NetFrameworkBase.System.Object;
limited with NetFrameworkBase.System.DateTimeKind;
limited with NetFrameworkBase.System.IFormatProvider;
limited with NetFrameworkBase.System.Globalization.DateTimeStyles;
limited with NetFrameworkBase.System.Globalization.Calendar;
limited with NetFrameworkBase.System.DayOfWeek;
limited with NetFrameworkBase.System.TypeCode;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.DateTime is
   
   type Kind is new NetFrameworkBase.System.ValueType.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function Add
      (
         this : in out DateTime.Kind;
         value : NetFrameworkBase.System.TimeSpan.Kind_Ptr
      )
      return NetFrameworkBase.Date;
      
      function AddDays
      (
         this : in out DateTime.Kind;
         value : NetFrameworkBase.Double
      )
      return NetFrameworkBase.Date;
      
      function AddHours
      (
         this : in out DateTime.Kind;
         value : NetFrameworkBase.Double
      )
      return NetFrameworkBase.Date;
      
      function AddMilliseconds
      (
         this : in out DateTime.Kind;
         value : NetFrameworkBase.Double
      )
      return NetFrameworkBase.Date;
      
      function AddMinutes
      (
         this : in out DateTime.Kind;
         value : NetFrameworkBase.Double
      )
      return NetFrameworkBase.Date;
      
      function AddMonths
      (
         this : in out DateTime.Kind;
         months : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.Date;
      
      function AddSeconds
      (
         this : in out DateTime.Kind;
         value : NetFrameworkBase.Double
      )
      return NetFrameworkBase.Date;
      
      function AddTicks
      (
         this : in out DateTime.Kind;
         value : NetFrameworkBase.Int64
      )
      return NetFrameworkBase.Date;
      
      function AddYears
      (
         this : in out DateTime.Kind;
         value : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.Date;
      
      function Compare
      (
         t1 : NetFrameworkBase.Date;
         t2 : NetFrameworkBase.Date
      )
      return NetFrameworkBase.Int32;
      
      function CompareTo
      (
         this : in out DateTime.Kind;
         value : NetFrameworkBase.System.Object.Kind_Ptr
      )
      return NetFrameworkBase.Int32;
      
      function CompareTo
      (
         this : in out DateTime.Kind;
         value : NetFrameworkBase.Date
      )
      return NetFrameworkBase.Int32;
      
      function DaysInMonth
      (
         year : NetFrameworkBase.Int32;
         month : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.Int32;
      
      function Equals
      (
         this : in out DateTime.Kind;
         value : NetFrameworkBase.System.Object.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      
      function Equals
      (
         this : in out DateTime.Kind;
         value : NetFrameworkBase.Date
      )
      return NetFrameworkBase.Boolean;
      
      function Equals
      (
         t1 : NetFrameworkBase.Date;
         t2 : NetFrameworkBase.Date
      )
      return NetFrameworkBase.Boolean;
      
      function FromBinary
      (
         dateData : NetFrameworkBase.Int64
      )
      return NetFrameworkBase.Date;
      
      function FromFileTime
      (
         fileTime : NetFrameworkBase.Int64
      )
      return NetFrameworkBase.Date;
      
      function FromFileTimeUtc
      (
         fileTime : NetFrameworkBase.Int64
      )
      return NetFrameworkBase.Date;
      
      function FromOADate
      (
         d : NetFrameworkBase.Double
      )
      return NetFrameworkBase.Date;
      
      function IsDaylightSavingTime
      (
         this : in out DateTime.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function SpecifyKind
      (
         value : NetFrameworkBase.Date;
         kind : NetFrameworkBase.System.DateTimeKind.Kind
      )
      return NetFrameworkBase.Date;
      
      function ToBinary
      (
         this : in out DateTime.Kind
      )
      return NetFrameworkBase.Int64;
      
      function Date
      (
         this : in out DateTime.Kind
      )
      return NetFrameworkBase.Date;
      
      function Day
      (
         this : in out DateTime.Kind
      )
      return NetFrameworkBase.Int32;
      
      function DayOfWeek
      (
         this : in out DateTime.Kind
      )
      return NetFrameworkBase.System.DayOfWeek.Kind;
      
      function DayOfYear
      (
         this : in out DateTime.Kind
      )
      return NetFrameworkBase.Int32;
      
      function GetHashCode
      (
         this : in out DateTime.Kind
      )
      return NetFrameworkBase.Int32;
      
      function Hour
      (
         this : in out DateTime.Kind
      )
      return NetFrameworkBase.Int32;
      
      function Kind_x
      (
         this : in out DateTime.Kind
      )
      return NetFrameworkBase.System.DateTimeKind.Kind;
      
      function Millisecond
      (
         this : in out DateTime.Kind
      )
      return NetFrameworkBase.Int32;
      
      function Minute
      (
         this : in out DateTime.Kind
      )
      return NetFrameworkBase.Int32;
      
      function Month
      (
         this : in out DateTime.Kind
      )
      return NetFrameworkBase.Int32;
      
      function Now
      return NetFrameworkBase.Date;
      
      function UtcNow
      return NetFrameworkBase.Date;
      
      function Second
      (
         this : in out DateTime.Kind
      )
      return NetFrameworkBase.Int32;
      
      function Ticks
      (
         this : in out DateTime.Kind
      )
      return NetFrameworkBase.Int64;
      
      function TimeOfDay
      (
         this : in out DateTime.Kind
      )
      return NetFrameworkBase.System.TimeSpan.Kind_Ptr;
      
      function Today
      return NetFrameworkBase.Date;
      
      function Year
      (
         this : in out DateTime.Kind
      )
      return NetFrameworkBase.Int32;
      
      function IsLeapYear
      (
         year : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.Boolean;
      
      function Parse
      (
         s : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.Date;
      
      function Parse
      (
         s : NetFrameworkBase.BSTR;
         provider : NetFrameworkBase.System.IFormatProvider.Kind_Ptr
      )
      return NetFrameworkBase.Date;
      
      function ParseExact
      (
         s : NetFrameworkBase.BSTR;
         format : NetFrameworkBase.BSTR;
         provider : NetFrameworkBase.System.IFormatProvider.Kind_Ptr
      )
      return NetFrameworkBase.Date;
      
      function Subtract
      (
         this : in out DateTime.Kind;
         value : NetFrameworkBase.Date
      )
      return NetFrameworkBase.System.TimeSpan.Kind_Ptr;
      
      function Subtract
      (
         this : in out DateTime.Kind;
         value : NetFrameworkBase.System.TimeSpan.Kind_Ptr
      )
      return NetFrameworkBase.Date;
      
      function ToOADate
      (
         this : in out DateTime.Kind
      )
      return NetFrameworkBase.Double;
      
      function ToFileTime
      (
         this : in out DateTime.Kind
      )
      return NetFrameworkBase.Int64;
      
      function ToFileTimeUtc
      (
         this : in out DateTime.Kind
      )
      return NetFrameworkBase.Int64;
      
      function ToLocalTime
      (
         this : in out DateTime.Kind
      )
      return NetFrameworkBase.Date;
      
      function ToString
      (
         this : in out DateTime.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function ToString
      (
         this : in out DateTime.Kind;
         format : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.BSTR;
      
      function ToString
      (
         this : in out DateTime.Kind;
         provider : NetFrameworkBase.System.IFormatProvider.Kind_Ptr
      )
      return NetFrameworkBase.BSTR;
      
      function ToString
      (
         this : in out DateTime.Kind;
         format : NetFrameworkBase.BSTR;
         provider : NetFrameworkBase.System.IFormatProvider.Kind_Ptr
      )
      return NetFrameworkBase.BSTR;
      
      function ToUniversalTime
      (
         this : in out DateTime.Kind
      )
      return NetFrameworkBase.Date;
      
      function TryParse
      (
         s : NetFrameworkBase.BSTR;
         result : out NetFrameworkBase.Date
      )
      return NetFrameworkBase.Boolean;
      
      function op_Addition
      (
         d : NetFrameworkBase.Date;
         t : NetFrameworkBase.System.TimeSpan.Kind_Ptr
      )
      return NetFrameworkBase.Date;
      
      function op_Subtraction
      (
         d : NetFrameworkBase.Date;
         t : NetFrameworkBase.System.TimeSpan.Kind_Ptr
      )
      return NetFrameworkBase.Date;
      
      function op_Subtraction
      (
         d1 : NetFrameworkBase.Date;
         d2 : NetFrameworkBase.Date
      )
      return NetFrameworkBase.System.TimeSpan.Kind_Ptr;
      
      function op_Equality
      (
         d1 : NetFrameworkBase.Date;
         d2 : NetFrameworkBase.Date
      )
      return NetFrameworkBase.Boolean;
      
      function op_Inequality
      (
         d1 : NetFrameworkBase.Date;
         d2 : NetFrameworkBase.Date
      )
      return NetFrameworkBase.Boolean;
      
      function op_LessThan
      (
         t1 : NetFrameworkBase.Date;
         t2 : NetFrameworkBase.Date
      )
      return NetFrameworkBase.Boolean;
      
      function op_LessThanOrEqual
      (
         t1 : NetFrameworkBase.Date;
         t2 : NetFrameworkBase.Date
      )
      return NetFrameworkBase.Boolean;
      
      function op_GreaterThan
      (
         t1 : NetFrameworkBase.Date;
         t2 : NetFrameworkBase.Date
      )
      return NetFrameworkBase.Boolean;
      
      function op_GreaterThanOrEqual
      (
         t1 : NetFrameworkBase.Date;
         t2 : NetFrameworkBase.Date
      )
      return NetFrameworkBase.Boolean;
      
      function GetDateTimeFormats
      (
         this : in out DateTime.Kind
      )
      return NetFrameworkBase.BSTR_Array;
      
      function GetDateTimeFormats
      (
         this : in out DateTime.Kind;
         provider : NetFrameworkBase.System.IFormatProvider.Kind_Ptr
      )
      return NetFrameworkBase.BSTR_Array;
      
      function GetDateTimeFormats
      (
         this : in out DateTime.Kind;
         format : NetFrameworkBase.Char
      )
      return NetFrameworkBase.BSTR_Array;
      
      function GetDateTimeFormats
      (
         this : in out DateTime.Kind;
         format : NetFrameworkBase.Char;
         provider : NetFrameworkBase.System.IFormatProvider.Kind_Ptr
      )
      return NetFrameworkBase.BSTR_Array;
      
      function GetTypeCode
      (
         this : in out DateTime.Kind
      )
      return NetFrameworkBase.System.TypeCode.Kind;
      
      function Parse
      (
         s : NetFrameworkBase.BSTR;
         provider : NetFrameworkBase.System.IFormatProvider.Kind_Ptr;
         styles : NetFrameworkBase.System.Globalization.DateTimeStyles.Kind
      )
      return NetFrameworkBase.Date;
      
      function ParseExact
      (
         s : NetFrameworkBase.BSTR;
         format : NetFrameworkBase.BSTR;
         provider : NetFrameworkBase.System.IFormatProvider.Kind_Ptr;
         style : NetFrameworkBase.System.Globalization.DateTimeStyles.Kind
      )
      return NetFrameworkBase.Date;
      
      function ToLongDateString
      (
         this : in out DateTime.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function ToLongTimeString
      (
         this : in out DateTime.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function ToShortTimeString
      (
         this : in out DateTime.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function TryParseExact
      (
         s : NetFrameworkBase.BSTR;
         format : NetFrameworkBase.BSTR;
         provider : NetFrameworkBase.System.IFormatProvider.Kind_Ptr;
         style : NetFrameworkBase.System.Globalization.DateTimeStyles.Kind;
         result : out NetFrameworkBase.Date
      )
      return NetFrameworkBase.Boolean;
      
      function TryParseExact
      (
         s : NetFrameworkBase.BSTR;
         formats : NetFrameworkBase.BSTR_Array;
         provider : NetFrameworkBase.System.IFormatProvider.Kind_Ptr;
         style : NetFrameworkBase.System.Globalization.DateTimeStyles.Kind;
         result : out NetFrameworkBase.Date
      )
      return NetFrameworkBase.Boolean;
      
      function ParseExact
      (
         s : NetFrameworkBase.BSTR;
         formats : NetFrameworkBase.BSTR_Array;
         provider : NetFrameworkBase.System.IFormatProvider.Kind_Ptr;
         style : NetFrameworkBase.System.Globalization.DateTimeStyles.Kind
      )
      return NetFrameworkBase.Date;
      
      function ToShortDateString
      (
         this : in out DateTime.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function TryParse
      (
         s : NetFrameworkBase.BSTR;
         provider : NetFrameworkBase.System.IFormatProvider.Kind_Ptr;
         styles : NetFrameworkBase.System.Globalization.DateTimeStyles.Kind;
         result : out NetFrameworkBase.Date
      )
      return NetFrameworkBase.Boolean;
      
      function Constructor
      (
         ticks : NetFrameworkBase.Int64
      )
      return NetFrameworkBase.System.DateTime.Kind_Ptr;
      
      function Constructor
      (
         ticks : NetFrameworkBase.Int64;
         kind : NetFrameworkBase.System.DateTimeKind.Kind
      )
      return NetFrameworkBase.System.DateTime.Kind_Ptr;
      
      function Constructor
      (
         year : NetFrameworkBase.Int32;
         month : NetFrameworkBase.Int32;
         day : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.DateTime.Kind_Ptr;
      
      function Constructor
      (
         year : NetFrameworkBase.Int32;
         month : NetFrameworkBase.Int32;
         day : NetFrameworkBase.Int32;
         calendar : NetFrameworkBase.System.Globalization.Calendar.Kind_Ptr
      )
      return NetFrameworkBase.System.DateTime.Kind_Ptr;
      
      function Constructor
      (
         year : NetFrameworkBase.Int32;
         month : NetFrameworkBase.Int32;
         day : NetFrameworkBase.Int32;
         hour : NetFrameworkBase.Int32;
         minute : NetFrameworkBase.Int32;
         second : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.DateTime.Kind_Ptr;
      
      function Constructor
      (
         year : NetFrameworkBase.Int32;
         month : NetFrameworkBase.Int32;
         day : NetFrameworkBase.Int32;
         hour : NetFrameworkBase.Int32;
         minute : NetFrameworkBase.Int32;
         second : NetFrameworkBase.Int32;
         kind : NetFrameworkBase.System.DateTimeKind.Kind
      )
      return NetFrameworkBase.System.DateTime.Kind_Ptr;
      
      function Constructor
      (
         year : NetFrameworkBase.Int32;
         month : NetFrameworkBase.Int32;
         day : NetFrameworkBase.Int32;
         hour : NetFrameworkBase.Int32;
         minute : NetFrameworkBase.Int32;
         second : NetFrameworkBase.Int32;
         calendar : NetFrameworkBase.System.Globalization.Calendar.Kind_Ptr
      )
      return NetFrameworkBase.System.DateTime.Kind_Ptr;
      
      function Constructor
      (
         year : NetFrameworkBase.Int32;
         month : NetFrameworkBase.Int32;
         day : NetFrameworkBase.Int32;
         hour : NetFrameworkBase.Int32;
         minute : NetFrameworkBase.Int32;
         second : NetFrameworkBase.Int32;
         millisecond : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.DateTime.Kind_Ptr;
      
      function Constructor
      (
         year : NetFrameworkBase.Int32;
         month : NetFrameworkBase.Int32;
         day : NetFrameworkBase.Int32;
         hour : NetFrameworkBase.Int32;
         minute : NetFrameworkBase.Int32;
         second : NetFrameworkBase.Int32;
         millisecond : NetFrameworkBase.Int32;
         kind : NetFrameworkBase.System.DateTimeKind.Kind
      )
      return NetFrameworkBase.System.DateTime.Kind_Ptr;
      
      function Constructor
      (
         year : NetFrameworkBase.Int32;
         month : NetFrameworkBase.Int32;
         day : NetFrameworkBase.Int32;
         hour : NetFrameworkBase.Int32;
         minute : NetFrameworkBase.Int32;
         second : NetFrameworkBase.Int32;
         millisecond : NetFrameworkBase.Int32;
         calendar : NetFrameworkBase.System.Globalization.Calendar.Kind_Ptr
      )
      return NetFrameworkBase.System.DateTime.Kind_Ptr;
      
      function Constructor
      (
         year : NetFrameworkBase.Int32;
         month : NetFrameworkBase.Int32;
         day : NetFrameworkBase.Int32;
         hour : NetFrameworkBase.Int32;
         minute : NetFrameworkBase.Int32;
         second : NetFrameworkBase.Int32;
         millisecond : NetFrameworkBase.Int32;
         calendar : NetFrameworkBase.System.Globalization.Calendar.Kind_Ptr;
         kind : NetFrameworkBase.System.DateTimeKind.Kind
      )
      return NetFrameworkBase.System.DateTime.Kind_Ptr;
      
end;
