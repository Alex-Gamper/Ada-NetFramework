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
limited with NetFrameworkBase.System.Drawing.Imaging.ColorMatrix;
limited with NetFrameworkBase.System.Drawing.Imaging.ColorMatrixFlag;
limited with NetFrameworkBase.System.Drawing.Imaging.ColorAdjustType;
limited with NetFrameworkBase.System.Drawing.Color;
limited with NetFrameworkBase.System.Drawing.Imaging.ColorChannelFlag;
limited with NetFrameworkBase.System.Drawing.Imaging.ColorMap;
limited with NetFrameworkBase.System.Drawing.Drawing2D.WrapMode;
limited with NetFrameworkBase.System.Drawing.Imaging.ColorPalette;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Drawing.Imaging.ImageAttributes is
   
   type Kind is new NetFrameworkBase.System.Object.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      procedure SetColorMatrix
      (
         this : in out ImageAttributes.Kind;
         newColorMatrix : NetFrameworkBase.System.Drawing.Imaging.ColorMatrix.Kind_Ptr; 
         mode : NetFrameworkBase.System.Drawing.Imaging.ColorMatrixFlag.Kind; 
         type_x : NetFrameworkBase.System.Drawing.Imaging.ColorAdjustType.Kind
      );
      
      procedure ClearColorKey
      (
         this : in out ImageAttributes.Kind;
         type_x : NetFrameworkBase.System.Drawing.Imaging.ColorAdjustType.Kind
      );
      
      procedure Dispose
      (
         this : in out ImageAttributes.Kind
      );
      
      function Clone
      (
         this : in out ImageAttributes.Kind
      )
      return NetFrameworkBase.System.Object.Kind_Ptr;
      
      procedure SetColorMatrix
      (
         this : in out ImageAttributes.Kind;
         newColorMatrix : NetFrameworkBase.System.Drawing.Imaging.ColorMatrix.Kind_Ptr
      );
      
      procedure SetColorMatrix
      (
         this : in out ImageAttributes.Kind;
         newColorMatrix : NetFrameworkBase.System.Drawing.Imaging.ColorMatrix.Kind_Ptr; 
         flags : NetFrameworkBase.System.Drawing.Imaging.ColorMatrixFlag.Kind
      );
      
      procedure ClearColorMatrix
      (
         this : in out ImageAttributes.Kind
      );
      
      procedure ClearColorMatrix
      (
         this : in out ImageAttributes.Kind;
         type_x : NetFrameworkBase.System.Drawing.Imaging.ColorAdjustType.Kind
      );
      
      procedure SetColorMatrices
      (
         this : in out ImageAttributes.Kind;
         newColorMatrix : NetFrameworkBase.System.Drawing.Imaging.ColorMatrix.Kind_Ptr; 
         grayMatrix : NetFrameworkBase.System.Drawing.Imaging.ColorMatrix.Kind_Ptr
      );
      
      procedure SetColorMatrices
      (
         this : in out ImageAttributes.Kind;
         newColorMatrix : NetFrameworkBase.System.Drawing.Imaging.ColorMatrix.Kind_Ptr; 
         grayMatrix : NetFrameworkBase.System.Drawing.Imaging.ColorMatrix.Kind_Ptr; 
         flags : NetFrameworkBase.System.Drawing.Imaging.ColorMatrixFlag.Kind
      );
      
      procedure SetColorMatrices
      (
         this : in out ImageAttributes.Kind;
         newColorMatrix : NetFrameworkBase.System.Drawing.Imaging.ColorMatrix.Kind_Ptr; 
         grayMatrix : NetFrameworkBase.System.Drawing.Imaging.ColorMatrix.Kind_Ptr; 
         mode : NetFrameworkBase.System.Drawing.Imaging.ColorMatrixFlag.Kind; 
         type_x : NetFrameworkBase.System.Drawing.Imaging.ColorAdjustType.Kind
      );
      
      procedure SetThreshold
      (
         this : in out ImageAttributes.Kind;
         threshold : NetFrameworkBase.Single
      );
      
      procedure SetThreshold
      (
         this : in out ImageAttributes.Kind;
         threshold : NetFrameworkBase.Single; 
         type_x : NetFrameworkBase.System.Drawing.Imaging.ColorAdjustType.Kind
      );
      
      procedure ClearThreshold
      (
         this : in out ImageAttributes.Kind
      );
      
      procedure ClearThreshold
      (
         this : in out ImageAttributes.Kind;
         type_x : NetFrameworkBase.System.Drawing.Imaging.ColorAdjustType.Kind
      );
      
      procedure SetGamma
      (
         this : in out ImageAttributes.Kind;
         gamma : NetFrameworkBase.Single
      );
      
      procedure SetGamma
      (
         this : in out ImageAttributes.Kind;
         gamma : NetFrameworkBase.Single; 
         type_x : NetFrameworkBase.System.Drawing.Imaging.ColorAdjustType.Kind
      );
      
      procedure ClearGamma
      (
         this : in out ImageAttributes.Kind
      );
      
      procedure ClearGamma
      (
         this : in out ImageAttributes.Kind;
         type_x : NetFrameworkBase.System.Drawing.Imaging.ColorAdjustType.Kind
      );
      
      procedure SetNoOp
      (
         this : in out ImageAttributes.Kind
      );
      
      procedure SetNoOp
      (
         this : in out ImageAttributes.Kind;
         type_x : NetFrameworkBase.System.Drawing.Imaging.ColorAdjustType.Kind
      );
      
      procedure ClearNoOp
      (
         this : in out ImageAttributes.Kind
      );
      
      procedure ClearNoOp
      (
         this : in out ImageAttributes.Kind;
         type_x : NetFrameworkBase.System.Drawing.Imaging.ColorAdjustType.Kind
      );
      
      procedure SetColorKey
      (
         this : in out ImageAttributes.Kind;
         colorLow : NetFrameworkBase.System.Drawing.Color.Kind_Ptr; 
         colorHigh : NetFrameworkBase.System.Drawing.Color.Kind_Ptr
      );
      
      procedure SetColorKey
      (
         this : in out ImageAttributes.Kind;
         colorLow : NetFrameworkBase.System.Drawing.Color.Kind_Ptr; 
         colorHigh : NetFrameworkBase.System.Drawing.Color.Kind_Ptr; 
         type_x : NetFrameworkBase.System.Drawing.Imaging.ColorAdjustType.Kind
      );
      
      procedure ClearColorKey
      (
         this : in out ImageAttributes.Kind
      );
      
      procedure SetOutputChannel
      (
         this : in out ImageAttributes.Kind;
         flags : NetFrameworkBase.System.Drawing.Imaging.ColorChannelFlag.Kind
      );
      
      procedure SetOutputChannel
      (
         this : in out ImageAttributes.Kind;
         flags : NetFrameworkBase.System.Drawing.Imaging.ColorChannelFlag.Kind; 
         type_x : NetFrameworkBase.System.Drawing.Imaging.ColorAdjustType.Kind
      );
      
      procedure ClearOutputChannel
      (
         this : in out ImageAttributes.Kind
      );
      
      procedure ClearOutputChannel
      (
         this : in out ImageAttributes.Kind;
         type_x : NetFrameworkBase.System.Drawing.Imaging.ColorAdjustType.Kind
      );
      
      procedure SetOutputChannelColorProfile
      (
         this : in out ImageAttributes.Kind;
         colorProfileFilename : NetFrameworkBase.BSTR
      );
      
      procedure SetOutputChannelColorProfile
      (
         this : in out ImageAttributes.Kind;
         colorProfileFilename : NetFrameworkBase.BSTR; 
         type_x : NetFrameworkBase.System.Drawing.Imaging.ColorAdjustType.Kind
      );
      
      procedure ClearOutputChannelColorProfile
      (
         this : in out ImageAttributes.Kind
      );
      
      procedure ClearOutputChannelColorProfile
      (
         this : in out ImageAttributes.Kind;
         type_x : NetFrameworkBase.System.Drawing.Imaging.ColorAdjustType.Kind
      );
      
      procedure SetRemapTable
      (
         this : in out ImageAttributes.Kind;
         map : NetFrameworkBase.System.Drawing.Imaging.ColorMap.Kind_Array
      );
      
      procedure SetRemapTable
      (
         this : in out ImageAttributes.Kind;
         map : NetFrameworkBase.System.Drawing.Imaging.ColorMap.Kind_Array; 
         type_x : NetFrameworkBase.System.Drawing.Imaging.ColorAdjustType.Kind
      );
      
      procedure ClearRemapTable
      (
         this : in out ImageAttributes.Kind
      );
      
      procedure ClearRemapTable
      (
         this : in out ImageAttributes.Kind;
         type_x : NetFrameworkBase.System.Drawing.Imaging.ColorAdjustType.Kind
      );
      
      procedure SetBrushRemapTable
      (
         this : in out ImageAttributes.Kind;
         map : NetFrameworkBase.System.Drawing.Imaging.ColorMap.Kind_Array
      );
      
      procedure ClearBrushRemapTable
      (
         this : in out ImageAttributes.Kind
      );
      
      procedure SetWrapMode
      (
         this : in out ImageAttributes.Kind;
         mode : NetFrameworkBase.System.Drawing.Drawing2D.WrapMode.Kind
      );
      
      procedure SetWrapMode
      (
         this : in out ImageAttributes.Kind;
         mode : NetFrameworkBase.System.Drawing.Drawing2D.WrapMode.Kind; 
         color : NetFrameworkBase.System.Drawing.Color.Kind_Ptr
      );
      
      procedure SetWrapMode
      (
         this : in out ImageAttributes.Kind;
         mode : NetFrameworkBase.System.Drawing.Drawing2D.WrapMode.Kind; 
         color : NetFrameworkBase.System.Drawing.Color.Kind_Ptr; 
         clamp : NetFrameworkBase.Boolean
      );
      
      procedure GetAdjustedPalette
      (
         this : in out ImageAttributes.Kind;
         palette : NetFrameworkBase.System.Drawing.Imaging.ColorPalette.Kind_Ptr; 
         type_x : NetFrameworkBase.System.Drawing.Imaging.ColorAdjustType.Kind
      );
      
      function Constructor return NetFrameworkBase.System.Drawing.Imaging.ImageAttributes.Kind_Ptr;
      
end;