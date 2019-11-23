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
limited with NetFrameworkBase.System.MidpointRounding;
limited with NetFrameworkBase.System.TypeCode;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Decimal is
   
   type Kind is new NetFrameworkBase.System.ValueType.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function ToOACurrency
      (
         value : NetFrameworkBase.System.Decimal.Kind_Ptr
      )
      return NetFrameworkBase.Int64;
      
      function FromOACurrency
      (
         cy : NetFrameworkBase.Int64
      )
      return NetFrameworkBase.System.Decimal.Kind_Ptr;
      
      function Add
      (
         d1 : NetFrameworkBase.System.Decimal.Kind_Ptr; 
         d2 : NetFrameworkBase.System.Decimal.Kind_Ptr
      )
      return NetFrameworkBase.System.Decimal.Kind_Ptr;
      
      function Ceiling
      (
         d : NetFrameworkBase.System.Decimal.Kind_Ptr
      )
      return NetFrameworkBase.System.Decimal.Kind_Ptr;
      
      function Compare
      (
         d1 : NetFrameworkBase.System.Decimal.Kind_Ptr; 
         d2 : NetFrameworkBase.System.Decimal.Kind_Ptr
      )
      return NetFrameworkBase.Int32;
      
      function CompareTo
      (
         this : in out Decimal.Kind;
         value : NetFrameworkBase.System.Object.Kind_Ptr
      )
      return NetFrameworkBase.Int32;
      
      function CompareTo
      (
         this : in out Decimal.Kind;
         value : NetFrameworkBase.System.Decimal.Kind_Ptr
      )
      return NetFrameworkBase.Int32;
      
      function Divide
      (
         d1 : NetFrameworkBase.System.Decimal.Kind_Ptr; 
         d2 : NetFrameworkBase.System.Decimal.Kind_Ptr
      )
      return NetFrameworkBase.System.Decimal.Kind_Ptr;
      
      function Equals
      (
         this : in out Decimal.Kind;
         value : NetFrameworkBase.System.Object.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      
      function Equals
      (
         this : in out Decimal.Kind;
         value : NetFrameworkBase.System.Decimal.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      
      function Equals
      (
         d1 : NetFrameworkBase.System.Decimal.Kind_Ptr; 
         d2 : NetFrameworkBase.System.Decimal.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      
      function Floor
      (
         d : NetFrameworkBase.System.Decimal.Kind_Ptr
      )
      return NetFrameworkBase.System.Decimal.Kind_Ptr;
      
      function ToString
      (
         this : in out Decimal.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function ToString
      (
         this : in out Decimal.Kind;
         format : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.BSTR;
      
      function ToString
      (
         this : in out Decimal.Kind;
         provider : NetFrameworkBase.System.IFormatProvider.Kind_Ptr
      )
      return NetFrameworkBase.BSTR;
      
      function ToString
      (
         this : in out Decimal.Kind;
         format : NetFrameworkBase.BSTR; 
         provider : NetFrameworkBase.System.IFormatProvider.Kind_Ptr
      )
      return NetFrameworkBase.BSTR;
      
      function Parse
      (
         s : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Decimal.Kind_Ptr;
      
      function Parse
      (
         s : NetFrameworkBase.BSTR; 
         style : NetFrameworkBase.System.Globalization.NumberStyles.Kind
      )
      return NetFrameworkBase.System.Decimal.Kind_Ptr;
      
      function Parse
      (
         s : NetFrameworkBase.BSTR; 
         provider : NetFrameworkBase.System.IFormatProvider.Kind_Ptr
      )
      return NetFrameworkBase.System.Decimal.Kind_Ptr;
      
      function Parse
      (
         s : NetFrameworkBase.BSTR; 
         style : NetFrameworkBase.System.Globalization.NumberStyles.Kind; 
         provider : NetFrameworkBase.System.IFormatProvider.Kind_Ptr
      )
      return NetFrameworkBase.System.Decimal.Kind_Ptr;
      
      function TryParse
      (
         s : NetFrameworkBase.BSTR; 
         result : out NetFrameworkBase.System.Decimal.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      
      function TryParse
      (
         s : NetFrameworkBase.BSTR; 
         style : NetFrameworkBase.System.Globalization.NumberStyles.Kind; 
         provider : NetFrameworkBase.System.IFormatProvider.Kind_Ptr; 
         result : out NetFrameworkBase.System.Decimal.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      
      function GetBits
      (
         d : NetFrameworkBase.System.Decimal.Kind_Ptr
      )
      return NetFrameworkBase.Int32_Array;
      
      function Remainder
      (
         d1 : NetFrameworkBase.System.Decimal.Kind_Ptr; 
         d2 : NetFrameworkBase.System.Decimal.Kind_Ptr
      )
      return NetFrameworkBase.System.Decimal.Kind_Ptr;
      
      function Multiply
      (
         d1 : NetFrameworkBase.System.Decimal.Kind_Ptr; 
         d2 : NetFrameworkBase.System.Decimal.Kind_Ptr
      )
      return NetFrameworkBase.System.Decimal.Kind_Ptr;
      
      function Negate
      (
         d : NetFrameworkBase.System.Decimal.Kind_Ptr
      )
      return NetFrameworkBase.System.Decimal.Kind_Ptr;
      
      function Round
      (
         d : NetFrameworkBase.System.Decimal.Kind_Ptr
      )
      return NetFrameworkBase.System.Decimal.Kind_Ptr;
      
      function Round
      (
         d : NetFrameworkBase.System.Decimal.Kind_Ptr; 
         decimals : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.Decimal.Kind_Ptr;
      
      function Round
      (
         d : NetFrameworkBase.System.Decimal.Kind_Ptr; 
         mode : NetFrameworkBase.System.MidpointRounding.Kind
      )
      return NetFrameworkBase.System.Decimal.Kind_Ptr;
      
      function Round
      (
         d : NetFrameworkBase.System.Decimal.Kind_Ptr; 
         decimals : NetFrameworkBase.Int32; 
         mode : NetFrameworkBase.System.MidpointRounding.Kind
      )
      return NetFrameworkBase.System.Decimal.Kind_Ptr;
      
      function Subtract
      (
         d1 : NetFrameworkBase.System.Decimal.Kind_Ptr; 
         d2 : NetFrameworkBase.System.Decimal.Kind_Ptr
      )
      return NetFrameworkBase.System.Decimal.Kind_Ptr;
      
      function ToByte
      (
         value : NetFrameworkBase.System.Decimal.Kind_Ptr
      )
      return NetFrameworkBase.Byte;
      
      function ToSByte
      (
         value : NetFrameworkBase.System.Decimal.Kind_Ptr
      )
      return NetFrameworkBase.SByte;
      
      function ToInt16
      (
         value : NetFrameworkBase.System.Decimal.Kind_Ptr
      )
      return NetFrameworkBase.Int16;
      
      function ToInt32
      (
         d : NetFrameworkBase.System.Decimal.Kind_Ptr
      )
      return NetFrameworkBase.Int32;
      
      function ToInt64
      (
         d : NetFrameworkBase.System.Decimal.Kind_Ptr
      )
      return NetFrameworkBase.Int64;
      
      function ToUInt16
      (
         value : NetFrameworkBase.System.Decimal.Kind_Ptr
      )
      return NetFrameworkBase.UInt16;
      
      function ToUInt32
      (
         d : NetFrameworkBase.System.Decimal.Kind_Ptr
      )
      return NetFrameworkBase.UInt32;
      
      function ToUInt64
      (
         d : NetFrameworkBase.System.Decimal.Kind_Ptr
      )
      return NetFrameworkBase.UInt64;
      
      function Truncate
      (
         d : NetFrameworkBase.System.Decimal.Kind_Ptr
      )
      return NetFrameworkBase.System.Decimal.Kind_Ptr;
      
      function op_Implicit
      (
         value : NetFrameworkBase.Byte
      )
      return NetFrameworkBase.System.Decimal.Kind_Ptr;
      
      function op_Implicit
      (
         value : NetFrameworkBase.SByte
      )
      return NetFrameworkBase.System.Decimal.Kind_Ptr;
      
      function op_Implicit
      (
         value : NetFrameworkBase.Int16
      )
      return NetFrameworkBase.System.Decimal.Kind_Ptr;
      
      function op_Implicit
      (
         value : NetFrameworkBase.UInt16
      )
      return NetFrameworkBase.System.Decimal.Kind_Ptr;
      
      function op_Implicit
      (
         value : NetFrameworkBase.Wide_Char
      )
      return NetFrameworkBase.System.Decimal.Kind_Ptr;
      
      function op_Implicit
      (
         value : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.Decimal.Kind_Ptr;
      
      function op_Implicit
      (
         value : NetFrameworkBase.UInt32
      )
      return NetFrameworkBase.System.Decimal.Kind_Ptr;
      
      function op_Implicit
      (
         value : NetFrameworkBase.Int64
      )
      return NetFrameworkBase.System.Decimal.Kind_Ptr;
      
      function op_Implicit
      (
         value : NetFrameworkBase.UInt64
      )
      return NetFrameworkBase.System.Decimal.Kind_Ptr;
      
      function op_Explicit
      (
         value : NetFrameworkBase.Single
      )
      return NetFrameworkBase.System.Decimal.Kind_Ptr;
      
      function op_Explicit
      (
         value : NetFrameworkBase.Double
      )
      return NetFrameworkBase.System.Decimal.Kind_Ptr;
      
      function op_Explicit
      (
         value : NetFrameworkBase.System.Decimal.Kind_Ptr
      )
      return NetFrameworkBase.Byte;
      
      function op_Explicit
      (
         value : NetFrameworkBase.System.Decimal.Kind_Ptr
      )
      return NetFrameworkBase.SByte;
      
      function op_Explicit
      (
         value : NetFrameworkBase.System.Decimal.Kind_Ptr
      )
      return NetFrameworkBase.Wide_Char;
      
      function op_Explicit
      (
         value : NetFrameworkBase.System.Decimal.Kind_Ptr
      )
      return NetFrameworkBase.Int16;
      
      function op_Explicit
      (
         value : NetFrameworkBase.System.Decimal.Kind_Ptr
      )
      return NetFrameworkBase.UInt16;
      
      function op_Explicit
      (
         value : NetFrameworkBase.System.Decimal.Kind_Ptr
      )
      return NetFrameworkBase.Int32;
      
      function op_Explicit
      (
         value : NetFrameworkBase.System.Decimal.Kind_Ptr
      )
      return NetFrameworkBase.UInt32;
      
      function op_Explicit
      (
         value : NetFrameworkBase.System.Decimal.Kind_Ptr
      )
      return NetFrameworkBase.Int64;
      
      function op_Explicit
      (
         value : NetFrameworkBase.System.Decimal.Kind_Ptr
      )
      return NetFrameworkBase.UInt64;
      
      function op_Explicit
      (
         value : NetFrameworkBase.System.Decimal.Kind_Ptr
      )
      return NetFrameworkBase.Single;
      
      function op_Explicit
      (
         value : NetFrameworkBase.System.Decimal.Kind_Ptr
      )
      return NetFrameworkBase.Double;
      
      function op_UnaryPlus
      (
         d : NetFrameworkBase.System.Decimal.Kind_Ptr
      )
      return NetFrameworkBase.System.Decimal.Kind_Ptr;
      
      function op_UnaryNegation
      (
         d : NetFrameworkBase.System.Decimal.Kind_Ptr
      )
      return NetFrameworkBase.System.Decimal.Kind_Ptr;
      
      function op_Increment
      (
         d : NetFrameworkBase.System.Decimal.Kind_Ptr
      )
      return NetFrameworkBase.System.Decimal.Kind_Ptr;
      
      function op_Decrement
      (
         d : NetFrameworkBase.System.Decimal.Kind_Ptr
      )
      return NetFrameworkBase.System.Decimal.Kind_Ptr;
      
      function op_Addition
      (
         d1 : NetFrameworkBase.System.Decimal.Kind_Ptr; 
         d2 : NetFrameworkBase.System.Decimal.Kind_Ptr
      )
      return NetFrameworkBase.System.Decimal.Kind_Ptr;
      function "+"(d1 : NetFrameworkBase.System.Decimal.Kind_Ptr; d2 : NetFrameworkBase.System.Decimal.Kind_Ptr) return NetFrameworkBase.System.Decimal.Kind_Ptr renames op_Addition;
      
      function op_Subtraction
      (
         d1 : NetFrameworkBase.System.Decimal.Kind_Ptr; 
         d2 : NetFrameworkBase.System.Decimal.Kind_Ptr
      )
      return NetFrameworkBase.System.Decimal.Kind_Ptr;
      function "-"(d1 : NetFrameworkBase.System.Decimal.Kind_Ptr; d2 : NetFrameworkBase.System.Decimal.Kind_Ptr) return NetFrameworkBase.System.Decimal.Kind_Ptr renames op_Subtraction;
      
      function op_Multiply
      (
         d1 : NetFrameworkBase.System.Decimal.Kind_Ptr; 
         d2 : NetFrameworkBase.System.Decimal.Kind_Ptr
      )
      return NetFrameworkBase.System.Decimal.Kind_Ptr;
      
      function op_Division
      (
         d1 : NetFrameworkBase.System.Decimal.Kind_Ptr; 
         d2 : NetFrameworkBase.System.Decimal.Kind_Ptr
      )
      return NetFrameworkBase.System.Decimal.Kind_Ptr;
      
      function op_Modulus
      (
         d1 : NetFrameworkBase.System.Decimal.Kind_Ptr; 
         d2 : NetFrameworkBase.System.Decimal.Kind_Ptr
      )
      return NetFrameworkBase.System.Decimal.Kind_Ptr;
      
      function op_Equality
      (
         d1 : NetFrameworkBase.System.Decimal.Kind_Ptr; 
         d2 : NetFrameworkBase.System.Decimal.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      
      function op_Inequality
      (
         d1 : NetFrameworkBase.System.Decimal.Kind_Ptr; 
         d2 : NetFrameworkBase.System.Decimal.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      
      function op_LessThan
      (
         d1 : NetFrameworkBase.System.Decimal.Kind_Ptr; 
         d2 : NetFrameworkBase.System.Decimal.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      function "<"(d1 : NetFrameworkBase.System.Decimal.Kind_Ptr; d2 : NetFrameworkBase.System.Decimal.Kind_Ptr) return NetFrameworkBase.Boolean renames op_LessThan;
      
      function op_LessThanOrEqual
      (
         d1 : NetFrameworkBase.System.Decimal.Kind_Ptr; 
         d2 : NetFrameworkBase.System.Decimal.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      function "<="(d1 : NetFrameworkBase.System.Decimal.Kind_Ptr; d2 : NetFrameworkBase.System.Decimal.Kind_Ptr) return NetFrameworkBase.Boolean renames op_LessThanOrEqual;
      
      function op_GreaterThan
      (
         d1 : NetFrameworkBase.System.Decimal.Kind_Ptr; 
         d2 : NetFrameworkBase.System.Decimal.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      function ">"(d1 : NetFrameworkBase.System.Decimal.Kind_Ptr; d2 : NetFrameworkBase.System.Decimal.Kind_Ptr) return NetFrameworkBase.Boolean renames op_GreaterThan;
      
      function op_GreaterThanOrEqual
      (
         d1 : NetFrameworkBase.System.Decimal.Kind_Ptr; 
         d2 : NetFrameworkBase.System.Decimal.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      function ">="(d1 : NetFrameworkBase.System.Decimal.Kind_Ptr; d2 : NetFrameworkBase.System.Decimal.Kind_Ptr) return NetFrameworkBase.Boolean renames op_GreaterThanOrEqual;
      
      function GetTypeCode
      (
         this : in out Decimal.Kind
      )
      return NetFrameworkBase.System.TypeCode.Kind;
      
      function GetHashCode
      (
         this : in out Decimal.Kind
      )
      return NetFrameworkBase.Int32;
      
      function ToDouble
      (
         d : NetFrameworkBase.System.Decimal.Kind_Ptr
      )
      return NetFrameworkBase.Double;
      
      function ToSingle
      (
         d : NetFrameworkBase.System.Decimal.Kind_Ptr
      )
      return NetFrameworkBase.Single;
      
      function Constructor
      (
         value : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.Decimal.Kind_Ptr;
      
      function Constructor
      (
         value : NetFrameworkBase.UInt32
      )
      return NetFrameworkBase.System.Decimal.Kind_Ptr;
      
      function Constructor
      (
         value : NetFrameworkBase.Int64
      )
      return NetFrameworkBase.System.Decimal.Kind_Ptr;
      
      function Constructor
      (
         value : NetFrameworkBase.UInt64
      )
      return NetFrameworkBase.System.Decimal.Kind_Ptr;
      
      function Constructor
      (
         value : NetFrameworkBase.Single
      )
      return NetFrameworkBase.System.Decimal.Kind_Ptr;
      
      function Constructor
      (
         value : NetFrameworkBase.Double
      )
      return NetFrameworkBase.System.Decimal.Kind_Ptr;
      
      function Constructor
      (
         bits : NetFrameworkBase.Int32_Array
      )
      return NetFrameworkBase.System.Decimal.Kind_Ptr;
      
      function Constructor
      (
         lo : NetFrameworkBase.Int32;
         mid : NetFrameworkBase.Int32;
         hi : NetFrameworkBase.Int32;
         isNegative : NetFrameworkBase.Boolean;
         scale : NetFrameworkBase.Byte
      )
      return NetFrameworkBase.System.Decimal.Kind_Ptr;
      
end;
