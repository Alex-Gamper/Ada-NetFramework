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
with NetFrameworkBase.System.Security.Cryptography.X509Certificates.X509CertificateCollection;
limited with NetFrameworkBase.System.Security.Cryptography.X509Certificates.X509Certificate2;
limited with NetFrameworkBase.System.Security.Cryptography.X509Certificates.X509FindType;
with NetFrameworkBase.System.Object;
limited with NetFrameworkBase.System.Security.Cryptography.X509Certificates.X509ContentType;
limited with NetFrameworkBase.System.Security.Cryptography.X509Certificates.X509KeyStorageFlags;
limited with NetFrameworkBase.System.Security.Cryptography.X509Certificates.X509Certificate2Enumerator;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Security.Cryptography.X509Certificates.X509Certificate2Collection is
   
   type Kind is new NetFrameworkBase.System.Security.Cryptography.X509Certificates.X509CertificateCollection.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function Item
      (
         this : in out X509Certificate2Collection.Kind;
         index : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.Security.Cryptography.X509Certificates.X509Certificate2.Kind_Ptr;
      
      function Add
      (
         this : in out X509Certificate2Collection.Kind;
         certificate : NetFrameworkBase.System.Security.Cryptography.X509Certificates.X509Certificate2.Kind_Ptr
      )
      return NetFrameworkBase.Int32;
      
      procedure Item
      (
         this : in out X509Certificate2Collection.Kind;
         index : NetFrameworkBase.Int32; 
         value : NetFrameworkBase.System.Security.Cryptography.X509Certificates.X509Certificate2.Kind_Ptr
      );
      
      procedure AddRange
      (
         this : in out X509Certificate2Collection.Kind;
         certificates : NetFrameworkBase.System.Security.Cryptography.X509Certificates.X509Certificate2.Kind_Array
      );
      
      procedure AddRange
      (
         this : in out X509Certificate2Collection.Kind;
         certificates : NetFrameworkBase.System.Security.Cryptography.X509Certificates.X509Certificate2Collection.Kind_Ptr
      );
      
      function Contains
      (
         this : in out X509Certificate2Collection.Kind;
         certificate : NetFrameworkBase.System.Security.Cryptography.X509Certificates.X509Certificate2.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      
      procedure Insert
      (
         this : in out X509Certificate2Collection.Kind;
         index : NetFrameworkBase.Int32; 
         certificate : NetFrameworkBase.System.Security.Cryptography.X509Certificates.X509Certificate2.Kind_Ptr
      );
      
      function GetEnumerator
      (
         this : in out X509Certificate2Collection.Kind
      )
      return NetFrameworkBase.System.Security.Cryptography.X509Certificates.X509Certificate2Enumerator.Kind_Ptr;
      
      procedure Remove
      (
         this : in out X509Certificate2Collection.Kind;
         certificate : NetFrameworkBase.System.Security.Cryptography.X509Certificates.X509Certificate2.Kind_Ptr
      );
      
      procedure RemoveRange
      (
         this : in out X509Certificate2Collection.Kind;
         certificates : NetFrameworkBase.System.Security.Cryptography.X509Certificates.X509Certificate2.Kind_Array
      );
      
      procedure RemoveRange
      (
         this : in out X509Certificate2Collection.Kind;
         certificates : NetFrameworkBase.System.Security.Cryptography.X509Certificates.X509Certificate2Collection.Kind_Ptr
      );
      
      function Find
      (
         this : in out X509Certificate2Collection.Kind;
         findType : NetFrameworkBase.System.Security.Cryptography.X509Certificates.X509FindType.Kind; 
         findValue : NetFrameworkBase.System.Object.Kind_Ptr; 
         validOnly : NetFrameworkBase.Boolean
      )
      return NetFrameworkBase.System.Security.Cryptography.X509Certificates.X509Certificate2Collection.Kind_Ptr;
      
      procedure Import
      (
         this : in out X509Certificate2Collection.Kind;
         rawData : NetFrameworkBase.Byte_Array
      );
      
      procedure Import
      (
         this : in out X509Certificate2Collection.Kind;
         fileName : NetFrameworkBase.BSTR
      );
      
      function Export
      (
         this : in out X509Certificate2Collection.Kind;
         contentType : NetFrameworkBase.System.Security.Cryptography.X509Certificates.X509ContentType.Kind
      )
      return NetFrameworkBase.Byte_Array;
      
      function Export
      (
         this : in out X509Certificate2Collection.Kind;
         contentType : NetFrameworkBase.System.Security.Cryptography.X509Certificates.X509ContentType.Kind; 
         password : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.Byte_Array;
      
      procedure Import
      (
         this : in out X509Certificate2Collection.Kind;
         rawData : NetFrameworkBase.Byte_Array; 
         password : NetFrameworkBase.BSTR; 
         keyStorageFlags : NetFrameworkBase.System.Security.Cryptography.X509Certificates.X509KeyStorageFlags.Kind
      );
      
      procedure Import
      (
         this : in out X509Certificate2Collection.Kind;
         fileName : NetFrameworkBase.BSTR; 
         password : NetFrameworkBase.BSTR; 
         keyStorageFlags : NetFrameworkBase.System.Security.Cryptography.X509Certificates.X509KeyStorageFlags.Kind
      );
      
      function Constructor return NetFrameworkBase.System.Security.Cryptography.X509Certificates.X509Certificate2Collection.Kind_Ptr;
      
      function Constructor
      (
         certificate : NetFrameworkBase.System.Security.Cryptography.X509Certificates.X509Certificate2.Kind_Ptr
      )
      return NetFrameworkBase.System.Security.Cryptography.X509Certificates.X509Certificate2Collection.Kind_Ptr;
      
      function Constructor
      (
         certificates : NetFrameworkBase.System.Security.Cryptography.X509Certificates.X509Certificate2Collection.Kind_Ptr
      )
      return NetFrameworkBase.System.Security.Cryptography.X509Certificates.X509Certificate2Collection.Kind_Ptr;
      
      function Constructor
      (
         certificates : NetFrameworkBase.System.Security.Cryptography.X509Certificates.X509Certificate2.Kind_Array
      )
      return NetFrameworkBase.System.Security.Cryptography.X509Certificates.X509Certificate2Collection.Kind_Ptr;
      
end;