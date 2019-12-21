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
with NetFrameworkBase.System.Net.NetworkInformation.IPAddressInformation;
limited with NetFrameworkBase.System.Net.NetworkInformation.DuplicateAddressDetectionState;
limited with NetFrameworkBase.System.Net.NetworkInformation.PrefixOrigin;
limited with NetFrameworkBase.System.Net.NetworkInformation.SuffixOrigin;
limited with NetFrameworkBase.System.Net.IPAddress;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Net.NetworkInformation.UnicastIPAddressInformation is
   
   type Kind is new NetFrameworkBase.System.Net.NetworkInformation.IPAddressInformation.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function PrefixLength
      (
         this : in out UnicastIPAddressInformation.Kind
      )
      return NetFrameworkBase.Int32;
      
      function AddressPreferredLifetime
      (
         this : in out UnicastIPAddressInformation.Kind
      )
      return NetFrameworkBase.Int64;
      
      function AddressValidLifetime
      (
         this : in out UnicastIPAddressInformation.Kind
      )
      return NetFrameworkBase.Int64;
      
      function DhcpLeaseLifetime
      (
         this : in out UnicastIPAddressInformation.Kind
      )
      return NetFrameworkBase.Int64;
      
      function DuplicateAddressDetectionState
      (
         this : in out UnicastIPAddressInformation.Kind
      )
      return NetFrameworkBase.System.Net.NetworkInformation.DuplicateAddressDetectionState.Kind;
      
      function PrefixOrigin
      (
         this : in out UnicastIPAddressInformation.Kind
      )
      return NetFrameworkBase.System.Net.NetworkInformation.PrefixOrigin.Kind;
      
      function SuffixOrigin
      (
         this : in out UnicastIPAddressInformation.Kind
      )
      return NetFrameworkBase.System.Net.NetworkInformation.SuffixOrigin.Kind;
      
      function IPv4Mask
      (
         this : in out UnicastIPAddressInformation.Kind
      )
      return NetFrameworkBase.System.Net.IPAddress.Kind_Ptr;
      
end;