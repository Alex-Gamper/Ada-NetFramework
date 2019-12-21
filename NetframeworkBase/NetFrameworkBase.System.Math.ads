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
limited with NetFrameworkBase.System.Decimal;
limited with NetFrameworkBase.System.MidpointRounding;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Math is
   
   type Kind is new NetFrameworkBase.System.Object.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function Ceiling
      (
         d : NetFrameworkBase.System.Decimal.Kind_Ptr
      )
      return NetFrameworkBase.System.Decimal.Kind_Ptr;
      
      function Floor
      (
         d : NetFrameworkBase.System.Decimal.Kind_Ptr
      )
      return NetFrameworkBase.System.Decimal.Kind_Ptr;
      
      function Round
      (
         value : NetFrameworkBase.Double; 
         digits_x : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.Double;
      
      function Round
      (
         value : NetFrameworkBase.Double; 
         mode : NetFrameworkBase.System.MidpointRounding.Kind
      )
      return NetFrameworkBase.Double;
      
      function Round
      (
         value : NetFrameworkBase.Double; 
         digits_x : NetFrameworkBase.Int32; 
         mode : NetFrameworkBase.System.MidpointRounding.Kind
      )
      return NetFrameworkBase.Double;
      
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
      
      function Truncate
      (
         d : NetFrameworkBase.System.Decimal.Kind_Ptr
      )
      return NetFrameworkBase.System.Decimal.Kind_Ptr;
      
      function Truncate
      (
         d : NetFrameworkBase.Double
      )
      return NetFrameworkBase.Double;
      
      function IEEERemainder
      (
         x : NetFrameworkBase.Double; 
         y : NetFrameworkBase.Double
      )
      return NetFrameworkBase.Double;
      
      function Abs_x
      (
         value : NetFrameworkBase.SByte
      )
      return NetFrameworkBase.SByte;
      
      function Abs_x
      (
         value : NetFrameworkBase.Int16
      )
      return NetFrameworkBase.Int16;
      
      function Abs_x
      (
         value : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.Int32;
      
      function Abs_x
      (
         value : NetFrameworkBase.Int64
      )
      return NetFrameworkBase.Int64;
      
      function Abs_x
      (
         value : NetFrameworkBase.System.Decimal.Kind_Ptr
      )
      return NetFrameworkBase.System.Decimal.Kind_Ptr;
      
      function Max
      (
         val1 : NetFrameworkBase.SByte; 
         val2 : NetFrameworkBase.SByte
      )
      return NetFrameworkBase.SByte;
      
      function Max
      (
         val1 : NetFrameworkBase.Byte; 
         val2 : NetFrameworkBase.Byte
      )
      return NetFrameworkBase.Byte;
      
      function Max
      (
         val1 : NetFrameworkBase.Int16; 
         val2 : NetFrameworkBase.Int16
      )
      return NetFrameworkBase.Int16;
      
      function Max
      (
         val1 : NetFrameworkBase.UInt16; 
         val2 : NetFrameworkBase.UInt16
      )
      return NetFrameworkBase.UInt16;
      
      function Max
      (
         val1 : NetFrameworkBase.Int32; 
         val2 : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.Int32;
      
      function Max
      (
         val1 : NetFrameworkBase.UInt32; 
         val2 : NetFrameworkBase.UInt32
      )
      return NetFrameworkBase.UInt32;
      
      function Max
      (
         val1 : NetFrameworkBase.Int64; 
         val2 : NetFrameworkBase.Int64
      )
      return NetFrameworkBase.Int64;
      
      function Max
      (
         val1 : NetFrameworkBase.UInt64; 
         val2 : NetFrameworkBase.UInt64
      )
      return NetFrameworkBase.UInt64;
      
      function Max
      (
         val1 : NetFrameworkBase.Single; 
         val2 : NetFrameworkBase.Single
      )
      return NetFrameworkBase.Single;
      
      function Max
      (
         val1 : NetFrameworkBase.Double; 
         val2 : NetFrameworkBase.Double
      )
      return NetFrameworkBase.Double;
      
      function Max
      (
         val1 : NetFrameworkBase.System.Decimal.Kind_Ptr; 
         val2 : NetFrameworkBase.System.Decimal.Kind_Ptr
      )
      return NetFrameworkBase.System.Decimal.Kind_Ptr;
      
      function Min
      (
         val1 : NetFrameworkBase.SByte; 
         val2 : NetFrameworkBase.SByte
      )
      return NetFrameworkBase.SByte;
      
      function Min
      (
         val1 : NetFrameworkBase.Byte; 
         val2 : NetFrameworkBase.Byte
      )
      return NetFrameworkBase.Byte;
      
      function Min
      (
         val1 : NetFrameworkBase.Int16; 
         val2 : NetFrameworkBase.Int16
      )
      return NetFrameworkBase.Int16;
      
      function Min
      (
         val1 : NetFrameworkBase.UInt16; 
         val2 : NetFrameworkBase.UInt16
      )
      return NetFrameworkBase.UInt16;
      
      function Min
      (
         val1 : NetFrameworkBase.Int32; 
         val2 : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.Int32;
      
      function Min
      (
         val1 : NetFrameworkBase.UInt32; 
         val2 : NetFrameworkBase.UInt32
      )
      return NetFrameworkBase.UInt32;
      
      function Min
      (
         val1 : NetFrameworkBase.Int64; 
         val2 : NetFrameworkBase.Int64
      )
      return NetFrameworkBase.Int64;
      
      function Min
      (
         val1 : NetFrameworkBase.UInt64; 
         val2 : NetFrameworkBase.UInt64
      )
      return NetFrameworkBase.UInt64;
      
      function Min
      (
         val1 : NetFrameworkBase.Single; 
         val2 : NetFrameworkBase.Single
      )
      return NetFrameworkBase.Single;
      
      function Min
      (
         val1 : NetFrameworkBase.Double; 
         val2 : NetFrameworkBase.Double
      )
      return NetFrameworkBase.Double;
      
      function Min
      (
         val1 : NetFrameworkBase.System.Decimal.Kind_Ptr; 
         val2 : NetFrameworkBase.System.Decimal.Kind_Ptr
      )
      return NetFrameworkBase.System.Decimal.Kind_Ptr;
      
      function Log
      (
         a : NetFrameworkBase.Double; 
         newBase : NetFrameworkBase.Double
      )
      return NetFrameworkBase.Double;
      
      function Sign
      (
         value : NetFrameworkBase.SByte
      )
      return NetFrameworkBase.Int32;
      
      function Sign
      (
         value : NetFrameworkBase.Int16
      )
      return NetFrameworkBase.Int32;
      
      function Sign
      (
         value : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.Int32;
      
      function Sign
      (
         value : NetFrameworkBase.Int64
      )
      return NetFrameworkBase.Int32;
      
      function Sign
      (
         value : NetFrameworkBase.Single
      )
      return NetFrameworkBase.Int32;
      
      function Sign
      (
         value : NetFrameworkBase.Double
      )
      return NetFrameworkBase.Int32;
      
      function Sign
      (
         value : NetFrameworkBase.System.Decimal.Kind_Ptr
      )
      return NetFrameworkBase.Int32;
      
      function BigMul
      (
         a : NetFrameworkBase.Int32; 
         b : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.Int64;
      
      function DivRem
      (
         a : NetFrameworkBase.Int32; 
         b : NetFrameworkBase.Int32; 
         result : out NetFrameworkBase.Int32
      )
      return NetFrameworkBase.Int32;
      
      function DivRem
      (
         a : NetFrameworkBase.Int64; 
         b : NetFrameworkBase.Int64; 
         result : out NetFrameworkBase.Int64
      )
      return NetFrameworkBase.Int64;
      
      function Acos
      (
         d : NetFrameworkBase.Double
      )
      return NetFrameworkBase.Double;
      
      function Asin
      (
         d : NetFrameworkBase.Double
      )
      return NetFrameworkBase.Double;
      
      function Atan
      (
         d : NetFrameworkBase.Double
      )
      return NetFrameworkBase.Double;
      
      function Atan2
      (
         y : NetFrameworkBase.Double; 
         x : NetFrameworkBase.Double
      )
      return NetFrameworkBase.Double;
      
      function Cos
      (
         d : NetFrameworkBase.Double
      )
      return NetFrameworkBase.Double;
      
      function Cosh
      (
         value : NetFrameworkBase.Double
      )
      return NetFrameworkBase.Double;
      
      function Sin
      (
         a : NetFrameworkBase.Double
      )
      return NetFrameworkBase.Double;
      
      function Sinh
      (
         value : NetFrameworkBase.Double
      )
      return NetFrameworkBase.Double;
      
      function Tanh
      (
         value : NetFrameworkBase.Double
      )
      return NetFrameworkBase.Double;
      
      function Round
      (
         a : NetFrameworkBase.Double
      )
      return NetFrameworkBase.Double;
      
      function Sqrt
      (
         d : NetFrameworkBase.Double
      )
      return NetFrameworkBase.Double;
      
      function Log10
      (
         d : NetFrameworkBase.Double
      )
      return NetFrameworkBase.Double;
      
      function Abs_x
      (
         value : NetFrameworkBase.Single
      )
      return NetFrameworkBase.Single;
      
      function Abs_x
      (
         value : NetFrameworkBase.Double
      )
      return NetFrameworkBase.Double;
      
      function Ceiling
      (
         a : NetFrameworkBase.Double
      )
      return NetFrameworkBase.Double;
      
      function Floor
      (
         d : NetFrameworkBase.Double
      )
      return NetFrameworkBase.Double;
      
      function Tan
      (
         a : NetFrameworkBase.Double
      )
      return NetFrameworkBase.Double;
      
      function Log
      (
         d : NetFrameworkBase.Double
      )
      return NetFrameworkBase.Double;
      
      function Exp
      (
         d : NetFrameworkBase.Double
      )
      return NetFrameworkBase.Double;
      
      function Pow
      (
         x : NetFrameworkBase.Double; 
         y : NetFrameworkBase.Double
      )
      return NetFrameworkBase.Double;
      
end;