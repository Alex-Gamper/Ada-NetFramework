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
limited with NetFrameworkBase.System.Security.Cryptography.CspParameters;
limited with NetFrameworkBase.System.Security.Cryptography.KeyNumber;
limited with NetFrameworkBase.System.Security.AccessControl.CryptoKeySecurity;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Security.Cryptography.CspKeyContainerInfo is
   
   type Kind is new NetFrameworkBase.System.Object.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function MachineKeyStore
      (
         this : in out CspKeyContainerInfo.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function ProviderName
      (
         this : in out CspKeyContainerInfo.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function ProviderType
      (
         this : in out CspKeyContainerInfo.Kind
      )
      return NetFrameworkBase.Int32;
      
      function KeyContainerName
      (
         this : in out CspKeyContainerInfo.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function UniqueKeyContainerName
      (
         this : in out CspKeyContainerInfo.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function KeyNumber
      (
         this : in out CspKeyContainerInfo.Kind
      )
      return NetFrameworkBase.System.Security.Cryptography.KeyNumber.Kind;
      
      function Exportable
      (
         this : in out CspKeyContainerInfo.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function HardwareDevice
      (
         this : in out CspKeyContainerInfo.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function Removable
      (
         this : in out CspKeyContainerInfo.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function Accessible
      (
         this : in out CspKeyContainerInfo.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function Protected_x
      (
         this : in out CspKeyContainerInfo.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function CryptoKeySecurity
      (
         this : in out CspKeyContainerInfo.Kind
      )
      return NetFrameworkBase.System.Security.AccessControl.CryptoKeySecurity.Kind_Ptr;
      
      function RandomlyGenerated
      (
         this : in out CspKeyContainerInfo.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function Constructor
      (
         parameters : NetFrameworkBase.System.Security.Cryptography.CspParameters.Kind_Ptr
      )
      return NetFrameworkBase.System.Security.Cryptography.CspKeyContainerInfo.Kind_Ptr;
      
end;