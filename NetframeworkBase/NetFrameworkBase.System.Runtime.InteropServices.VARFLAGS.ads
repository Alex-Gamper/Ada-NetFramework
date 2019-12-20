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
package NetFrameworkBase.System.Runtime.InteropServices.VARFLAGS is
   
   type Kind_Clr is new NetFrameworkBase.System.Enum.Kind with null record;
   type Kind_Clr_Ptr is access Kind_Clr;
   type Kind_Clr_Array is array(Natural range<>) of Kind_Clr_Ptr;
   type Kind_Clr_Array_Ptr is access all Kind_Clr_Array;
   
   type Kind is (
      VARFLAG_FREADONLY,
      VARFLAG_FSOURCE,
      VARFLAG_FBINDABLE,
      VARFLAG_FREQUESTEDIT,
      VARFLAG_FDISPLAYBIND,
      VARFLAG_FDEFAULTBIND,
      VARFLAG_FHIDDEN,
      VARFLAG_FRESTRICTED,
      VARFLAG_FDEFAULTCOLLELEM,
      VARFLAG_FUIDEFAULT,
      VARFLAG_FNONBROWSABLE,
      VARFLAG_FREPLACEABLE,
      VARFLAG_FIMMEDIATEBIND
   );
   
   for Kind use (
      VARFLAG_FREADONLY => 1,
      VARFLAG_FSOURCE => 2,
      VARFLAG_FBINDABLE => 4,
      VARFLAG_FREQUESTEDIT => 8,
      VARFLAG_FDISPLAYBIND => 16,
      VARFLAG_FDEFAULTBIND => 32,
      VARFLAG_FHIDDEN => 64,
      VARFLAG_FRESTRICTED => 128,
      VARFLAG_FDEFAULTCOLLELEM => 256,
      VARFLAG_FUIDEFAULT => 512,
      VARFLAG_FNONBROWSABLE => 1024,
      VARFLAG_FREPLACEABLE => 2048,
      VARFLAG_FIMMEDIATEBIND => 4096
   );
   
   for Kind'Size use 16;
   
   type Kind_Ptr is access Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
   function Instance return NetFrameworkWin32.IType_Ptr;
   
end;
