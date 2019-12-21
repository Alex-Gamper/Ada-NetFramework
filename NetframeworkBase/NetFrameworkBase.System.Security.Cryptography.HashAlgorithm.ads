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
limited with NetFrameworkBase.System.IO.Stream;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Security.Cryptography.HashAlgorithm is
   
   type Kind is new NetFrameworkBase.System.Object.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function HashSize
      (
         this : in out HashAlgorithm.Kind
      )
      return NetFrameworkBase.Int32;
      
      function Hash
      (
         this : in out HashAlgorithm.Kind
      )
      return NetFrameworkBase.Byte_Array;
      
      function Create
      (
         hashName : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Security.Cryptography.HashAlgorithm.Kind_Ptr;
      
      function ComputeHash
      (
         this : in out HashAlgorithm.Kind;
         inputStream : NetFrameworkBase.System.IO.Stream.Kind_Ptr
      )
      return NetFrameworkBase.Byte_Array;
      
      function ComputeHash
      (
         this : in out HashAlgorithm.Kind;
         buffer : NetFrameworkBase.Byte_Array
      )
      return NetFrameworkBase.Byte_Array;
      
      function ComputeHash
      (
         this : in out HashAlgorithm.Kind;
         buffer : NetFrameworkBase.Byte_Array; 
         offset : NetFrameworkBase.Int32; 
         count : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.Byte_Array;
      
      function InputBlockSize
      (
         this : in out HashAlgorithm.Kind
      )
      return NetFrameworkBase.Int32;
      
      function OutputBlockSize
      (
         this : in out HashAlgorithm.Kind
      )
      return NetFrameworkBase.Int32;
      
      function CanTransformMultipleBlocks
      (
         this : in out HashAlgorithm.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function CanReuseTransform
      (
         this : in out HashAlgorithm.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function TransformBlock
      (
         this : in out HashAlgorithm.Kind;
         inputBuffer : NetFrameworkBase.Byte_Array; 
         inputOffset : NetFrameworkBase.Int32; 
         inputCount : NetFrameworkBase.Int32; 
         outputBuffer : NetFrameworkBase.Byte_Array; 
         outputOffset : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.Int32;
      
      function TransformFinalBlock
      (
         this : in out HashAlgorithm.Kind;
         inputBuffer : NetFrameworkBase.Byte_Array; 
         inputOffset : NetFrameworkBase.Int32; 
         inputCount : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.Byte_Array;
      
      procedure Dispose
      (
         this : in out HashAlgorithm.Kind
      );
      
      procedure Clear
      (
         this : in out HashAlgorithm.Kind
      );
      
      function Create
      return NetFrameworkBase.System.Security.Cryptography.HashAlgorithm.Kind_Ptr;
      
      procedure Initialize
      (
         this : in out HashAlgorithm.Kind
      );
      
end;