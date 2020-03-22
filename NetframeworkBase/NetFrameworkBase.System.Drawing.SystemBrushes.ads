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
limited with NetFrameworkBase.System.Drawing.Color;
limited with NetFrameworkBase.System.Drawing.Brush;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Drawing.SystemBrushes is
   
   type Kind is new NetFrameworkBase.System.Object.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function FromSystemColor
      (
         c : NetFrameworkBase.System.Drawing.Color.Kind_Ptr
      )
      return NetFrameworkBase.System.Drawing.Brush.Kind_Ptr;
      
      function ActiveBorder
      return NetFrameworkBase.System.Drawing.Brush.Kind_Ptr;
      
      function ActiveCaption
      return NetFrameworkBase.System.Drawing.Brush.Kind_Ptr;
      
      function ActiveCaptionText
      return NetFrameworkBase.System.Drawing.Brush.Kind_Ptr;
      
      function AppWorkspace
      return NetFrameworkBase.System.Drawing.Brush.Kind_Ptr;
      
      function ButtonFace
      return NetFrameworkBase.System.Drawing.Brush.Kind_Ptr;
      
      function ButtonHighlight
      return NetFrameworkBase.System.Drawing.Brush.Kind_Ptr;
      
      function ButtonShadow
      return NetFrameworkBase.System.Drawing.Brush.Kind_Ptr;
      
      function Control
      return NetFrameworkBase.System.Drawing.Brush.Kind_Ptr;
      
      function ControlLightLight
      return NetFrameworkBase.System.Drawing.Brush.Kind_Ptr;
      
      function ControlLight
      return NetFrameworkBase.System.Drawing.Brush.Kind_Ptr;
      
      function ControlDark
      return NetFrameworkBase.System.Drawing.Brush.Kind_Ptr;
      
      function ControlDarkDark
      return NetFrameworkBase.System.Drawing.Brush.Kind_Ptr;
      
      function ControlText
      return NetFrameworkBase.System.Drawing.Brush.Kind_Ptr;
      
      function Desktop
      return NetFrameworkBase.System.Drawing.Brush.Kind_Ptr;
      
      function GradientActiveCaption
      return NetFrameworkBase.System.Drawing.Brush.Kind_Ptr;
      
      function GradientInactiveCaption
      return NetFrameworkBase.System.Drawing.Brush.Kind_Ptr;
      
      function GrayText
      return NetFrameworkBase.System.Drawing.Brush.Kind_Ptr;
      
      function Highlight
      return NetFrameworkBase.System.Drawing.Brush.Kind_Ptr;
      
      function HighlightText
      return NetFrameworkBase.System.Drawing.Brush.Kind_Ptr;
      
      function HotTrack
      return NetFrameworkBase.System.Drawing.Brush.Kind_Ptr;
      
      function InactiveCaption
      return NetFrameworkBase.System.Drawing.Brush.Kind_Ptr;
      
      function InactiveBorder
      return NetFrameworkBase.System.Drawing.Brush.Kind_Ptr;
      
      function InactiveCaptionText
      return NetFrameworkBase.System.Drawing.Brush.Kind_Ptr;
      
      function Info
      return NetFrameworkBase.System.Drawing.Brush.Kind_Ptr;
      
      function InfoText
      return NetFrameworkBase.System.Drawing.Brush.Kind_Ptr;
      
      function Menu
      return NetFrameworkBase.System.Drawing.Brush.Kind_Ptr;
      
      function MenuBar
      return NetFrameworkBase.System.Drawing.Brush.Kind_Ptr;
      
      function MenuHighlight
      return NetFrameworkBase.System.Drawing.Brush.Kind_Ptr;
      
      function MenuText
      return NetFrameworkBase.System.Drawing.Brush.Kind_Ptr;
      
      function ScrollBar
      return NetFrameworkBase.System.Drawing.Brush.Kind_Ptr;
      
      function Window
      return NetFrameworkBase.System.Drawing.Brush.Kind_Ptr;
      
      function WindowFrame
      return NetFrameworkBase.System.Drawing.Brush.Kind_Ptr;
      
      function WindowText
      return NetFrameworkBase.System.Drawing.Brush.Kind_Ptr;
      
end;