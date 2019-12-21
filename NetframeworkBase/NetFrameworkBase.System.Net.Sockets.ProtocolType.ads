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
with NetFrameworkBase.System.Enum;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Net.Sockets.ProtocolType is
   
   type Kind_Clr is new NetFrameworkBase.System.Enum.Kind with null record;
   type Kind_Clr_Ptr is access Kind_Clr;
   type Kind_Clr_Array is array(Natural range<>) of Kind_Clr_Ptr;
   type Kind_Clr_Array_Ptr is access all Kind_Clr_Array;
   
   type Kind is (
      Unknown,
      Unspecified,
      Icmp,
      Igmp,
      Ggp,
      IPv4,
      Tcp,
      Pup,
      Udp,
      Idp,
      IPv6,
      IPv6RoutingHeader,
      IPv6FragmentHeader,
      IPSecEncapsulatingSecurityPayload,
      IPSecAuthenticationHeader,
      IcmpV6,
      IPv6NoNextHeader,
      IPv6DestinationOptions,
      ND,
      Raw,
      Ipx,
      Spx,
      SpxII
   );
   
   for Kind use (
      Unknown => -1,
      Unspecified => 0,
      Icmp => 1,
      Igmp => 2,
      Ggp => 3,
      IPv4 => 4,
      Tcp => 6,
      Pup => 12,
      Udp => 17,
      Idp => 22,
      IPv6 => 41,
      IPv6RoutingHeader => 43,
      IPv6FragmentHeader => 44,
      IPSecEncapsulatingSecurityPayload => 50,
      IPSecAuthenticationHeader => 51,
      IcmpV6 => 58,
      IPv6NoNextHeader => 59,
      IPv6DestinationOptions => 60,
      ND => 77,
      Raw => 255,
      Ipx => 1000,
      Spx => 1256,
      SpxII => 1257
   );
   
   for Kind'Size use 32;
   
   type Kind_Ptr is access Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
   function Instance return NetFrameworkWin32.IType_Ptr;
   
end;
