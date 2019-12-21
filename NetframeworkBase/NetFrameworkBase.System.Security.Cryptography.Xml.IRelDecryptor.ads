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
limited with NetFrameworkBase.System.Security.Cryptography.Xml.EncryptionMethod;
limited with NetFrameworkBase.System.Security.Cryptography.Xml.KeyInfo;
limited with NetFrameworkBase.System.IO.Stream;
with NetFrameworkWin32;
with NetFrameworkAdaRuntime;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Security.Cryptography.Xml.IRelDecryptor is
   
   type Kind is interface and NetFrameworkWin32.IUnknown;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array (Natural range <>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function Decrypt
      (
         this : in out IRelDecryptor.Kind;
         encryptionMethod : NetFrameworkBase.System.Security.Cryptography.Xml.EncryptionMethod.Kind_Ptr;
         keyInfo : NetFrameworkBase.System.Security.Cryptography.Xml.KeyInfo.Kind_Ptr;
         toDecrypt : NetFrameworkBase.System.IO.Stream.Kind_Ptr;
         RetVal : access NetFrameworkBase.System.IO.Stream.Kind_Ptr
      ) return HResult is abstract;
      
   private
   
      This_AssemblyFile : constant Standard.Wide_String := "C:\Windows\Microsoft.NET\Framework64\v4.0.30319\System.Security.dll";
      This_AssemblyName : constant Standard.Wide_String := "System.Security, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a";
      This_TypeName     : constant Standard.Wide_String := "System.Security.Cryptography.Xml.IRelDecryptor";
   
end;
