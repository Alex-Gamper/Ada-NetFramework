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
limited with NetFrameworkBase.System.Text.EncoderFallback;
limited with NetFrameworkBase.System.Text.EncoderFallbackBuffer;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Text.Encoder is
   
   type Kind is new NetFrameworkBase.System.Object.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function Fallback
      (
         this : in out Encoder.Kind
      )
      return NetFrameworkBase.System.Text.EncoderFallback.Kind_Ptr;
      
      procedure Fallback
      (
         this : in out Encoder.Kind;
         value : NetFrameworkBase.System.Text.EncoderFallback.Kind_Ptr
      );
      
      function FallbackBuffer
      (
         this : in out Encoder.Kind
      )
      return NetFrameworkBase.System.Text.EncoderFallbackBuffer.Kind_Ptr;
      
      procedure Reset
      (
         this : in out Encoder.Kind
      );
      
      function GetByteCount
      (
         this : in out Encoder.Kind;
         chars : NetFrameworkBase.Wide_Char_Ptr;
         count : NetFrameworkBase.Int32;
         flush : NetFrameworkBase.Boolean
      )
      return NetFrameworkBase.Int32;
      
      function GetByteCount
      (
         this : in out Encoder.Kind;
         chars : NetFrameworkBase.Wide_Char_Array;
         index : NetFrameworkBase.Int32;
         count : NetFrameworkBase.Int32;
         flush : NetFrameworkBase.Boolean
      )
      return NetFrameworkBase.Int32;
      
      function GetBytes
      (
         this : in out Encoder.Kind;
         chars : NetFrameworkBase.Wide_Char_Array;
         charIndex : NetFrameworkBase.Int32;
         charCount : NetFrameworkBase.Int32;
         bytes : NetFrameworkBase.Byte_Array;
         byteIndex : NetFrameworkBase.Int32;
         flush : NetFrameworkBase.Boolean
      )
      return NetFrameworkBase.Int32;
      
      function GetBytes
      (
         this : in out Encoder.Kind;
         chars : NetFrameworkBase.Wide_Char_Ptr;
         charCount : NetFrameworkBase.Int32;
         bytes : NetFrameworkBase.Byte_Ptr;
         byteCount : NetFrameworkBase.Int32;
         flush : NetFrameworkBase.Boolean
      )
      return NetFrameworkBase.Int32;
      
      procedure Convert
      (
         this : in out Encoder.Kind;
         chars : NetFrameworkBase.Wide_Char_Array;
         charIndex : NetFrameworkBase.Int32;
         charCount : NetFrameworkBase.Int32;
         bytes : NetFrameworkBase.Byte_Array;
         byteIndex : NetFrameworkBase.Int32;
         byteCount : NetFrameworkBase.Int32;
         flush : NetFrameworkBase.Boolean;
         charsUsed : out NetFrameworkBase.Int32;
         bytesUsed : out NetFrameworkBase.Int32;
         completed : out NetFrameworkBase.Boolean
      );
      
      procedure Convert
      (
         this : in out Encoder.Kind;
         chars : NetFrameworkBase.Wide_Char_Ptr;
         charCount : NetFrameworkBase.Int32;
         bytes : NetFrameworkBase.Byte_Ptr;
         byteCount : NetFrameworkBase.Int32;
         flush : NetFrameworkBase.Boolean;
         charsUsed : out NetFrameworkBase.Int32;
         bytesUsed : out NetFrameworkBase.Int32;
         completed : out NetFrameworkBase.Boolean
      );
      
end;
