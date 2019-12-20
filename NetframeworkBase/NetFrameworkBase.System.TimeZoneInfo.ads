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
limited with NetFrameworkBase.System.DateTimeOffset;
limited with NetFrameworkBase.System.TimeSpan;
limited with NetFrameworkBase.System.TimeZoneInfo.AdjustmentRule;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.TimeZoneInfo is
   
   type Kind is new NetFrameworkBase.System.Object.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function Id
      (
         this : in out TimeZoneInfo.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function DisplayName
      (
         this : in out TimeZoneInfo.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function StandardName
      (
         this : in out TimeZoneInfo.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function DaylightName
      (
         this : in out TimeZoneInfo.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function BaseUtcOffset
      (
         this : in out TimeZoneInfo.Kind
      )
      return NetFrameworkBase.System.TimeSpan.Kind_Ptr;
      
      function SupportsDaylightSavingTime
      (
         this : in out TimeZoneInfo.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function GetAdjustmentRules
      (
         this : in out TimeZoneInfo.Kind
      )
      return NetFrameworkBase.System.TimeZoneInfo.AdjustmentRule.Kind_Array;
      
      function GetAmbiguousTimeOffsets
      (
         this : in out TimeZoneInfo.Kind;
         dateTimeOffset : NetFrameworkBase.System.DateTimeOffset.Kind_Ptr
      )
      return NetFrameworkBase.System.TimeSpan.Kind_Array_Ptr;
      
      function GetAmbiguousTimeOffsets
      (
         this : in out TimeZoneInfo.Kind;
         dateTime : NetFrameworkBase.Date
      )
      return NetFrameworkBase.System.TimeSpan.Kind_Array_Ptr;
      
      function GetUtcOffset
      (
         this : in out TimeZoneInfo.Kind;
         dateTimeOffset : NetFrameworkBase.System.DateTimeOffset.Kind_Ptr
      )
      return NetFrameworkBase.System.TimeSpan.Kind_Ptr;
      
      function GetUtcOffset
      (
         this : in out TimeZoneInfo.Kind;
         dateTime : NetFrameworkBase.Date
      )
      return NetFrameworkBase.System.TimeSpan.Kind_Ptr;
      
      function IsAmbiguousTime
      (
         this : in out TimeZoneInfo.Kind;
         dateTimeOffset : NetFrameworkBase.System.DateTimeOffset.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      
      function IsAmbiguousTime
      (
         this : in out TimeZoneInfo.Kind;
         dateTime : NetFrameworkBase.Date
      )
      return NetFrameworkBase.Boolean;
      
      function IsDaylightSavingTime
      (
         this : in out TimeZoneInfo.Kind;
         dateTimeOffset : NetFrameworkBase.System.DateTimeOffset.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      
      function IsDaylightSavingTime
      (
         this : in out TimeZoneInfo.Kind;
         dateTime : NetFrameworkBase.Date
      )
      return NetFrameworkBase.Boolean;
      
      function IsInvalidTime
      (
         this : in out TimeZoneInfo.Kind;
         dateTime : NetFrameworkBase.Date
      )
      return NetFrameworkBase.Boolean;
      
      procedure ClearCachedData
      ;
      
      function ConvertTimeBySystemTimeZoneId
      (
         dateTimeOffset : NetFrameworkBase.System.DateTimeOffset.Kind_Ptr; 
         destinationTimeZoneId : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.DateTimeOffset.Kind_Ptr;
      
      function ConvertTimeBySystemTimeZoneId
      (
         dateTime : NetFrameworkBase.Date; 
         destinationTimeZoneId : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.Date;
      
      function ConvertTimeBySystemTimeZoneId
      (
         dateTime : NetFrameworkBase.Date; 
         sourceTimeZoneId : NetFrameworkBase.BSTR; 
         destinationTimeZoneId : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.Date;
      
      function ConvertTime
      (
         dateTimeOffset : NetFrameworkBase.System.DateTimeOffset.Kind_Ptr; 
         destinationTimeZone : NetFrameworkBase.System.TimeZoneInfo.Kind_Ptr
      )
      return NetFrameworkBase.System.DateTimeOffset.Kind_Ptr;
      
      function ConvertTime
      (
         dateTime : NetFrameworkBase.Date; 
         destinationTimeZone : NetFrameworkBase.System.TimeZoneInfo.Kind_Ptr
      )
      return NetFrameworkBase.Date;
      
      function ConvertTime
      (
         dateTime : NetFrameworkBase.Date; 
         sourceTimeZone : NetFrameworkBase.System.TimeZoneInfo.Kind_Ptr; 
         destinationTimeZone : NetFrameworkBase.System.TimeZoneInfo.Kind_Ptr
      )
      return NetFrameworkBase.Date;
      
      function ConvertTimeFromUtc
      (
         dateTime : NetFrameworkBase.Date; 
         destinationTimeZone : NetFrameworkBase.System.TimeZoneInfo.Kind_Ptr
      )
      return NetFrameworkBase.Date;
      
      function ConvertTimeToUtc
      (
         dateTime : NetFrameworkBase.Date
      )
      return NetFrameworkBase.Date;
      
      function ConvertTimeToUtc
      (
         dateTime : NetFrameworkBase.Date; 
         sourceTimeZone : NetFrameworkBase.System.TimeZoneInfo.Kind_Ptr
      )
      return NetFrameworkBase.Date;
      
      function Equals
      (
         this : in out TimeZoneInfo.Kind;
         other : NetFrameworkBase.System.TimeZoneInfo.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      
      function Equals
      (
         this : in out TimeZoneInfo.Kind;
         obj : NetFrameworkBase.System.Object.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      
      function FromSerializedString
      (
         source : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.TimeZoneInfo.Kind_Ptr;
      
      function GetHashCode
      (
         this : in out TimeZoneInfo.Kind
      )
      return NetFrameworkBase.Int32;
      
      function HasSameRules
      (
         this : in out TimeZoneInfo.Kind;
         other : NetFrameworkBase.System.TimeZoneInfo.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      
      function Local
      return NetFrameworkBase.System.TimeZoneInfo.Kind_Ptr;
      
      function ToSerializedString
      (
         this : in out TimeZoneInfo.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function ToString
      (
         this : in out TimeZoneInfo.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function Utc
      return NetFrameworkBase.System.TimeZoneInfo.Kind_Ptr;
      
      function CreateCustomTimeZone
      (
         id : NetFrameworkBase.BSTR; 
         baseUtcOffset : NetFrameworkBase.System.TimeSpan.Kind_Ptr; 
         displayName : NetFrameworkBase.BSTR; 
         standardDisplayName : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.TimeZoneInfo.Kind_Ptr;
      
      function CreateCustomTimeZone
      (
         id : NetFrameworkBase.BSTR; 
         baseUtcOffset : NetFrameworkBase.System.TimeSpan.Kind_Ptr; 
         displayName : NetFrameworkBase.BSTR; 
         standardDisplayName : NetFrameworkBase.BSTR; 
         daylightDisplayName : NetFrameworkBase.BSTR; 
         adjustmentRules : NetFrameworkBase.System.TimeZoneInfo.AdjustmentRule.Kind_Array
      )
      return NetFrameworkBase.System.TimeZoneInfo.Kind_Ptr;
      
      function CreateCustomTimeZone
      (
         id : NetFrameworkBase.BSTR; 
         baseUtcOffset : NetFrameworkBase.System.TimeSpan.Kind_Ptr; 
         displayName : NetFrameworkBase.BSTR; 
         standardDisplayName : NetFrameworkBase.BSTR; 
         daylightDisplayName : NetFrameworkBase.BSTR; 
         adjustmentRules : NetFrameworkBase.System.TimeZoneInfo.AdjustmentRule.Kind_Array; 
         disableDaylightSavingTime : NetFrameworkBase.Boolean
      )
      return NetFrameworkBase.System.TimeZoneInfo.Kind_Ptr;
      
      function FindSystemTimeZoneById
      (
         id : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.TimeZoneInfo.Kind_Ptr;
      
end;
