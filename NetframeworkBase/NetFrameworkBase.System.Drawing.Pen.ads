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
with NetFrameworkBase.System.MarshalByRefObject;
limited with NetFrameworkBase.System.Drawing.Drawing2D.LineCap;
limited with NetFrameworkBase.System.Drawing.Drawing2D.DashCap;
limited with NetFrameworkBase.System.Drawing.Drawing2D.LineJoin;
limited with NetFrameworkBase.System.Drawing.Drawing2D.CustomLineCap;
limited with NetFrameworkBase.System.Drawing.Drawing2D.PenAlignment;
limited with NetFrameworkBase.System.Drawing.Drawing2D.Matrix;
limited with NetFrameworkBase.System.Drawing.Drawing2D.MatrixOrder;
limited with NetFrameworkBase.System.Drawing.Color;
limited with NetFrameworkBase.System.Drawing.Brush;
limited with NetFrameworkBase.System.Drawing.Drawing2D.DashStyle;
with NetFrameworkBase.System.Object;
limited with NetFrameworkBase.System.Drawing.Drawing2D.PenType;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Drawing.Pen is
   
   type Kind is new NetFrameworkBase.System.MarshalByRefObject.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function Clone
      (
         this : in out Pen.Kind
      )
      return NetFrameworkBase.System.Object.Kind_Ptr;
      
      procedure Dispose
      (
         this : in out Pen.Kind
      );
      
      function Width
      (
         this : in out Pen.Kind
      )
      return NetFrameworkBase.Single;
      
      procedure Width
      (
         this : in out Pen.Kind;
         value : NetFrameworkBase.Single
      );
      
      procedure SetLineCap
      (
         this : in out Pen.Kind;
         startCap : NetFrameworkBase.System.Drawing.Drawing2D.LineCap.Kind; 
         endCap : NetFrameworkBase.System.Drawing.Drawing2D.LineCap.Kind; 
         dashCap : NetFrameworkBase.System.Drawing.Drawing2D.DashCap.Kind
      );
      
      function StartCap
      (
         this : in out Pen.Kind
      )
      return NetFrameworkBase.System.Drawing.Drawing2D.LineCap.Kind;
      
      procedure StartCap
      (
         this : in out Pen.Kind;
         value : NetFrameworkBase.System.Drawing.Drawing2D.LineCap.Kind
      );
      
      function EndCap
      (
         this : in out Pen.Kind
      )
      return NetFrameworkBase.System.Drawing.Drawing2D.LineCap.Kind;
      
      procedure EndCap
      (
         this : in out Pen.Kind;
         value : NetFrameworkBase.System.Drawing.Drawing2D.LineCap.Kind
      );
      
      function DashCap
      (
         this : in out Pen.Kind
      )
      return NetFrameworkBase.System.Drawing.Drawing2D.DashCap.Kind;
      
      procedure DashCap
      (
         this : in out Pen.Kind;
         value : NetFrameworkBase.System.Drawing.Drawing2D.DashCap.Kind
      );
      
      function LineJoin
      (
         this : in out Pen.Kind
      )
      return NetFrameworkBase.System.Drawing.Drawing2D.LineJoin.Kind;
      
      procedure LineJoin
      (
         this : in out Pen.Kind;
         value : NetFrameworkBase.System.Drawing.Drawing2D.LineJoin.Kind
      );
      
      function CustomStartCap
      (
         this : in out Pen.Kind
      )
      return NetFrameworkBase.System.Drawing.Drawing2D.CustomLineCap.Kind_Ptr;
      
      procedure CustomStartCap
      (
         this : in out Pen.Kind;
         value : NetFrameworkBase.System.Drawing.Drawing2D.CustomLineCap.Kind_Ptr
      );
      
      function CustomEndCap
      (
         this : in out Pen.Kind
      )
      return NetFrameworkBase.System.Drawing.Drawing2D.CustomLineCap.Kind_Ptr;
      
      procedure CustomEndCap
      (
         this : in out Pen.Kind;
         value : NetFrameworkBase.System.Drawing.Drawing2D.CustomLineCap.Kind_Ptr
      );
      
      function MiterLimit
      (
         this : in out Pen.Kind
      )
      return NetFrameworkBase.Single;
      
      procedure MiterLimit
      (
         this : in out Pen.Kind;
         value : NetFrameworkBase.Single
      );
      
      function Alignment
      (
         this : in out Pen.Kind
      )
      return NetFrameworkBase.System.Drawing.Drawing2D.PenAlignment.Kind;
      
      procedure Alignment
      (
         this : in out Pen.Kind;
         value : NetFrameworkBase.System.Drawing.Drawing2D.PenAlignment.Kind
      );
      
      function Transform
      (
         this : in out Pen.Kind
      )
      return NetFrameworkBase.System.Drawing.Drawing2D.Matrix.Kind_Ptr;
      
      procedure Transform
      (
         this : in out Pen.Kind;
         value : NetFrameworkBase.System.Drawing.Drawing2D.Matrix.Kind_Ptr
      );
      
      procedure ResetTransform
      (
         this : in out Pen.Kind
      );
      
      procedure MultiplyTransform
      (
         this : in out Pen.Kind;
         matrix : NetFrameworkBase.System.Drawing.Drawing2D.Matrix.Kind_Ptr
      );
      
      procedure MultiplyTransform
      (
         this : in out Pen.Kind;
         matrix : NetFrameworkBase.System.Drawing.Drawing2D.Matrix.Kind_Ptr; 
         order : NetFrameworkBase.System.Drawing.Drawing2D.MatrixOrder.Kind
      );
      
      procedure TranslateTransform
      (
         this : in out Pen.Kind;
         dx : NetFrameworkBase.Single; 
         dy : NetFrameworkBase.Single
      );
      
      procedure TranslateTransform
      (
         this : in out Pen.Kind;
         dx : NetFrameworkBase.Single; 
         dy : NetFrameworkBase.Single; 
         order : NetFrameworkBase.System.Drawing.Drawing2D.MatrixOrder.Kind
      );
      
      procedure ScaleTransform
      (
         this : in out Pen.Kind;
         sx : NetFrameworkBase.Single; 
         sy : NetFrameworkBase.Single
      );
      
      procedure ScaleTransform
      (
         this : in out Pen.Kind;
         sx : NetFrameworkBase.Single; 
         sy : NetFrameworkBase.Single; 
         order : NetFrameworkBase.System.Drawing.Drawing2D.MatrixOrder.Kind
      );
      
      procedure RotateTransform
      (
         this : in out Pen.Kind;
         angle : NetFrameworkBase.Single
      );
      
      procedure RotateTransform
      (
         this : in out Pen.Kind;
         angle : NetFrameworkBase.Single; 
         order : NetFrameworkBase.System.Drawing.Drawing2D.MatrixOrder.Kind
      );
      
      function PenType
      (
         this : in out Pen.Kind
      )
      return NetFrameworkBase.System.Drawing.Drawing2D.PenType.Kind;
      
      function Color
      (
         this : in out Pen.Kind
      )
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      procedure Color
      (
         this : in out Pen.Kind;
         value : NetFrameworkBase.System.Drawing.Color.Kind_Ptr
      );
      
      function Brush
      (
         this : in out Pen.Kind
      )
      return NetFrameworkBase.System.Drawing.Brush.Kind_Ptr;
      
      procedure Brush
      (
         this : in out Pen.Kind;
         value : NetFrameworkBase.System.Drawing.Brush.Kind_Ptr
      );
      
      function DashStyle
      (
         this : in out Pen.Kind
      )
      return NetFrameworkBase.System.Drawing.Drawing2D.DashStyle.Kind;
      
      procedure DashStyle
      (
         this : in out Pen.Kind;
         value : NetFrameworkBase.System.Drawing.Drawing2D.DashStyle.Kind
      );
      
      function DashOffset
      (
         this : in out Pen.Kind
      )
      return NetFrameworkBase.Single;
      
      procedure DashOffset
      (
         this : in out Pen.Kind;
         value : NetFrameworkBase.Single
      );
      
      function DashPattern
      (
         this : in out Pen.Kind
      )
      return NetFrameworkBase.Single_Array;
      
      procedure DashPattern
      (
         this : in out Pen.Kind;
         value : NetFrameworkBase.Single_Array
      );
      
      function CompoundArray
      (
         this : in out Pen.Kind
      )
      return NetFrameworkBase.Single_Array;
      
      procedure CompoundArray
      (
         this : in out Pen.Kind;
         value : NetFrameworkBase.Single_Array
      );
      
      function Constructor
      (
         color : NetFrameworkBase.System.Drawing.Color.Kind_Ptr
      )
      return NetFrameworkBase.System.Drawing.Pen.Kind_Ptr;
      
      function Constructor
      (
         color : NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
         width : NetFrameworkBase.Single
      )
      return NetFrameworkBase.System.Drawing.Pen.Kind_Ptr;
      
      function Constructor
      (
         brush : NetFrameworkBase.System.Drawing.Brush.Kind_Ptr
      )
      return NetFrameworkBase.System.Drawing.Pen.Kind_Ptr;
      
      function Constructor
      (
         brush : NetFrameworkBase.System.Drawing.Brush.Kind_Ptr;
         width : NetFrameworkBase.Single
      )
      return NetFrameworkBase.System.Drawing.Pen.Kind_Ptr;
      
end;