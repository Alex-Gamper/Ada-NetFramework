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
limited with NetFrameworkBase.System.Security.Cryptography.AsymmetricAlgorithm;
limited with NetFrameworkBase.System.Security.SecurityElement;
limited with NetFrameworkBase.System.Security.Cryptography.AsymmetricSignatureDeformatter;
limited with NetFrameworkBase.System.Security.Cryptography.AsymmetricSignatureFormatter;
limited with NetFrameworkBase.System.Security.Cryptography.HashAlgorithm;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Security.Cryptography.SignatureDescription is
   
   type Kind is new NetFrameworkBase.System.Object.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function KeyAlgorithm
      (
         this : in out SignatureDescription.Kind
      )
      return NetFrameworkBase.BSTR;
      
      procedure KeyAlgorithm
      (
         this : in out SignatureDescription.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      function DigestAlgorithm
      (
         this : in out SignatureDescription.Kind
      )
      return NetFrameworkBase.BSTR;
      
      procedure DigestAlgorithm
      (
         this : in out SignatureDescription.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      function FormatterAlgorithm
      (
         this : in out SignatureDescription.Kind
      )
      return NetFrameworkBase.BSTR;
      
      procedure FormatterAlgorithm
      (
         this : in out SignatureDescription.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      function DeformatterAlgorithm
      (
         this : in out SignatureDescription.Kind
      )
      return NetFrameworkBase.BSTR;
      
      procedure DeformatterAlgorithm
      (
         this : in out SignatureDescription.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      function CreateDeformatter
      (
         this : in out SignatureDescription.Kind;
         key : NetFrameworkBase.System.Security.Cryptography.AsymmetricAlgorithm.Kind_Ptr
      )
      return NetFrameworkBase.System.Security.Cryptography.AsymmetricSignatureDeformatter.Kind_Ptr;
      
      function CreateFormatter
      (
         this : in out SignatureDescription.Kind;
         key : NetFrameworkBase.System.Security.Cryptography.AsymmetricAlgorithm.Kind_Ptr
      )
      return NetFrameworkBase.System.Security.Cryptography.AsymmetricSignatureFormatter.Kind_Ptr;
      
      function CreateDigest
      (
         this : in out SignatureDescription.Kind
      )
      return NetFrameworkBase.System.Security.Cryptography.HashAlgorithm.Kind_Ptr;
      
      function Constructor return NetFrameworkBase.System.Security.Cryptography.SignatureDescription.Kind_Ptr;
      
      function Constructor
      (
         el : NetFrameworkBase.System.Security.SecurityElement.Kind_Ptr
      )
      return NetFrameworkBase.System.Security.Cryptography.SignatureDescription.Kind_Ptr;
      
end;
