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
limited with NetFrameworkBase.System.Security.Policy.Evidence;
limited with NetFrameworkBase.System.Xml.XmlResolver;
limited with NetFrameworkBase.System.Security.Cryptography.PaddingMode;
limited with NetFrameworkBase.System.Security.Cryptography.CipherMode;
limited with NetFrameworkBase.System.Text.Encoding;
limited with NetFrameworkBase.System.Xml.XmlDocument;
limited with NetFrameworkBase.System.Security.Cryptography.Xml.EncryptedData;
limited with NetFrameworkBase.System.Security.Cryptography.SymmetricAlgorithm;
limited with NetFrameworkBase.System.Security.Cryptography.RSA;
limited with NetFrameworkBase.System.Security.Cryptography.Xml.EncryptedKey;
limited with NetFrameworkBase.System.Xml.XmlElement;
limited with NetFrameworkBase.System.Security.Cryptography.X509Certificates.X509Certificate2;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Security.Cryptography.Xml.EncryptedXml is
   
   type Kind is new NetFrameworkBase.System.Object.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function XmlDSigSearchDepth
      (
         this : in out EncryptedXml.Kind
      )
      return NetFrameworkBase.Int32;
      
      procedure XmlDSigSearchDepth
      (
         this : in out EncryptedXml.Kind;
         value : NetFrameworkBase.Int32
      );
      
      function DocumentEvidence
      (
         this : in out EncryptedXml.Kind
      )
      return NetFrameworkBase.System.Security.Policy.Evidence.Kind_Ptr;
      
      procedure DocumentEvidence
      (
         this : in out EncryptedXml.Kind;
         value : NetFrameworkBase.System.Security.Policy.Evidence.Kind_Ptr
      );
      
      function Resolver
      (
         this : in out EncryptedXml.Kind
      )
      return NetFrameworkBase.System.Xml.XmlResolver.Kind_Ptr;
      
      procedure Resolver
      (
         this : in out EncryptedXml.Kind;
         value : NetFrameworkBase.System.Xml.XmlResolver.Kind_Ptr
      );
      
      function Padding
      (
         this : in out EncryptedXml.Kind
      )
      return NetFrameworkBase.System.Security.Cryptography.PaddingMode.Kind;
      
      procedure Padding
      (
         this : in out EncryptedXml.Kind;
         value : NetFrameworkBase.System.Security.Cryptography.PaddingMode.Kind
      );
      
      function Mode
      (
         this : in out EncryptedXml.Kind
      )
      return NetFrameworkBase.System.Security.Cryptography.CipherMode.Kind;
      
      procedure Mode
      (
         this : in out EncryptedXml.Kind;
         value : NetFrameworkBase.System.Security.Cryptography.CipherMode.Kind
      );
      
      function Encoding
      (
         this : in out EncryptedXml.Kind
      )
      return NetFrameworkBase.System.Text.Encoding.Kind_Ptr;
      
      procedure Encoding
      (
         this : in out EncryptedXml.Kind;
         value : NetFrameworkBase.System.Text.Encoding.Kind_Ptr
      );
      
      function Recipient
      (
         this : in out EncryptedXml.Kind
      )
      return NetFrameworkBase.BSTR;
      
      procedure Recipient
      (
         this : in out EncryptedXml.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      function GetIdElement
      (
         this : in out EncryptedXml.Kind;
         document : NetFrameworkBase.System.Xml.XmlDocument.Kind_Ptr; 
         idValue : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Xml.XmlElement.Kind_Ptr;
      
      procedure AddKeyNameMapping
      (
         this : in out EncryptedXml.Kind;
         keyName : NetFrameworkBase.BSTR; 
         keyObject : NetFrameworkBase.System.Object.Kind_Ptr
      );
      
      procedure ClearKeyNameMappings
      (
         this : in out EncryptedXml.Kind
      );
      
      function DecryptData
      (
         this : in out EncryptedXml.Kind;
         encryptedData : NetFrameworkBase.System.Security.Cryptography.Xml.EncryptedData.Kind_Ptr; 
         symmetricAlgorithm : NetFrameworkBase.System.Security.Cryptography.SymmetricAlgorithm.Kind_Ptr
      )
      return NetFrameworkBase.Byte_Array;
      
      function EncryptKey
      (
         keyData : NetFrameworkBase.Byte_Array; 
         symmetricAlgorithm : NetFrameworkBase.System.Security.Cryptography.SymmetricAlgorithm.Kind_Ptr
      )
      return NetFrameworkBase.Byte_Array;
      
      function EncryptKey
      (
         keyData : NetFrameworkBase.Byte_Array; 
         rsa : NetFrameworkBase.System.Security.Cryptography.RSA.Kind_Ptr; 
         useOAEP : NetFrameworkBase.Boolean
      )
      return NetFrameworkBase.Byte_Array;
      
      function DecryptKey
      (
         keyData : NetFrameworkBase.Byte_Array; 
         symmetricAlgorithm : NetFrameworkBase.System.Security.Cryptography.SymmetricAlgorithm.Kind_Ptr
      )
      return NetFrameworkBase.Byte_Array;
      
      function DecryptKey
      (
         keyData : NetFrameworkBase.Byte_Array; 
         rsa : NetFrameworkBase.System.Security.Cryptography.RSA.Kind_Ptr; 
         useOAEP : NetFrameworkBase.Boolean
      )
      return NetFrameworkBase.Byte_Array;
      
      function GetDecryptionIV
      (
         this : in out EncryptedXml.Kind;
         encryptedData : NetFrameworkBase.System.Security.Cryptography.Xml.EncryptedData.Kind_Ptr; 
         symmetricAlgorithmUri : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.Byte_Array;
      
      function GetDecryptionKey
      (
         this : in out EncryptedXml.Kind;
         encryptedData : NetFrameworkBase.System.Security.Cryptography.Xml.EncryptedData.Kind_Ptr; 
         symmetricAlgorithmUri : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Security.Cryptography.SymmetricAlgorithm.Kind_Ptr;
      
      function DecryptEncryptedKey
      (
         this : in out EncryptedXml.Kind;
         encryptedKey : NetFrameworkBase.System.Security.Cryptography.Xml.EncryptedKey.Kind_Ptr
      )
      return NetFrameworkBase.Byte_Array;
      
      function Encrypt
      (
         this : in out EncryptedXml.Kind;
         inputElement : NetFrameworkBase.System.Xml.XmlElement.Kind_Ptr; 
         certificate : NetFrameworkBase.System.Security.Cryptography.X509Certificates.X509Certificate2.Kind_Ptr
      )
      return NetFrameworkBase.System.Security.Cryptography.Xml.EncryptedData.Kind_Ptr;
      
      function Encrypt
      (
         this : in out EncryptedXml.Kind;
         inputElement : NetFrameworkBase.System.Xml.XmlElement.Kind_Ptr; 
         keyName : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Security.Cryptography.Xml.EncryptedData.Kind_Ptr;
      
      procedure DecryptDocument
      (
         this : in out EncryptedXml.Kind
      );
      
      function EncryptData
      (
         this : in out EncryptedXml.Kind;
         plaintext : NetFrameworkBase.Byte_Array; 
         symmetricAlgorithm : NetFrameworkBase.System.Security.Cryptography.SymmetricAlgorithm.Kind_Ptr
      )
      return NetFrameworkBase.Byte_Array;
      
      function EncryptData
      (
         this : in out EncryptedXml.Kind;
         inputElement : NetFrameworkBase.System.Xml.XmlElement.Kind_Ptr; 
         symmetricAlgorithm : NetFrameworkBase.System.Security.Cryptography.SymmetricAlgorithm.Kind_Ptr; 
         content : NetFrameworkBase.Boolean
      )
      return NetFrameworkBase.Byte_Array;
      
      procedure ReplaceData
      (
         this : in out EncryptedXml.Kind;
         inputElement : NetFrameworkBase.System.Xml.XmlElement.Kind_Ptr; 
         decryptedData : NetFrameworkBase.Byte_Array
      );
      
      procedure ReplaceElement
      (
         inputElement : NetFrameworkBase.System.Xml.XmlElement.Kind_Ptr; 
         encryptedData : NetFrameworkBase.System.Security.Cryptography.Xml.EncryptedData.Kind_Ptr; 
         content : NetFrameworkBase.Boolean
      )
      ;
      
      function Constructor return NetFrameworkBase.System.Security.Cryptography.Xml.EncryptedXml.Kind_Ptr;
      
      function Constructor
      (
         document : NetFrameworkBase.System.Xml.XmlDocument.Kind_Ptr
      )
      return NetFrameworkBase.System.Security.Cryptography.Xml.EncryptedXml.Kind_Ptr;
      
      function Constructor
      (
         document : NetFrameworkBase.System.Xml.XmlDocument.Kind_Ptr;
         evidence : NetFrameworkBase.System.Security.Policy.Evidence.Kind_Ptr
      )
      return NetFrameworkBase.System.Security.Cryptography.Xml.EncryptedXml.Kind_Ptr;
      
end;
