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
package NetFrameworkBase.System.Reflection.MethodAttributes is
   
   type Kind_Clr is new NetFrameworkBase.System.Enum.Kind with null record;
   type Kind_Clr_Ptr is access Kind_Clr;
   type Kind_Clr_Array is array(Natural range<>) of Kind_Clr_Ptr;
   type Kind_Clr_Array_Ptr is access all Kind_Clr_Array;
   
   type Kind is (
      ReuseSlot,
      Private_x,
      FamANDAssem,
      Assembly,
      Family,
      FamORAssem,
      Public,
      MemberAccessMask,
      UnmanagedExport,
      Static,
      Final,
      Virtual,
      HideBySig,
      NewSlot,
      CheckAccessOnOverride,
      Abstract_x,
      SpecialName,
      RTSpecialName,
      PinvokeImpl,
      HasSecurity,
      RequireSecObject,
      ReservedMask
   );
   
   for Kind use (
      ReuseSlot => 0,
      Private_x => 1,
      FamANDAssem => 2,
      Assembly => 3,
      Family => 4,
      FamORAssem => 5,
      Public => 6,
      MemberAccessMask => 7,
      UnmanagedExport => 8,
      Static => 16,
      Final => 32,
      Virtual => 64,
      HideBySig => 128,
      NewSlot => 256,
      CheckAccessOnOverride => 512,
      Abstract_x => 1024,
      SpecialName => 2048,
      RTSpecialName => 4096,
      PinvokeImpl => 8192,
      HasSecurity => 16384,
      RequireSecObject => 32768,
      ReservedMask => 53248
   );
   
   for Kind'Size use 32;
   
   type Kind_Ptr is access Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
   function Instance return NetFrameworkWin32.IType_Ptr;
   
end;
