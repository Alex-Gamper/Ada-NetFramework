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
with NetFrameworkBase.System.ValueType;
limited with NetFrameworkBase.System.Drawing.KnownColor;
with NetFrameworkBase.System.Object;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Drawing.Color is
   
   type Kind is new NetFrameworkBase.System.ValueType.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function Transparent
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function AliceBlue
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function AntiqueWhite
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function Aqua
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function Aquamarine
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function Azure
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function Beige
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function Bisque
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function Black
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function BlanchedAlmond
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function Blue
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function BlueViolet
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function Brown
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function BurlyWood
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function CadetBlue
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function Chartreuse
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function Chocolate
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function Coral
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function CornflowerBlue
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function Cornsilk
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function Crimson
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function Cyan
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function DarkBlue
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function DarkCyan
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function DarkGoldenrod
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function DarkGray
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function DarkGreen
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function DarkKhaki
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function DarkMagenta
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function DarkOliveGreen
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function DarkOrange
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function DarkOrchid
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function DarkRed
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function DarkSalmon
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function DarkSeaGreen
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function DarkSlateBlue
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function DarkSlateGray
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function DarkTurquoise
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function DarkViolet
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function DeepPink
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function DeepSkyBlue
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function DimGray
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function DodgerBlue
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function Firebrick
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function FloralWhite
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function ForestGreen
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function Fuchsia
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function Gainsboro
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function GhostWhite
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function Gold
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function Goldenrod
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function Gray
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function Green
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function GreenYellow
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function Honeydew
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function HotPink
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function IndianRed
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function Indigo
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function Ivory
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function Khaki
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function Lavender
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function LavenderBlush
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function LawnGreen
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function LemonChiffon
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function LightBlue
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function LightCoral
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function LightCyan
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function LightGoldenrodYellow
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function LightGreen
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function LightGray
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function LightPink
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function LightSalmon
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function LightSeaGreen
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function LightSkyBlue
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function LightSlateGray
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function LightSteelBlue
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function LightYellow
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function Lime
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function LimeGreen
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function Linen
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function Magenta
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function Maroon
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function MediumAquamarine
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function MediumBlue
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function MediumOrchid
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function MediumPurple
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function MediumSeaGreen
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function MediumSlateBlue
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function MediumSpringGreen
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function MediumTurquoise
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function MediumVioletRed
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function MidnightBlue
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function MintCream
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function MistyRose
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function Moccasin
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function NavajoWhite
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function Navy
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function OldLace
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function Olive
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function OliveDrab
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function Orange
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function OrangeRed
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function Orchid
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function PaleGoldenrod
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function PaleGreen
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function PaleTurquoise
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function PaleVioletRed
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function PapayaWhip
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function PeachPuff
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function Peru
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function Pink
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function Plum
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function PowderBlue
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function Purple
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function Red
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function RosyBrown
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function RoyalBlue
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function SaddleBrown
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function Salmon
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function SandyBrown
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function SeaGreen
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function SeaShell
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function Sienna
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function Silver
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function SkyBlue
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function SlateBlue
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function SlateGray
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function Snow
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function SpringGreen
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function SteelBlue
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function Tan
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function Teal
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function Thistle
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function Tomato
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function Turquoise
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function Violet
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function Wheat
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function White
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function WhiteSmoke
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function Yellow
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function YellowGreen
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function R
      (
         this : in out Color.Kind
      )
      return NetFrameworkBase.Byte;
      
      function G
      (
         this : in out Color.Kind
      )
      return NetFrameworkBase.Byte;
      
      function B
      (
         this : in out Color.Kind
      )
      return NetFrameworkBase.Byte;
      
      function A
      (
         this : in out Color.Kind
      )
      return NetFrameworkBase.Byte;
      
      function IsKnownColor
      (
         this : in out Color.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function IsEmpty
      (
         this : in out Color.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function IsNamedColor
      (
         this : in out Color.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function IsSystemColor
      (
         this : in out Color.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function Name
      (
         this : in out Color.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function FromArgb
      (
         argb : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function FromArgb
      (
         red : NetFrameworkBase.Int32; 
         green : NetFrameworkBase.Int32; 
         blue : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function FromKnownColor
      (
         color : NetFrameworkBase.System.Drawing.KnownColor.Kind
      )
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function FromName
      (
         name : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function GetBrightness
      (
         this : in out Color.Kind
      )
      return NetFrameworkBase.Single;
      
      function GetHue
      (
         this : in out Color.Kind
      )
      return NetFrameworkBase.Single;
      
      function GetSaturation
      (
         this : in out Color.Kind
      )
      return NetFrameworkBase.Single;
      
      function ToArgb
      (
         this : in out Color.Kind
      )
      return NetFrameworkBase.Int32;
      
      function ToKnownColor
      (
         this : in out Color.Kind
      )
      return NetFrameworkBase.System.Drawing.KnownColor.Kind;
      
      function op_Equality
      (
         left : NetFrameworkBase.System.Drawing.Color.Kind_Ptr; 
         right : NetFrameworkBase.System.Drawing.Color.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      function "="(left : NetFrameworkBase.System.Drawing.Color.Kind_Ptr; right : NetFrameworkBase.System.Drawing.Color.Kind_Ptr) return NetFrameworkBase.Boolean renames op_Equality;
      
      function op_Inequality
      (
         left : NetFrameworkBase.System.Drawing.Color.Kind_Ptr; 
         right : NetFrameworkBase.System.Drawing.Color.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      
      function Equals
      (
         this : in out Color.Kind;
         obj : NetFrameworkBase.System.Object.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      
      function GetHashCode
      (
         this : in out Color.Kind
      )
      return NetFrameworkBase.Int32;
      
      function ToString
      (
         this : in out Color.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function FromArgb
      (
         alpha : NetFrameworkBase.Int32; 
         red : NetFrameworkBase.Int32; 
         green : NetFrameworkBase.Int32; 
         blue : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function FromArgb
      (
         alpha : NetFrameworkBase.Int32; 
         baseColor : NetFrameworkBase.System.Drawing.Color.Kind_Ptr
      )
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
end;
