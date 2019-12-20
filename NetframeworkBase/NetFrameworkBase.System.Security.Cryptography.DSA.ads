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
with NetFrameworkBase.System.Security.Cryptography.AsymmetricAlgorithm;
limited with NetFrameworkBase.System.Security.Cryptography.HashAlgorithmName;
limited with NetFrameworkBase.System.IO.Stream;
limited with NetFrameworkBase.System.Security.Cryptography.DSAParameters;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Security.Cryptography.DSA is
   
   type Kind is new NetFrameworkBase.System.Security.Cryptography.AsymmetricAlgorithm.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function Create
      (
         algName : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Security.Cryptography.DSA.Kind_Ptr;
      
      function SignData
      (
         this : in out DSA.Kind;
         data : NetFrameworkBase.Byte_Array; 
         hashAlgorithm : NetFrameworkBase.System.Security.Cryptography.HashAlgorithmName.Kind_Ptr
      )
      return NetFrameworkBase.Byte_Array;
      
      function SignData
      (
         this : in out DSA.Kind;
         data : NetFrameworkBase.Byte_Array; 
         offset : NetFrameworkBase.Int32; 
         count : NetFrameworkBase.Int32; 
         hashAlgorithm : NetFrameworkBase.System.Security.Cryptography.HashAlgorithmName.Kind_Ptr
      )
      return NetFrameworkBase.Byte_Array;
      
      function SignData
      (
         this : in out DSA.Kind;
         data : NetFrameworkBase.System.IO.Stream.Kind_Ptr; 
         hashAlgorithm : NetFrameworkBase.System.Security.Cryptography.HashAlgorithmName.Kind_Ptr
      )
      return NetFrameworkBase.Byte_Array;
      
      function VerifyData
      (
         this : in out DSA.Kind;
         data : NetFrameworkBase.Byte_Array; 
         signature : NetFrameworkBase.Byte_Array; 
         hashAlgorithm : NetFrameworkBase.System.Security.Cryptography.HashAlgorithmName.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      
      function VerifyData
      (
         this : in out DSA.Kind;
         data : NetFrameworkBase.Byte_Array; 
         offset : NetFrameworkBase.Int32; 
         count : NetFrameworkBase.Int32; 
         signature : NetFrameworkBase.Byte_Array; 
         hashAlgorithm : NetFrameworkBase.System.Security.Cryptography.HashAlgorithmName.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      
      function VerifyData
      (
         this : in out DSA.Kind;
         data : NetFrameworkBase.System.IO.Stream.Kind_Ptr; 
         signature : NetFrameworkBase.Byte_Array; 
         hashAlgorithm : NetFrameworkBase.System.Security.Cryptography.HashAlgorithmName.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      
      function Create
      return NetFrameworkBase.System.Security.Cryptography.DSA.Kind_Ptr;
      
      function Create
      (
         keySizeInBits : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.Security.Cryptography.DSA.Kind_Ptr;
      
      function Create
      (
         parameters : NetFrameworkBase.System.Security.Cryptography.DSAParameters.Kind_Ptr
      )
      return NetFrameworkBase.System.Security.Cryptography.DSA.Kind_Ptr;
      
      function CreateSignature
      (
         this : in out DSA.Kind;
         rgbHash : NetFrameworkBase.Byte_Array
      )
      return NetFrameworkBase.Byte_Array;
      
      function VerifySignature
      (
         this : in out DSA.Kind;
         rgbHash : NetFrameworkBase.Byte_Array; 
         rgbSignature : NetFrameworkBase.Byte_Array
      )
      return NetFrameworkBase.Boolean;
      
      procedure FromXmlString
      (
         this : in out DSA.Kind;
         xmlString : NetFrameworkBase.BSTR
      );
      
      function ToXmlString
      (
         this : in out DSA.Kind;
         includePrivateParameters : NetFrameworkBase.Boolean
      )
      return NetFrameworkBase.BSTR;
      
      function ExportParameters
      (
         this : in out DSA.Kind;
         includePrivateParameters : NetFrameworkBase.Boolean
      )
      return NetFrameworkBase.System.Security.Cryptography.DSAParameters.Kind_Ptr;
      
      procedure ImportParameters
      (
         this : in out DSA.Kind;
         parameters : NetFrameworkBase.System.Security.Cryptography.DSAParameters.Kind_Ptr
      );
      
end;
