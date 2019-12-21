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
limited with NetFrameworkBase.System.Security.Cryptography.ECCurve;
limited with NetFrameworkBase.System.Security.Cryptography.ECParameters;
limited with NetFrameworkBase.System.Security.Cryptography.HashAlgorithmName;
limited with NetFrameworkBase.System.IO.Stream;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Security.Cryptography.ECDsa is
   
   type Kind is new NetFrameworkBase.System.Security.Cryptography.AsymmetricAlgorithm.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function KeyExchangeAlgorithm
      (
         this : in out ECDsa.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function Create
      return NetFrameworkBase.System.Security.Cryptography.ECDsa.Kind_Ptr;
      
      function Create
      (
         algorithm : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Security.Cryptography.ECDsa.Kind_Ptr;
      
      function Create
      (
         curve : NetFrameworkBase.System.Security.Cryptography.ECCurve.Kind_Ptr
      )
      return NetFrameworkBase.System.Security.Cryptography.ECDsa.Kind_Ptr;
      
      function Create
      (
         parameters : NetFrameworkBase.System.Security.Cryptography.ECParameters.Kind_Ptr
      )
      return NetFrameworkBase.System.Security.Cryptography.ECDsa.Kind_Ptr;
      
      function SignData
      (
         this : in out ECDsa.Kind;
         data : NetFrameworkBase.Byte_Array; 
         hashAlgorithm : NetFrameworkBase.System.Security.Cryptography.HashAlgorithmName.Kind_Ptr
      )
      return NetFrameworkBase.Byte_Array;
      
      function SignData
      (
         this : in out ECDsa.Kind;
         data : NetFrameworkBase.Byte_Array; 
         offset : NetFrameworkBase.Int32; 
         count : NetFrameworkBase.Int32; 
         hashAlgorithm : NetFrameworkBase.System.Security.Cryptography.HashAlgorithmName.Kind_Ptr
      )
      return NetFrameworkBase.Byte_Array;
      
      function SignData
      (
         this : in out ECDsa.Kind;
         data : NetFrameworkBase.System.IO.Stream.Kind_Ptr; 
         hashAlgorithm : NetFrameworkBase.System.Security.Cryptography.HashAlgorithmName.Kind_Ptr
      )
      return NetFrameworkBase.Byte_Array;
      
      function VerifyData
      (
         this : in out ECDsa.Kind;
         data : NetFrameworkBase.Byte_Array; 
         signature : NetFrameworkBase.Byte_Array; 
         hashAlgorithm : NetFrameworkBase.System.Security.Cryptography.HashAlgorithmName.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      
      function VerifyData
      (
         this : in out ECDsa.Kind;
         data : NetFrameworkBase.Byte_Array; 
         offset : NetFrameworkBase.Int32; 
         count : NetFrameworkBase.Int32; 
         signature : NetFrameworkBase.Byte_Array; 
         hashAlgorithm : NetFrameworkBase.System.Security.Cryptography.HashAlgorithmName.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      
      function VerifyData
      (
         this : in out ECDsa.Kind;
         data : NetFrameworkBase.System.IO.Stream.Kind_Ptr; 
         signature : NetFrameworkBase.Byte_Array; 
         hashAlgorithm : NetFrameworkBase.System.Security.Cryptography.HashAlgorithmName.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      
      function ExportParameters
      (
         this : in out ECDsa.Kind;
         includePrivateParameters : NetFrameworkBase.Boolean
      )
      return NetFrameworkBase.System.Security.Cryptography.ECParameters.Kind_Ptr;
      
      function ExportExplicitParameters
      (
         this : in out ECDsa.Kind;
         includePrivateParameters : NetFrameworkBase.Boolean
      )
      return NetFrameworkBase.System.Security.Cryptography.ECParameters.Kind_Ptr;
      
      procedure ImportParameters
      (
         this : in out ECDsa.Kind;
         parameters : NetFrameworkBase.System.Security.Cryptography.ECParameters.Kind_Ptr
      );
      
      procedure GenerateKey
      (
         this : in out ECDsa.Kind;
         curve : NetFrameworkBase.System.Security.Cryptography.ECCurve.Kind_Ptr
      );
      
      function SignatureAlgorithm
      (
         this : in out ECDsa.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function SignHash
      (
         this : in out ECDsa.Kind;
         hash : NetFrameworkBase.Byte_Array
      )
      return NetFrameworkBase.Byte_Array;
      
      function VerifyHash
      (
         this : in out ECDsa.Kind;
         hash : NetFrameworkBase.Byte_Array; 
         signature : NetFrameworkBase.Byte_Array
      )
      return NetFrameworkBase.Boolean;
      
end;