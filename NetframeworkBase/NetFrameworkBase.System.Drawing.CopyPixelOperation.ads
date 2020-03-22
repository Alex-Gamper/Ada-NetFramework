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
package NetFrameworkBase.System.Drawing.CopyPixelOperation is
   
   type Kind_Clr is new NetFrameworkBase.System.Enum.Kind with null record;
   type Kind_Clr_Ptr is access Kind_Clr;
   type Kind_Clr_Array is array(Natural range<>) of Kind_Clr_Ptr;
   type Kind_Clr_Array_Ptr is access all Kind_Clr_Array;
   
   type Kind is (
      NoMirrorBitmap,
      Blackness,
      NotSourceErase,
      NotSourceCopy,
      SourceErase,
      DestinationInvert,
      PatInvert,
      SourceInvert,
      SourceAnd,
      MergePaint,
      MergeCopy,
      SourceCopy,
      SourcePaint,
      PatCopy,
      PatPaint,
      Whiteness,
      CaptureBlt
   );
   
   for Kind use (
      NoMirrorBitmap => -2147483648,
      Blackness => 66,
      NotSourceErase => 1114278,
      NotSourceCopy => 3342344,
      SourceErase => 4457256,
      DestinationInvert => 5570569,
      PatInvert => 5898313,
      SourceInvert => 6684742,
      SourceAnd => 8913094,
      MergePaint => 12255782,
      MergeCopy => 12583114,
      SourceCopy => 13369376,
      SourcePaint => 15597702,
      PatCopy => 15728673,
      PatPaint => 16452105,
      Whiteness => 16711778,
      CaptureBlt => 1073741824
   );
   
   for Kind'Size use 32;
   
   type Kind_Ptr is access Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
   function Instance return NetFrameworkWin32.IType_Ptr;
   
end;