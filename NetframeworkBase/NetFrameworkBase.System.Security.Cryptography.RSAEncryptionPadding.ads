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
limited with NetFrameworkBase.System.Security.Cryptography.HashAlgorithmName;
limited with NetFrameworkBase.System.Security.Cryptography.RSAEncryptionPaddingMode;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Security.Cryptography.RSAEncryptionPadding is
   
   type Kind is new NetFrameworkBase.System.Object.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function Pkcs1
      return NetFrameworkBase.System.Security.Cryptography.RSAEncryptionPadding.Kind_Ptr;
      
      function OaepSHA1
      return NetFrameworkBase.System.Security.Cryptography.RSAEncryptionPadding.Kind_Ptr;
      
      function OaepSHA256
      return NetFrameworkBase.System.Security.Cryptography.RSAEncryptionPadding.Kind_Ptr;
      
      function OaepSHA384
      return NetFrameworkBase.System.Security.Cryptography.RSAEncryptionPadding.Kind_Ptr;
      
      function OaepSHA512
      return NetFrameworkBase.System.Security.Cryptography.RSAEncryptionPadding.Kind_Ptr;
      
      function CreateOaep
      (
         hashAlgorithm : NetFrameworkBase.System.Security.Cryptography.HashAlgorithmName.Kind_Ptr
      )
      return NetFrameworkBase.System.Security.Cryptography.RSAEncryptionPadding.Kind_Ptr;
      
      function Mode
      (
         this : in out RSAEncryptionPadding.Kind
      )
      return NetFrameworkBase.System.Security.Cryptography.RSAEncryptionPaddingMode.Kind;
      
      function OaepHashAlgorithm
      (
         this : in out RSAEncryptionPadding.Kind
      )
      return NetFrameworkBase.System.Security.Cryptography.HashAlgorithmName.Kind_Ptr;
      
      function GetHashCode
      (
         this : in out RSAEncryptionPadding.Kind
      )
      return NetFrameworkBase.Int32;
      
      function Equals
      (
         this : in out RSAEncryptionPadding.Kind;
         obj : NetFrameworkBase.System.Object.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      
      function Equals
      (
         this : in out RSAEncryptionPadding.Kind;
         other : NetFrameworkBase.System.Security.Cryptography.RSAEncryptionPadding.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      
      function op_Equality
      (
         left : NetFrameworkBase.System.Security.Cryptography.RSAEncryptionPadding.Kind_Ptr; 
         right : NetFrameworkBase.System.Security.Cryptography.RSAEncryptionPadding.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      function "="(left : NetFrameworkBase.System.Security.Cryptography.RSAEncryptionPadding.Kind_Ptr; right : NetFrameworkBase.System.Security.Cryptography.RSAEncryptionPadding.Kind_Ptr) return NetFrameworkBase.Boolean renames op_Equality;
      
      function op_Inequality
      (
         left : NetFrameworkBase.System.Security.Cryptography.RSAEncryptionPadding.Kind_Ptr; 
         right : NetFrameworkBase.System.Security.Cryptography.RSAEncryptionPadding.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      
      function ToString
      (
         this : in out RSAEncryptionPadding.Kind
      )
      return NetFrameworkBase.BSTR;
      
end;