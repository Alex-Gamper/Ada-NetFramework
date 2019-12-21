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
limited with NetFrameworkBase.System.Xml.XmlResolver;
limited with NetFrameworkBase.System.Security.Cryptography.AsymmetricAlgorithm;
limited with NetFrameworkBase.System.Security.Cryptography.Xml.EncryptedXml;
limited with NetFrameworkBase.System.Security.Cryptography.Xml.KeyInfo;
limited with NetFrameworkBase.System.Xml.XmlElement;
limited with NetFrameworkBase.System.Security.Cryptography.Xml.Reference;
limited with NetFrameworkBase.System.Security.Cryptography.Xml.DataObject;
limited with NetFrameworkBase.System.Xml.XmlDocument;
limited with NetFrameworkBase.System.Security.Cryptography.KeyedHashAlgorithm;
limited with NetFrameworkBase.System.Security.Cryptography.X509Certificates.X509Certificate2;
limited with NetFrameworkBase.System.Security.Cryptography.Xml.Signature;
limited with NetFrameworkBase.System.Security.Cryptography.Xml.SignedInfo;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Security.Cryptography.Xml.SignedXml is
   
   type Kind is new NetFrameworkBase.System.Object.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function SigningKeyName
      (
         this : in out SignedXml.Kind
      )
      return NetFrameworkBase.BSTR;
      
      procedure SigningKeyName
      (
         this : in out SignedXml.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      procedure Resolver
      (
         this : in out SignedXml.Kind;
         value : NetFrameworkBase.System.Xml.XmlResolver.Kind_Ptr
      );
      
      function SigningKey
      (
         this : in out SignedXml.Kind
      )
      return NetFrameworkBase.System.Security.Cryptography.AsymmetricAlgorithm.Kind_Ptr;
      
      procedure SigningKey
      (
         this : in out SignedXml.Kind;
         value : NetFrameworkBase.System.Security.Cryptography.AsymmetricAlgorithm.Kind_Ptr
      );
      
      function EncryptedXml
      (
         this : in out SignedXml.Kind
      )
      return NetFrameworkBase.System.Security.Cryptography.Xml.EncryptedXml.Kind_Ptr;
      
      procedure EncryptedXml
      (
         this : in out SignedXml.Kind;
         value : NetFrameworkBase.System.Security.Cryptography.Xml.EncryptedXml.Kind_Ptr
      );
      
      function Signature
      (
         this : in out SignedXml.Kind
      )
      return NetFrameworkBase.System.Security.Cryptography.Xml.Signature.Kind_Ptr;
      
      function SignedInfo
      (
         this : in out SignedXml.Kind
      )
      return NetFrameworkBase.System.Security.Cryptography.Xml.SignedInfo.Kind_Ptr;
      
      function SignatureMethod
      (
         this : in out SignedXml.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function SignatureLength
      (
         this : in out SignedXml.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function SignatureValue
      (
         this : in out SignedXml.Kind
      )
      return NetFrameworkBase.Byte_Array;
      
      function KeyInfo
      (
         this : in out SignedXml.Kind
      )
      return NetFrameworkBase.System.Security.Cryptography.Xml.KeyInfo.Kind_Ptr;
      
      procedure KeyInfo
      (
         this : in out SignedXml.Kind;
         value : NetFrameworkBase.System.Security.Cryptography.Xml.KeyInfo.Kind_Ptr
      );
      
      function GetXml
      (
         this : in out SignedXml.Kind
      )
      return NetFrameworkBase.System.Xml.XmlElement.Kind_Ptr;
      
      procedure LoadXml
      (
         this : in out SignedXml.Kind;
         value : NetFrameworkBase.System.Xml.XmlElement.Kind_Ptr
      );
      
      procedure AddReference
      (
         this : in out SignedXml.Kind;
         reference : NetFrameworkBase.System.Security.Cryptography.Xml.Reference.Kind_Ptr
      );
      
      procedure AddObject
      (
         this : in out SignedXml.Kind;
         dataObject : NetFrameworkBase.System.Security.Cryptography.Xml.DataObject.Kind_Ptr
      );
      
      function CheckSignature
      (
         this : in out SignedXml.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function CheckSignatureReturningKey
      (
         this : in out SignedXml.Kind;
         signingKey : out NetFrameworkBase.System.Security.Cryptography.AsymmetricAlgorithm.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      
      function GetIdElement
      (
         this : in out SignedXml.Kind;
         document : NetFrameworkBase.System.Xml.XmlDocument.Kind_Ptr; 
         idValue : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Xml.XmlElement.Kind_Ptr;
      
      function CheckSignature
      (
         this : in out SignedXml.Kind;
         key : NetFrameworkBase.System.Security.Cryptography.AsymmetricAlgorithm.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      
      function CheckSignature
      (
         this : in out SignedXml.Kind;
         macAlg : NetFrameworkBase.System.Security.Cryptography.KeyedHashAlgorithm.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      
      function CheckSignature
      (
         this : in out SignedXml.Kind;
         certificate : NetFrameworkBase.System.Security.Cryptography.X509Certificates.X509Certificate2.Kind_Ptr; 
         verifySignatureOnly : NetFrameworkBase.Boolean
      )
      return NetFrameworkBase.Boolean;
      
      procedure ComputeSignature
      (
         this : in out SignedXml.Kind
      );
      
      procedure ComputeSignature
      (
         this : in out SignedXml.Kind;
         macAlg : NetFrameworkBase.System.Security.Cryptography.KeyedHashAlgorithm.Kind_Ptr
      );
      
      function Constructor return NetFrameworkBase.System.Security.Cryptography.Xml.SignedXml.Kind_Ptr;
      
      function Constructor
      (
         document : NetFrameworkBase.System.Xml.XmlDocument.Kind_Ptr
      )
      return NetFrameworkBase.System.Security.Cryptography.Xml.SignedXml.Kind_Ptr;
      
      function Constructor
      (
         elem : NetFrameworkBase.System.Xml.XmlElement.Kind_Ptr
      )
      return NetFrameworkBase.System.Security.Cryptography.Xml.SignedXml.Kind_Ptr;
      
end;