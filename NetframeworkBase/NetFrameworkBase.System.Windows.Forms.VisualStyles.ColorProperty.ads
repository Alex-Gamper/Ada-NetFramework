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
package NetFrameworkBase.System.Windows.Forms.VisualStyles.ColorProperty is
   
   type Kind_Clr is new NetFrameworkBase.System.Enum.Kind with null record;
   type Kind_Clr_Ptr is access Kind_Clr;
   type Kind_Clr_Array is array(Natural range<>) of Kind_Clr_Ptr;
   type Kind_Clr_Array_Ptr is access all Kind_Clr_Array;
   
   type Kind is (
      BorderColor,
      FillColor,
      TextColor,
      EdgeLightColor,
      EdgeHighlightColor,
      EdgeShadowColor,
      EdgeDarkShadowColor,
      EdgeFillColor,
      TransparentColor,
      GradientColor1,
      GradientColor2,
      GradientColor3,
      GradientColor4,
      GradientColor5,
      ShadowColor,
      GlowColor,
      TextBorderColor,
      TextShadowColor,
      GlyphTextColor,
      GlyphTransparentColor,
      FillColorHint,
      BorderColorHint,
      AccentColorHint
   );
   
   for Kind use (
      BorderColor => 3801,
      FillColor => 3802,
      TextColor => 3803,
      EdgeLightColor => 3804,
      EdgeHighlightColor => 3805,
      EdgeShadowColor => 3806,
      EdgeDarkShadowColor => 3807,
      EdgeFillColor => 3808,
      TransparentColor => 3809,
      GradientColor1 => 3810,
      GradientColor2 => 3811,
      GradientColor3 => 3812,
      GradientColor4 => 3813,
      GradientColor5 => 3814,
      ShadowColor => 3815,
      GlowColor => 3816,
      TextBorderColor => 3817,
      TextShadowColor => 3818,
      GlyphTextColor => 3819,
      GlyphTransparentColor => 3820,
      FillColorHint => 3821,
      BorderColorHint => 3822,
      AccentColorHint => 3823
   );
   
   for Kind'Size use 32;
   
   type Kind_Ptr is access Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
   function Instance return NetFrameworkWin32.IType_Ptr;
   
end;