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
limited with NetFrameworkBase.System.Drawing.Graphics;
limited with NetFrameworkBase.System.Drawing.Rectangle;
limited with NetFrameworkBase.System.Windows.Forms.VisualStyles.TrackBarThumbState;
limited with NetFrameworkBase.System.Windows.Forms.VisualStyles.EdgeStyle;
limited with NetFrameworkBase.System.Drawing.Size;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Windows.Forms.TrackBarRenderer is
   
   type Kind is new NetFrameworkBase.System.Object.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function IsSupported
      return NetFrameworkBase.Boolean;
      
      procedure DrawHorizontalTrack
      (
         g : NetFrameworkBase.System.Drawing.Graphics.Kind_Ptr; 
         bounds : NetFrameworkBase.System.Drawing.Rectangle.Kind_Ptr
      )
      ;
      
      procedure DrawVerticalTrack
      (
         g : NetFrameworkBase.System.Drawing.Graphics.Kind_Ptr; 
         bounds : NetFrameworkBase.System.Drawing.Rectangle.Kind_Ptr
      )
      ;
      
      procedure DrawHorizontalThumb
      (
         g : NetFrameworkBase.System.Drawing.Graphics.Kind_Ptr; 
         bounds : NetFrameworkBase.System.Drawing.Rectangle.Kind_Ptr; 
         state : NetFrameworkBase.System.Windows.Forms.VisualStyles.TrackBarThumbState.Kind
      )
      ;
      
      procedure DrawVerticalThumb
      (
         g : NetFrameworkBase.System.Drawing.Graphics.Kind_Ptr; 
         bounds : NetFrameworkBase.System.Drawing.Rectangle.Kind_Ptr; 
         state : NetFrameworkBase.System.Windows.Forms.VisualStyles.TrackBarThumbState.Kind
      )
      ;
      
      procedure DrawLeftPointingThumb
      (
         g : NetFrameworkBase.System.Drawing.Graphics.Kind_Ptr; 
         bounds : NetFrameworkBase.System.Drawing.Rectangle.Kind_Ptr; 
         state : NetFrameworkBase.System.Windows.Forms.VisualStyles.TrackBarThumbState.Kind
      )
      ;
      
      procedure DrawRightPointingThumb
      (
         g : NetFrameworkBase.System.Drawing.Graphics.Kind_Ptr; 
         bounds : NetFrameworkBase.System.Drawing.Rectangle.Kind_Ptr; 
         state : NetFrameworkBase.System.Windows.Forms.VisualStyles.TrackBarThumbState.Kind
      )
      ;
      
      procedure DrawTopPointingThumb
      (
         g : NetFrameworkBase.System.Drawing.Graphics.Kind_Ptr; 
         bounds : NetFrameworkBase.System.Drawing.Rectangle.Kind_Ptr; 
         state : NetFrameworkBase.System.Windows.Forms.VisualStyles.TrackBarThumbState.Kind
      )
      ;
      
      procedure DrawBottomPointingThumb
      (
         g : NetFrameworkBase.System.Drawing.Graphics.Kind_Ptr; 
         bounds : NetFrameworkBase.System.Drawing.Rectangle.Kind_Ptr; 
         state : NetFrameworkBase.System.Windows.Forms.VisualStyles.TrackBarThumbState.Kind
      )
      ;
      
      procedure DrawHorizontalTicks
      (
         g : NetFrameworkBase.System.Drawing.Graphics.Kind_Ptr; 
         bounds : NetFrameworkBase.System.Drawing.Rectangle.Kind_Ptr; 
         numTicks : NetFrameworkBase.Int32; 
         edgeStyle : NetFrameworkBase.System.Windows.Forms.VisualStyles.EdgeStyle.Kind
      )
      ;
      
      procedure DrawVerticalTicks
      (
         g : NetFrameworkBase.System.Drawing.Graphics.Kind_Ptr; 
         bounds : NetFrameworkBase.System.Drawing.Rectangle.Kind_Ptr; 
         numTicks : NetFrameworkBase.Int32; 
         edgeStyle : NetFrameworkBase.System.Windows.Forms.VisualStyles.EdgeStyle.Kind
      )
      ;
      
      function GetLeftPointingThumbSize
      (
         g : NetFrameworkBase.System.Drawing.Graphics.Kind_Ptr; 
         state : NetFrameworkBase.System.Windows.Forms.VisualStyles.TrackBarThumbState.Kind
      )
      return NetFrameworkBase.System.Drawing.Size.Kind_Ptr;
      
      function GetRightPointingThumbSize
      (
         g : NetFrameworkBase.System.Drawing.Graphics.Kind_Ptr; 
         state : NetFrameworkBase.System.Windows.Forms.VisualStyles.TrackBarThumbState.Kind
      )
      return NetFrameworkBase.System.Drawing.Size.Kind_Ptr;
      
      function GetTopPointingThumbSize
      (
         g : NetFrameworkBase.System.Drawing.Graphics.Kind_Ptr; 
         state : NetFrameworkBase.System.Windows.Forms.VisualStyles.TrackBarThumbState.Kind
      )
      return NetFrameworkBase.System.Drawing.Size.Kind_Ptr;
      
      function GetBottomPointingThumbSize
      (
         g : NetFrameworkBase.System.Drawing.Graphics.Kind_Ptr; 
         state : NetFrameworkBase.System.Windows.Forms.VisualStyles.TrackBarThumbState.Kind
      )
      return NetFrameworkBase.System.Drawing.Size.Kind_Ptr;
      
end;