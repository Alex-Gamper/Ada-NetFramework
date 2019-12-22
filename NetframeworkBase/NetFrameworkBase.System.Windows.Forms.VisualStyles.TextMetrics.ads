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
limited with NetFrameworkBase.System.Windows.Forms.VisualStyles.TextMetricsPitchAndFamilyValues;
limited with NetFrameworkBase.System.Windows.Forms.VisualStyles.TextMetricsCharacterSet;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Windows.Forms.VisualStyles.TextMetrics is
   
   type Kind is new NetFrameworkBase.System.ValueType.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function Height
      (
         this : in out TextMetrics.Kind
      )
      return NetFrameworkBase.Int32;
      
      procedure Height
      (
         this : in out TextMetrics.Kind;
         value : NetFrameworkBase.Int32
      );
      
      function Ascent
      (
         this : in out TextMetrics.Kind
      )
      return NetFrameworkBase.Int32;
      
      procedure Ascent
      (
         this : in out TextMetrics.Kind;
         value : NetFrameworkBase.Int32
      );
      
      function Descent
      (
         this : in out TextMetrics.Kind
      )
      return NetFrameworkBase.Int32;
      
      procedure Descent
      (
         this : in out TextMetrics.Kind;
         value : NetFrameworkBase.Int32
      );
      
      function InternalLeading
      (
         this : in out TextMetrics.Kind
      )
      return NetFrameworkBase.Int32;
      
      procedure InternalLeading
      (
         this : in out TextMetrics.Kind;
         value : NetFrameworkBase.Int32
      );
      
      function ExternalLeading
      (
         this : in out TextMetrics.Kind
      )
      return NetFrameworkBase.Int32;
      
      procedure ExternalLeading
      (
         this : in out TextMetrics.Kind;
         value : NetFrameworkBase.Int32
      );
      
      function AverageCharWidth
      (
         this : in out TextMetrics.Kind
      )
      return NetFrameworkBase.Int32;
      
      procedure AverageCharWidth
      (
         this : in out TextMetrics.Kind;
         value : NetFrameworkBase.Int32
      );
      
      function MaxCharWidth
      (
         this : in out TextMetrics.Kind
      )
      return NetFrameworkBase.Int32;
      
      procedure MaxCharWidth
      (
         this : in out TextMetrics.Kind;
         value : NetFrameworkBase.Int32
      );
      
      function Weight
      (
         this : in out TextMetrics.Kind
      )
      return NetFrameworkBase.Int32;
      
      procedure Weight
      (
         this : in out TextMetrics.Kind;
         value : NetFrameworkBase.Int32
      );
      
      function Overhang
      (
         this : in out TextMetrics.Kind
      )
      return NetFrameworkBase.Int32;
      
      procedure Overhang
      (
         this : in out TextMetrics.Kind;
         value : NetFrameworkBase.Int32
      );
      
      function DigitizedAspectX
      (
         this : in out TextMetrics.Kind
      )
      return NetFrameworkBase.Int32;
      
      procedure DigitizedAspectX
      (
         this : in out TextMetrics.Kind;
         value : NetFrameworkBase.Int32
      );
      
      function DigitizedAspectY
      (
         this : in out TextMetrics.Kind
      )
      return NetFrameworkBase.Int32;
      
      procedure DigitizedAspectY
      (
         this : in out TextMetrics.Kind;
         value : NetFrameworkBase.Int32
      );
      
      function FirstChar
      (
         this : in out TextMetrics.Kind
      )
      return NetFrameworkBase.Wide_Char;
      
      procedure FirstChar
      (
         this : in out TextMetrics.Kind;
         value : NetFrameworkBase.Wide_Char
      );
      
      function LastChar
      (
         this : in out TextMetrics.Kind
      )
      return NetFrameworkBase.Wide_Char;
      
      procedure LastChar
      (
         this : in out TextMetrics.Kind;
         value : NetFrameworkBase.Wide_Char
      );
      
      function DefaultChar
      (
         this : in out TextMetrics.Kind
      )
      return NetFrameworkBase.Wide_Char;
      
      procedure DefaultChar
      (
         this : in out TextMetrics.Kind;
         value : NetFrameworkBase.Wide_Char
      );
      
      function BreakChar
      (
         this : in out TextMetrics.Kind
      )
      return NetFrameworkBase.Wide_Char;
      
      procedure BreakChar
      (
         this : in out TextMetrics.Kind;
         value : NetFrameworkBase.Wide_Char
      );
      
      function Italic
      (
         this : in out TextMetrics.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure Italic
      (
         this : in out TextMetrics.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      function Underlined
      (
         this : in out TextMetrics.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure Underlined
      (
         this : in out TextMetrics.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      function StruckOut
      (
         this : in out TextMetrics.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure StruckOut
      (
         this : in out TextMetrics.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      function PitchAndFamily
      (
         this : in out TextMetrics.Kind
      )
      return NetFrameworkBase.System.Windows.Forms.VisualStyles.TextMetricsPitchAndFamilyValues.Kind;
      
      procedure PitchAndFamily
      (
         this : in out TextMetrics.Kind;
         value : NetFrameworkBase.System.Windows.Forms.VisualStyles.TextMetricsPitchAndFamilyValues.Kind
      );
      
      function CharSet
      (
         this : in out TextMetrics.Kind
      )
      return NetFrameworkBase.System.Windows.Forms.VisualStyles.TextMetricsCharacterSet.Kind;
      
      procedure CharSet
      (
         this : in out TextMetrics.Kind;
         value : NetFrameworkBase.System.Windows.Forms.VisualStyles.TextMetricsCharacterSet.Kind
      );
      
end;
