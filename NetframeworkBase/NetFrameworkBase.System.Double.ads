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
with NetFrameworkBase.System.Object;
limited with NetFrameworkBase.System.IFormatProvider;
limited with NetFrameworkBase.System.Globalization.NumberStyles;
limited with NetFrameworkBase.System.TypeCode;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Double is
   
   type Kind is new NetFrameworkBase.System.ValueType.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function IsInfinity
      (
         d : NetFrameworkBase.Double
      )
      return NetFrameworkBase.Boolean;
      
      function IsPositiveInfinity
      (
         d : NetFrameworkBase.Double
      )
      return NetFrameworkBase.Boolean;
      
      function IsNegativeInfinity
      (
         d : NetFrameworkBase.Double
      )
      return NetFrameworkBase.Boolean;
      
      function IsNaN
      (
         d : NetFrameworkBase.Double
      )
      return NetFrameworkBase.Boolean;
      
      function CompareTo
      (
         this : in out Double.Kind;
         value : NetFrameworkBase.System.Object.Kind_Ptr
      )
      return NetFrameworkBase.Int32;
      
      function CompareTo
      (
         this : in out Double.Kind;
         value : NetFrameworkBase.Double
      )
      return NetFrameworkBase.Int32;
      
      function Equals
      (
         this : in out Double.Kind;
         obj : NetFrameworkBase.System.Object.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      
      function op_Equality
      (
         left : NetFrameworkBase.Double; 
         right : NetFrameworkBase.Double
      )
      return NetFrameworkBase.Boolean;
      function "="(left : NetFrameworkBase.Double; right : NetFrameworkBase.Double) return NetFrameworkBase.Boolean renames op_Equality;
      
      function op_Inequality
      (
         left : NetFrameworkBase.Double; 
         right : NetFrameworkBase.Double
      )
      return NetFrameworkBase.Boolean;
      
      function op_LessThan
      (
         left : NetFrameworkBase.Double; 
         right : NetFrameworkBase.Double
      )
      return NetFrameworkBase.Boolean;
      function "<"(left : NetFrameworkBase.Double; right : NetFrameworkBase.Double) return NetFrameworkBase.Boolean renames op_LessThan;
      
      function op_GreaterThan
      (
         left : NetFrameworkBase.Double; 
         right : NetFrameworkBase.Double
      )
      return NetFrameworkBase.Boolean;
      function ">"(left : NetFrameworkBase.Double; right : NetFrameworkBase.Double) return NetFrameworkBase.Boolean renames op_GreaterThan;
      
      function op_LessThanOrEqual
      (
         left : NetFrameworkBase.Double; 
         right : NetFrameworkBase.Double
      )
      return NetFrameworkBase.Boolean;
      function "<="(left : NetFrameworkBase.Double; right : NetFrameworkBase.Double) return NetFrameworkBase.Boolean renames op_LessThanOrEqual;
      
      function op_GreaterThanOrEqual
      (
         left : NetFrameworkBase.Double; 
         right : NetFrameworkBase.Double
      )
      return NetFrameworkBase.Boolean;
      function ">="(left : NetFrameworkBase.Double; right : NetFrameworkBase.Double) return NetFrameworkBase.Boolean renames op_GreaterThanOrEqual;
      
      function Equals
      (
         this : in out Double.Kind;
         obj : NetFrameworkBase.Double
      )
      return NetFrameworkBase.Boolean;
      
      function GetHashCode
      (
         this : in out Double.Kind
      )
      return NetFrameworkBase.Int32;
      
      function ToString
      (
         this : in out Double.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function ToString
      (
         this : in out Double.Kind;
         format : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.BSTR;
      
      function ToString
      (
         this : in out Double.Kind;
         provider : NetFrameworkBase.System.IFormatProvider.Kind_Ptr
      )
      return NetFrameworkBase.BSTR;
      
      function ToString
      (
         this : in out Double.Kind;
         format : NetFrameworkBase.BSTR; 
         provider : NetFrameworkBase.System.IFormatProvider.Kind_Ptr
      )
      return NetFrameworkBase.BSTR;
      
      function Parse
      (
         s : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.Double;
      
      function Parse
      (
         s : NetFrameworkBase.BSTR; 
         style : NetFrameworkBase.System.Globalization.NumberStyles.Kind
      )
      return NetFrameworkBase.Double;
      
      function Parse
      (
         s : NetFrameworkBase.BSTR; 
         provider : NetFrameworkBase.System.IFormatProvider.Kind_Ptr
      )
      return NetFrameworkBase.Double;
      
      function Parse
      (
         s : NetFrameworkBase.BSTR; 
         style : NetFrameworkBase.System.Globalization.NumberStyles.Kind; 
         provider : NetFrameworkBase.System.IFormatProvider.Kind_Ptr
      )
      return NetFrameworkBase.Double;
      
      function TryParse
      (
         s : NetFrameworkBase.BSTR; 
         result : out NetFrameworkBase.Double
      )
      return NetFrameworkBase.Boolean;
      
      function TryParse
      (
         s : NetFrameworkBase.BSTR; 
         style : NetFrameworkBase.System.Globalization.NumberStyles.Kind; 
         provider : NetFrameworkBase.System.IFormatProvider.Kind_Ptr; 
         result : out NetFrameworkBase.Double
      )
      return NetFrameworkBase.Boolean;
      
      function GetTypeCode
      (
         this : in out Double.Kind
      )
      return NetFrameworkBase.System.TypeCode.Kind;
      
end;
