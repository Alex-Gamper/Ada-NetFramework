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
with NetFrameworkBase.System.Object;
limited with NetFrameworkBase.System.IFormatProvider;
limited with NetFrameworkBase.System.Globalization.NumberStyles;
limited with NetFrameworkBase.System.TypeCode;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.UInt64 is
   
   type Kind is new NetFrameworkBase.System.ValueType.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function CompareTo
      (
         this : in out UInt64.Kind;
         value : NetFrameworkBase.System.Object.Kind_Ptr
      )
      return NetFrameworkBase.Int32;
      
      function CompareTo
      (
         this : in out UInt64.Kind;
         value : NetFrameworkBase.UInt64
      )
      return NetFrameworkBase.Int32;
      
      function Equals
      (
         this : in out UInt64.Kind;
         obj : NetFrameworkBase.System.Object.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      
      function Equals
      (
         this : in out UInt64.Kind;
         obj : NetFrameworkBase.UInt64
      )
      return NetFrameworkBase.Boolean;
      
      function GetHashCode
      (
         this : in out UInt64.Kind
      )
      return NetFrameworkBase.Int32;
      
      function ToString
      (
         this : in out UInt64.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function ToString
      (
         this : in out UInt64.Kind;
         provider : NetFrameworkBase.System.IFormatProvider.Kind_Ptr
      )
      return NetFrameworkBase.BSTR;
      
      function ToString
      (
         this : in out UInt64.Kind;
         format : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.BSTR;
      
      function ToString
      (
         this : in out UInt64.Kind;
         format : NetFrameworkBase.BSTR;
         provider : NetFrameworkBase.System.IFormatProvider.Kind_Ptr
      )
      return NetFrameworkBase.BSTR;
      
      function Parse
      (
         s : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.UInt64;
      
      function Parse
      (
         s : NetFrameworkBase.BSTR;
         style : NetFrameworkBase.System.Globalization.NumberStyles.Kind
      )
      return NetFrameworkBase.UInt64;
      
      function Parse
      (
         s : NetFrameworkBase.BSTR;
         provider : NetFrameworkBase.System.IFormatProvider.Kind_Ptr
      )
      return NetFrameworkBase.UInt64;
      
      function Parse
      (
         s : NetFrameworkBase.BSTR;
         style : NetFrameworkBase.System.Globalization.NumberStyles.Kind;
         provider : NetFrameworkBase.System.IFormatProvider.Kind_Ptr
      )
      return NetFrameworkBase.UInt64;
      
      function TryParse
      (
         s : NetFrameworkBase.BSTR;
         result : out NetFrameworkBase.UInt64
      )
      return NetFrameworkBase.Boolean;
      
      function TryParse
      (
         s : NetFrameworkBase.BSTR;
         style : NetFrameworkBase.System.Globalization.NumberStyles.Kind;
         provider : NetFrameworkBase.System.IFormatProvider.Kind_Ptr;
         result : out NetFrameworkBase.UInt64
      )
      return NetFrameworkBase.Boolean;
      
      function GetTypeCode
      (
         this : in out UInt64.Kind
      )
      return NetFrameworkBase.System.TypeCode.Kind;
      
      function Constructor return NetFrameworkBase.System.UInt64.Kind_Ptr;
      
end;
