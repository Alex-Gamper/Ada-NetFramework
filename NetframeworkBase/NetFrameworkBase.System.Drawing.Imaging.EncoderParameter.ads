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
limited with NetFrameworkBase.System.Drawing.Imaging.Encoder;
limited with NetFrameworkBase.System.Drawing.Imaging.EncoderParameterValueType;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Drawing.Imaging.EncoderParameter is
   
   type Kind is new NetFrameworkBase.System.Object.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function Encoder
      (
         this : in out EncoderParameter.Kind
      )
      return NetFrameworkBase.System.Drawing.Imaging.Encoder.Kind_Ptr;
      
      procedure Encoder
      (
         this : in out EncoderParameter.Kind;
         value : NetFrameworkBase.System.Drawing.Imaging.Encoder.Kind_Ptr
      );
      
      function Type_x
      (
         this : in out EncoderParameter.Kind
      )
      return NetFrameworkBase.System.Drawing.Imaging.EncoderParameterValueType.Kind;
      
      function ValueType
      (
         this : in out EncoderParameter.Kind
      )
      return NetFrameworkBase.System.Drawing.Imaging.EncoderParameterValueType.Kind;
      
      function NumberOfValues
      (
         this : in out EncoderParameter.Kind
      )
      return NetFrameworkBase.Int32;
      
      procedure Dispose
      (
         this : in out EncoderParameter.Kind
      );
      
      function Constructor
      (
         encoder : NetFrameworkBase.System.Drawing.Imaging.Encoder.Kind_Ptr;
         value : NetFrameworkBase.Byte
      )
      return NetFrameworkBase.System.Drawing.Imaging.EncoderParameter.Kind_Ptr;
      
      function Constructor
      (
         encoder : NetFrameworkBase.System.Drawing.Imaging.Encoder.Kind_Ptr;
         value : NetFrameworkBase.Byte;
         undefined : NetFrameworkBase.Boolean
      )
      return NetFrameworkBase.System.Drawing.Imaging.EncoderParameter.Kind_Ptr;
      
      function Constructor
      (
         encoder : NetFrameworkBase.System.Drawing.Imaging.Encoder.Kind_Ptr;
         value : NetFrameworkBase.Int16
      )
      return NetFrameworkBase.System.Drawing.Imaging.EncoderParameter.Kind_Ptr;
      
      function Constructor
      (
         encoder : NetFrameworkBase.System.Drawing.Imaging.Encoder.Kind_Ptr;
         value : NetFrameworkBase.Int64
      )
      return NetFrameworkBase.System.Drawing.Imaging.EncoderParameter.Kind_Ptr;
      
      function Constructor
      (
         encoder : NetFrameworkBase.System.Drawing.Imaging.Encoder.Kind_Ptr;
         numerator : NetFrameworkBase.Int32;
         denominator : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.Drawing.Imaging.EncoderParameter.Kind_Ptr;
      
      function Constructor
      (
         encoder : NetFrameworkBase.System.Drawing.Imaging.Encoder.Kind_Ptr;
         rangebegin : NetFrameworkBase.Int64;
         rangeend : NetFrameworkBase.Int64
      )
      return NetFrameworkBase.System.Drawing.Imaging.EncoderParameter.Kind_Ptr;
      
      function Constructor
      (
         encoder : NetFrameworkBase.System.Drawing.Imaging.Encoder.Kind_Ptr;
         numerator1 : NetFrameworkBase.Int32;
         demoninator1 : NetFrameworkBase.Int32;
         numerator2 : NetFrameworkBase.Int32;
         demoninator2 : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.Drawing.Imaging.EncoderParameter.Kind_Ptr;
      
      function Constructor
      (
         encoder : NetFrameworkBase.System.Drawing.Imaging.Encoder.Kind_Ptr;
         value : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Drawing.Imaging.EncoderParameter.Kind_Ptr;
      
      function Constructor
      (
         encoder : NetFrameworkBase.System.Drawing.Imaging.Encoder.Kind_Ptr;
         value : NetFrameworkBase.Byte_Array
      )
      return NetFrameworkBase.System.Drawing.Imaging.EncoderParameter.Kind_Ptr;
      
      function Constructor
      (
         encoder : NetFrameworkBase.System.Drawing.Imaging.Encoder.Kind_Ptr;
         value : NetFrameworkBase.Byte_Array;
         undefined : NetFrameworkBase.Boolean
      )
      return NetFrameworkBase.System.Drawing.Imaging.EncoderParameter.Kind_Ptr;
      
      function Constructor
      (
         encoder : NetFrameworkBase.System.Drawing.Imaging.Encoder.Kind_Ptr;
         value : NetFrameworkBase.Int16_Array
      )
      return NetFrameworkBase.System.Drawing.Imaging.EncoderParameter.Kind_Ptr;
      
      function Constructor
      (
         encoder : NetFrameworkBase.System.Drawing.Imaging.Encoder.Kind_Ptr;
         value : NetFrameworkBase.Int64_Array
      )
      return NetFrameworkBase.System.Drawing.Imaging.EncoderParameter.Kind_Ptr;
      
      function Constructor
      (
         encoder : NetFrameworkBase.System.Drawing.Imaging.Encoder.Kind_Ptr;
         numerator : NetFrameworkBase.Int32_Array;
         denominator : NetFrameworkBase.Int32_Array
      )
      return NetFrameworkBase.System.Drawing.Imaging.EncoderParameter.Kind_Ptr;
      
      function Constructor
      (
         encoder : NetFrameworkBase.System.Drawing.Imaging.Encoder.Kind_Ptr;
         rangebegin : NetFrameworkBase.Int64_Array;
         rangeend : NetFrameworkBase.Int64_Array
      )
      return NetFrameworkBase.System.Drawing.Imaging.EncoderParameter.Kind_Ptr;
      
      function Constructor
      (
         encoder : NetFrameworkBase.System.Drawing.Imaging.Encoder.Kind_Ptr;
         numerator1 : NetFrameworkBase.Int32_Array;
         denominator1 : NetFrameworkBase.Int32_Array;
         numerator2 : NetFrameworkBase.Int32_Array;
         denominator2 : NetFrameworkBase.Int32_Array
      )
      return NetFrameworkBase.System.Drawing.Imaging.EncoderParameter.Kind_Ptr;
      
      function Constructor
      (
         encoder : NetFrameworkBase.System.Drawing.Imaging.Encoder.Kind_Ptr;
         NumberOfValues : NetFrameworkBase.Int32;
         Type_x : NetFrameworkBase.Int32;
         Value : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.Drawing.Imaging.EncoderParameter.Kind_Ptr;
      
      function Constructor
      (
         encoder : NetFrameworkBase.System.Drawing.Imaging.Encoder.Kind_Ptr;
         numberValues : NetFrameworkBase.Int32;
         type_x : NetFrameworkBase.System.Drawing.Imaging.EncoderParameterValueType.Kind;
         value : NetFrameworkBase.IntPtr
      )
      return NetFrameworkBase.System.Drawing.Imaging.EncoderParameter.Kind_Ptr;
      
end;
