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
limited with NetFrameworkBase.System.Numerics.BigInteger;
limited with NetFrameworkBase.System.Decimal;
limited with NetFrameworkBase.System.IFormatProvider;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Numerics.Complex is
   
   type Kind is new NetFrameworkBase.System.ValueType.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function Real
      (
         this : in out Complex.Kind
      )
      return NetFrameworkBase.Double;
      
      function Imaginary
      (
         this : in out Complex.Kind
      )
      return NetFrameworkBase.Double;
      
      function Magnitude
      (
         this : in out Complex.Kind
      )
      return NetFrameworkBase.Double;
      
      function Phase
      (
         this : in out Complex.Kind
      )
      return NetFrameworkBase.Double;
      
      function FromPolarCoordinates
      (
         magnitude : NetFrameworkBase.Double; 
         phase : NetFrameworkBase.Double
      )
      return NetFrameworkBase.System.Numerics.Complex.Kind_Ptr;
      
      function Negate
      (
         value : NetFrameworkBase.System.Numerics.Complex.Kind_Ptr
      )
      return NetFrameworkBase.System.Numerics.Complex.Kind_Ptr;
      
      function Add
      (
         left : NetFrameworkBase.System.Numerics.Complex.Kind_Ptr; 
         right : NetFrameworkBase.System.Numerics.Complex.Kind_Ptr
      )
      return NetFrameworkBase.System.Numerics.Complex.Kind_Ptr;
      
      function Subtract
      (
         left : NetFrameworkBase.System.Numerics.Complex.Kind_Ptr; 
         right : NetFrameworkBase.System.Numerics.Complex.Kind_Ptr
      )
      return NetFrameworkBase.System.Numerics.Complex.Kind_Ptr;
      
      function Multiply
      (
         left : NetFrameworkBase.System.Numerics.Complex.Kind_Ptr; 
         right : NetFrameworkBase.System.Numerics.Complex.Kind_Ptr
      )
      return NetFrameworkBase.System.Numerics.Complex.Kind_Ptr;
      
      function Divide
      (
         dividend : NetFrameworkBase.System.Numerics.Complex.Kind_Ptr; 
         divisor : NetFrameworkBase.System.Numerics.Complex.Kind_Ptr
      )
      return NetFrameworkBase.System.Numerics.Complex.Kind_Ptr;
      
      function op_UnaryNegation
      (
         value : NetFrameworkBase.System.Numerics.Complex.Kind_Ptr
      )
      return NetFrameworkBase.System.Numerics.Complex.Kind_Ptr;
      function "-"(value : NetFrameworkBase.System.Numerics.Complex.Kind_Ptr) return NetFrameworkBase.System.Numerics.Complex.Kind_Ptr renames op_UnaryNegation;
      
      function op_Addition
      (
         left : NetFrameworkBase.System.Numerics.Complex.Kind_Ptr; 
         right : NetFrameworkBase.System.Numerics.Complex.Kind_Ptr
      )
      return NetFrameworkBase.System.Numerics.Complex.Kind_Ptr;
      function "+"(left : NetFrameworkBase.System.Numerics.Complex.Kind_Ptr; right : NetFrameworkBase.System.Numerics.Complex.Kind_Ptr) return NetFrameworkBase.System.Numerics.Complex.Kind_Ptr renames op_Addition;
      
      function op_Subtraction
      (
         left : NetFrameworkBase.System.Numerics.Complex.Kind_Ptr; 
         right : NetFrameworkBase.System.Numerics.Complex.Kind_Ptr
      )
      return NetFrameworkBase.System.Numerics.Complex.Kind_Ptr;
      function "-"(left : NetFrameworkBase.System.Numerics.Complex.Kind_Ptr; right : NetFrameworkBase.System.Numerics.Complex.Kind_Ptr) return NetFrameworkBase.System.Numerics.Complex.Kind_Ptr renames op_Subtraction;
      
      function op_Multiply
      (
         left : NetFrameworkBase.System.Numerics.Complex.Kind_Ptr; 
         right : NetFrameworkBase.System.Numerics.Complex.Kind_Ptr
      )
      return NetFrameworkBase.System.Numerics.Complex.Kind_Ptr;
      
      function op_Division
      (
         left : NetFrameworkBase.System.Numerics.Complex.Kind_Ptr; 
         right : NetFrameworkBase.System.Numerics.Complex.Kind_Ptr
      )
      return NetFrameworkBase.System.Numerics.Complex.Kind_Ptr;
      
      function Abs_x
      (
         value : NetFrameworkBase.System.Numerics.Complex.Kind_Ptr
      )
      return NetFrameworkBase.Double;
      
      function Conjugate
      (
         value : NetFrameworkBase.System.Numerics.Complex.Kind_Ptr
      )
      return NetFrameworkBase.System.Numerics.Complex.Kind_Ptr;
      
      function Reciprocal
      (
         value : NetFrameworkBase.System.Numerics.Complex.Kind_Ptr
      )
      return NetFrameworkBase.System.Numerics.Complex.Kind_Ptr;
      
      function op_Equality
      (
         left : NetFrameworkBase.System.Numerics.Complex.Kind_Ptr; 
         right : NetFrameworkBase.System.Numerics.Complex.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      function "="(left : NetFrameworkBase.System.Numerics.Complex.Kind_Ptr; right : NetFrameworkBase.System.Numerics.Complex.Kind_Ptr) return NetFrameworkBase.Boolean renames op_Equality;
      
      function op_Inequality
      (
         left : NetFrameworkBase.System.Numerics.Complex.Kind_Ptr; 
         right : NetFrameworkBase.System.Numerics.Complex.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      
      function Equals
      (
         this : in out Complex.Kind;
         obj : NetFrameworkBase.System.Object.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      
      function Equals
      (
         this : in out Complex.Kind;
         value : NetFrameworkBase.System.Numerics.Complex.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      
      function op_Implicit
      (
         value : NetFrameworkBase.Int16
      )
      return NetFrameworkBase.System.Numerics.Complex.Kind_Ptr;
      
      function op_Implicit
      (
         value : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.Numerics.Complex.Kind_Ptr;
      
      function op_Implicit
      (
         value : NetFrameworkBase.Int64
      )
      return NetFrameworkBase.System.Numerics.Complex.Kind_Ptr;
      
      function op_Implicit
      (
         value : NetFrameworkBase.UInt16
      )
      return NetFrameworkBase.System.Numerics.Complex.Kind_Ptr;
      
      function op_Implicit
      (
         value : NetFrameworkBase.UInt32
      )
      return NetFrameworkBase.System.Numerics.Complex.Kind_Ptr;
      
      function op_Implicit
      (
         value : NetFrameworkBase.UInt64
      )
      return NetFrameworkBase.System.Numerics.Complex.Kind_Ptr;
      
      function op_Implicit
      (
         value : NetFrameworkBase.SByte
      )
      return NetFrameworkBase.System.Numerics.Complex.Kind_Ptr;
      
      function op_Implicit
      (
         value : NetFrameworkBase.Byte
      )
      return NetFrameworkBase.System.Numerics.Complex.Kind_Ptr;
      
      function op_Implicit
      (
         value : NetFrameworkBase.Single
      )
      return NetFrameworkBase.System.Numerics.Complex.Kind_Ptr;
      
      function op_Implicit
      (
         value : NetFrameworkBase.Double
      )
      return NetFrameworkBase.System.Numerics.Complex.Kind_Ptr;
      
      function op_Explicit
      (
         value : NetFrameworkBase.System.Numerics.BigInteger.Kind_Ptr
      )
      return NetFrameworkBase.System.Numerics.Complex.Kind_Ptr;
      
      function op_Explicit
      (
         value : NetFrameworkBase.System.Decimal.Kind_Ptr
      )
      return NetFrameworkBase.System.Numerics.Complex.Kind_Ptr;
      
      function GetHashCode
      (
         this : in out Complex.Kind
      )
      return NetFrameworkBase.Int32;
      
      function Sin
      (
         value : NetFrameworkBase.System.Numerics.Complex.Kind_Ptr
      )
      return NetFrameworkBase.System.Numerics.Complex.Kind_Ptr;
      
      function Sinh
      (
         value : NetFrameworkBase.System.Numerics.Complex.Kind_Ptr
      )
      return NetFrameworkBase.System.Numerics.Complex.Kind_Ptr;
      
      function Asin
      (
         value : NetFrameworkBase.System.Numerics.Complex.Kind_Ptr
      )
      return NetFrameworkBase.System.Numerics.Complex.Kind_Ptr;
      
      function Cos
      (
         value : NetFrameworkBase.System.Numerics.Complex.Kind_Ptr
      )
      return NetFrameworkBase.System.Numerics.Complex.Kind_Ptr;
      
      function Cosh
      (
         value : NetFrameworkBase.System.Numerics.Complex.Kind_Ptr
      )
      return NetFrameworkBase.System.Numerics.Complex.Kind_Ptr;
      
      function Acos
      (
         value : NetFrameworkBase.System.Numerics.Complex.Kind_Ptr
      )
      return NetFrameworkBase.System.Numerics.Complex.Kind_Ptr;
      
      function Tan
      (
         value : NetFrameworkBase.System.Numerics.Complex.Kind_Ptr
      )
      return NetFrameworkBase.System.Numerics.Complex.Kind_Ptr;
      
      function Tanh
      (
         value : NetFrameworkBase.System.Numerics.Complex.Kind_Ptr
      )
      return NetFrameworkBase.System.Numerics.Complex.Kind_Ptr;
      
      function Atan
      (
         value : NetFrameworkBase.System.Numerics.Complex.Kind_Ptr
      )
      return NetFrameworkBase.System.Numerics.Complex.Kind_Ptr;
      
      function Log
      (
         value : NetFrameworkBase.System.Numerics.Complex.Kind_Ptr
      )
      return NetFrameworkBase.System.Numerics.Complex.Kind_Ptr;
      
      function Log
      (
         value : NetFrameworkBase.System.Numerics.Complex.Kind_Ptr; 
         baseValue : NetFrameworkBase.Double
      )
      return NetFrameworkBase.System.Numerics.Complex.Kind_Ptr;
      
      function Log10
      (
         value : NetFrameworkBase.System.Numerics.Complex.Kind_Ptr
      )
      return NetFrameworkBase.System.Numerics.Complex.Kind_Ptr;
      
      function Exp
      (
         value : NetFrameworkBase.System.Numerics.Complex.Kind_Ptr
      )
      return NetFrameworkBase.System.Numerics.Complex.Kind_Ptr;
      
      function Sqrt
      (
         value : NetFrameworkBase.System.Numerics.Complex.Kind_Ptr
      )
      return NetFrameworkBase.System.Numerics.Complex.Kind_Ptr;
      
      function Pow
      (
         value : NetFrameworkBase.System.Numerics.Complex.Kind_Ptr; 
         power : NetFrameworkBase.System.Numerics.Complex.Kind_Ptr
      )
      return NetFrameworkBase.System.Numerics.Complex.Kind_Ptr;
      
      function Pow
      (
         value : NetFrameworkBase.System.Numerics.Complex.Kind_Ptr; 
         power : NetFrameworkBase.Double
      )
      return NetFrameworkBase.System.Numerics.Complex.Kind_Ptr;
      
      function ToString
      (
         this : in out Complex.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function ToString
      (
         this : in out Complex.Kind;
         format : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.BSTR;
      
      function ToString
      (
         this : in out Complex.Kind;
         provider : NetFrameworkBase.System.IFormatProvider.Kind_Ptr
      )
      return NetFrameworkBase.BSTR;
      
      function ToString
      (
         this : in out Complex.Kind;
         format : NetFrameworkBase.BSTR; 
         provider : NetFrameworkBase.System.IFormatProvider.Kind_Ptr
      )
      return NetFrameworkBase.BSTR;
      
      function Constructor
      (
         real : NetFrameworkBase.Double;
         imaginary : NetFrameworkBase.Double
      )
      return NetFrameworkBase.System.Numerics.Complex.Kind_Ptr;
      
end;