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
limited with NetFrameworkBase.System.Data.SqlTypes.SqlBoolean;
limited with NetFrameworkBase.System.Data.SqlTypes.SqlByte;
limited with NetFrameworkBase.System.Data.SqlTypes.SqlInt16;
limited with NetFrameworkBase.System.Data.SqlTypes.SqlInt32;
limited with NetFrameworkBase.System.Data.SqlTypes.SqlInt64;
limited with NetFrameworkBase.System.Data.SqlTypes.SqlMoney;
limited with NetFrameworkBase.System.Data.SqlTypes.SqlDecimal;
limited with NetFrameworkBase.System.Data.SqlTypes.SqlDouble;
limited with NetFrameworkBase.System.Data.SqlTypes.SqlString;
with NetFrameworkBase.System.Object;
limited with NetFrameworkBase.System.Xml.Schema.XmlSchemaSet;
limited with NetFrameworkBase.System.Xml.XmlQualifiedName;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Data.SqlTypes.SqlSingle is
   
   type Kind is new NetFrameworkBase.System.ValueType.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function IsNull
      (
         this : in out SqlSingle.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function Value
      (
         this : in out SqlSingle.Kind
      )
      return NetFrameworkBase.Single;
      
      function op_Implicit
      (
         x : NetFrameworkBase.Single
      )
      return NetFrameworkBase.System.Data.SqlTypes.SqlSingle.Kind_Ptr;
      
      function op_Explicit
      (
         x : NetFrameworkBase.System.Data.SqlTypes.SqlSingle.Kind_Ptr
      )
      return NetFrameworkBase.Single;
      
      function ToString
      (
         this : in out SqlSingle.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function Parse
      (
         s : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Data.SqlTypes.SqlSingle.Kind_Ptr;
      
      function op_UnaryNegation
      (
         x : NetFrameworkBase.System.Data.SqlTypes.SqlSingle.Kind_Ptr
      )
      return NetFrameworkBase.System.Data.SqlTypes.SqlSingle.Kind_Ptr;
      function "-"(x : NetFrameworkBase.System.Data.SqlTypes.SqlSingle.Kind_Ptr) return NetFrameworkBase.System.Data.SqlTypes.SqlSingle.Kind_Ptr renames op_UnaryNegation;
      
      function op_Addition
      (
         x : NetFrameworkBase.System.Data.SqlTypes.SqlSingle.Kind_Ptr; 
         y : NetFrameworkBase.System.Data.SqlTypes.SqlSingle.Kind_Ptr
      )
      return NetFrameworkBase.System.Data.SqlTypes.SqlSingle.Kind_Ptr;
      function "+"(x : NetFrameworkBase.System.Data.SqlTypes.SqlSingle.Kind_Ptr; y : NetFrameworkBase.System.Data.SqlTypes.SqlSingle.Kind_Ptr) return NetFrameworkBase.System.Data.SqlTypes.SqlSingle.Kind_Ptr renames op_Addition;
      
      function op_Subtraction
      (
         x : NetFrameworkBase.System.Data.SqlTypes.SqlSingle.Kind_Ptr; 
         y : NetFrameworkBase.System.Data.SqlTypes.SqlSingle.Kind_Ptr
      )
      return NetFrameworkBase.System.Data.SqlTypes.SqlSingle.Kind_Ptr;
      function "-"(x : NetFrameworkBase.System.Data.SqlTypes.SqlSingle.Kind_Ptr; y : NetFrameworkBase.System.Data.SqlTypes.SqlSingle.Kind_Ptr) return NetFrameworkBase.System.Data.SqlTypes.SqlSingle.Kind_Ptr renames op_Subtraction;
      
      function op_Multiply
      (
         x : NetFrameworkBase.System.Data.SqlTypes.SqlSingle.Kind_Ptr; 
         y : NetFrameworkBase.System.Data.SqlTypes.SqlSingle.Kind_Ptr
      )
      return NetFrameworkBase.System.Data.SqlTypes.SqlSingle.Kind_Ptr;
      
      function op_Division
      (
         x : NetFrameworkBase.System.Data.SqlTypes.SqlSingle.Kind_Ptr; 
         y : NetFrameworkBase.System.Data.SqlTypes.SqlSingle.Kind_Ptr
      )
      return NetFrameworkBase.System.Data.SqlTypes.SqlSingle.Kind_Ptr;
      
      function op_Explicit
      (
         x : NetFrameworkBase.System.Data.SqlTypes.SqlBoolean.Kind_Ptr
      )
      return NetFrameworkBase.System.Data.SqlTypes.SqlSingle.Kind_Ptr;
      
      function op_Implicit
      (
         x : NetFrameworkBase.System.Data.SqlTypes.SqlByte.Kind_Ptr
      )
      return NetFrameworkBase.System.Data.SqlTypes.SqlSingle.Kind_Ptr;
      
      function op_Implicit
      (
         x : NetFrameworkBase.System.Data.SqlTypes.SqlInt16.Kind_Ptr
      )
      return NetFrameworkBase.System.Data.SqlTypes.SqlSingle.Kind_Ptr;
      
      function op_Implicit
      (
         x : NetFrameworkBase.System.Data.SqlTypes.SqlInt32.Kind_Ptr
      )
      return NetFrameworkBase.System.Data.SqlTypes.SqlSingle.Kind_Ptr;
      
      function op_Implicit
      (
         x : NetFrameworkBase.System.Data.SqlTypes.SqlInt64.Kind_Ptr
      )
      return NetFrameworkBase.System.Data.SqlTypes.SqlSingle.Kind_Ptr;
      
      function op_Implicit
      (
         x : NetFrameworkBase.System.Data.SqlTypes.SqlMoney.Kind_Ptr
      )
      return NetFrameworkBase.System.Data.SqlTypes.SqlSingle.Kind_Ptr;
      
      function op_Implicit
      (
         x : NetFrameworkBase.System.Data.SqlTypes.SqlDecimal.Kind_Ptr
      )
      return NetFrameworkBase.System.Data.SqlTypes.SqlSingle.Kind_Ptr;
      
      function op_Explicit
      (
         x : NetFrameworkBase.System.Data.SqlTypes.SqlDouble.Kind_Ptr
      )
      return NetFrameworkBase.System.Data.SqlTypes.SqlSingle.Kind_Ptr;
      
      function op_Explicit
      (
         x : NetFrameworkBase.System.Data.SqlTypes.SqlString.Kind_Ptr
      )
      return NetFrameworkBase.System.Data.SqlTypes.SqlSingle.Kind_Ptr;
      
      function op_Equality
      (
         x : NetFrameworkBase.System.Data.SqlTypes.SqlSingle.Kind_Ptr; 
         y : NetFrameworkBase.System.Data.SqlTypes.SqlSingle.Kind_Ptr
      )
      return NetFrameworkBase.System.Data.SqlTypes.SqlBoolean.Kind_Ptr;
      function "="(x : NetFrameworkBase.System.Data.SqlTypes.SqlSingle.Kind_Ptr; y : NetFrameworkBase.System.Data.SqlTypes.SqlSingle.Kind_Ptr) return NetFrameworkBase.System.Data.SqlTypes.SqlBoolean.Kind_Ptr renames op_Equality;
      
      function op_Inequality
      (
         x : NetFrameworkBase.System.Data.SqlTypes.SqlSingle.Kind_Ptr; 
         y : NetFrameworkBase.System.Data.SqlTypes.SqlSingle.Kind_Ptr
      )
      return NetFrameworkBase.System.Data.SqlTypes.SqlBoolean.Kind_Ptr;
      
      function op_LessThan
      (
         x : NetFrameworkBase.System.Data.SqlTypes.SqlSingle.Kind_Ptr; 
         y : NetFrameworkBase.System.Data.SqlTypes.SqlSingle.Kind_Ptr
      )
      return NetFrameworkBase.System.Data.SqlTypes.SqlBoolean.Kind_Ptr;
      function "<"(x : NetFrameworkBase.System.Data.SqlTypes.SqlSingle.Kind_Ptr; y : NetFrameworkBase.System.Data.SqlTypes.SqlSingle.Kind_Ptr) return NetFrameworkBase.System.Data.SqlTypes.SqlBoolean.Kind_Ptr renames op_LessThan;
      
      function op_GreaterThan
      (
         x : NetFrameworkBase.System.Data.SqlTypes.SqlSingle.Kind_Ptr; 
         y : NetFrameworkBase.System.Data.SqlTypes.SqlSingle.Kind_Ptr
      )
      return NetFrameworkBase.System.Data.SqlTypes.SqlBoolean.Kind_Ptr;
      function ">"(x : NetFrameworkBase.System.Data.SqlTypes.SqlSingle.Kind_Ptr; y : NetFrameworkBase.System.Data.SqlTypes.SqlSingle.Kind_Ptr) return NetFrameworkBase.System.Data.SqlTypes.SqlBoolean.Kind_Ptr renames op_GreaterThan;
      
      function op_LessThanOrEqual
      (
         x : NetFrameworkBase.System.Data.SqlTypes.SqlSingle.Kind_Ptr; 
         y : NetFrameworkBase.System.Data.SqlTypes.SqlSingle.Kind_Ptr
      )
      return NetFrameworkBase.System.Data.SqlTypes.SqlBoolean.Kind_Ptr;
      function "<="(x : NetFrameworkBase.System.Data.SqlTypes.SqlSingle.Kind_Ptr; y : NetFrameworkBase.System.Data.SqlTypes.SqlSingle.Kind_Ptr) return NetFrameworkBase.System.Data.SqlTypes.SqlBoolean.Kind_Ptr renames op_LessThanOrEqual;
      
      function op_GreaterThanOrEqual
      (
         x : NetFrameworkBase.System.Data.SqlTypes.SqlSingle.Kind_Ptr; 
         y : NetFrameworkBase.System.Data.SqlTypes.SqlSingle.Kind_Ptr
      )
      return NetFrameworkBase.System.Data.SqlTypes.SqlBoolean.Kind_Ptr;
      function ">="(x : NetFrameworkBase.System.Data.SqlTypes.SqlSingle.Kind_Ptr; y : NetFrameworkBase.System.Data.SqlTypes.SqlSingle.Kind_Ptr) return NetFrameworkBase.System.Data.SqlTypes.SqlBoolean.Kind_Ptr renames op_GreaterThanOrEqual;
      
      function Add
      (
         x : NetFrameworkBase.System.Data.SqlTypes.SqlSingle.Kind_Ptr; 
         y : NetFrameworkBase.System.Data.SqlTypes.SqlSingle.Kind_Ptr
      )
      return NetFrameworkBase.System.Data.SqlTypes.SqlSingle.Kind_Ptr;
      
      function Subtract
      (
         x : NetFrameworkBase.System.Data.SqlTypes.SqlSingle.Kind_Ptr; 
         y : NetFrameworkBase.System.Data.SqlTypes.SqlSingle.Kind_Ptr
      )
      return NetFrameworkBase.System.Data.SqlTypes.SqlSingle.Kind_Ptr;
      
      function Multiply
      (
         x : NetFrameworkBase.System.Data.SqlTypes.SqlSingle.Kind_Ptr; 
         y : NetFrameworkBase.System.Data.SqlTypes.SqlSingle.Kind_Ptr
      )
      return NetFrameworkBase.System.Data.SqlTypes.SqlSingle.Kind_Ptr;
      
      function Divide
      (
         x : NetFrameworkBase.System.Data.SqlTypes.SqlSingle.Kind_Ptr; 
         y : NetFrameworkBase.System.Data.SqlTypes.SqlSingle.Kind_Ptr
      )
      return NetFrameworkBase.System.Data.SqlTypes.SqlSingle.Kind_Ptr;
      
      function Equals
      (
         x : NetFrameworkBase.System.Data.SqlTypes.SqlSingle.Kind_Ptr; 
         y : NetFrameworkBase.System.Data.SqlTypes.SqlSingle.Kind_Ptr
      )
      return NetFrameworkBase.System.Data.SqlTypes.SqlBoolean.Kind_Ptr;
      
      function NotEquals
      (
         x : NetFrameworkBase.System.Data.SqlTypes.SqlSingle.Kind_Ptr; 
         y : NetFrameworkBase.System.Data.SqlTypes.SqlSingle.Kind_Ptr
      )
      return NetFrameworkBase.System.Data.SqlTypes.SqlBoolean.Kind_Ptr;
      
      function LessThan
      (
         x : NetFrameworkBase.System.Data.SqlTypes.SqlSingle.Kind_Ptr; 
         y : NetFrameworkBase.System.Data.SqlTypes.SqlSingle.Kind_Ptr
      )
      return NetFrameworkBase.System.Data.SqlTypes.SqlBoolean.Kind_Ptr;
      
      function GreaterThan
      (
         x : NetFrameworkBase.System.Data.SqlTypes.SqlSingle.Kind_Ptr; 
         y : NetFrameworkBase.System.Data.SqlTypes.SqlSingle.Kind_Ptr
      )
      return NetFrameworkBase.System.Data.SqlTypes.SqlBoolean.Kind_Ptr;
      
      function LessThanOrEqual
      (
         x : NetFrameworkBase.System.Data.SqlTypes.SqlSingle.Kind_Ptr; 
         y : NetFrameworkBase.System.Data.SqlTypes.SqlSingle.Kind_Ptr
      )
      return NetFrameworkBase.System.Data.SqlTypes.SqlBoolean.Kind_Ptr;
      
      function GreaterThanOrEqual
      (
         x : NetFrameworkBase.System.Data.SqlTypes.SqlSingle.Kind_Ptr; 
         y : NetFrameworkBase.System.Data.SqlTypes.SqlSingle.Kind_Ptr
      )
      return NetFrameworkBase.System.Data.SqlTypes.SqlBoolean.Kind_Ptr;
      
      function ToSqlBoolean
      (
         this : in out SqlSingle.Kind
      )
      return NetFrameworkBase.System.Data.SqlTypes.SqlBoolean.Kind_Ptr;
      
      function ToSqlByte
      (
         this : in out SqlSingle.Kind
      )
      return NetFrameworkBase.System.Data.SqlTypes.SqlByte.Kind_Ptr;
      
      function ToSqlDouble
      (
         this : in out SqlSingle.Kind
      )
      return NetFrameworkBase.System.Data.SqlTypes.SqlDouble.Kind_Ptr;
      
      function ToSqlInt16
      (
         this : in out SqlSingle.Kind
      )
      return NetFrameworkBase.System.Data.SqlTypes.SqlInt16.Kind_Ptr;
      
      function ToSqlInt32
      (
         this : in out SqlSingle.Kind
      )
      return NetFrameworkBase.System.Data.SqlTypes.SqlInt32.Kind_Ptr;
      
      function ToSqlInt64
      (
         this : in out SqlSingle.Kind
      )
      return NetFrameworkBase.System.Data.SqlTypes.SqlInt64.Kind_Ptr;
      
      function ToSqlMoney
      (
         this : in out SqlSingle.Kind
      )
      return NetFrameworkBase.System.Data.SqlTypes.SqlMoney.Kind_Ptr;
      
      function ToSqlDecimal
      (
         this : in out SqlSingle.Kind
      )
      return NetFrameworkBase.System.Data.SqlTypes.SqlDecimal.Kind_Ptr;
      
      function ToSqlString
      (
         this : in out SqlSingle.Kind
      )
      return NetFrameworkBase.System.Data.SqlTypes.SqlString.Kind_Ptr;
      
      function CompareTo
      (
         this : in out SqlSingle.Kind;
         value : NetFrameworkBase.System.Object.Kind_Ptr
      )
      return NetFrameworkBase.Int32;
      
      function CompareTo
      (
         this : in out SqlSingle.Kind;
         value : NetFrameworkBase.System.Data.SqlTypes.SqlSingle.Kind_Ptr
      )
      return NetFrameworkBase.Int32;
      
      function Equals
      (
         this : in out SqlSingle.Kind;
         value : NetFrameworkBase.System.Object.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      
      function GetHashCode
      (
         this : in out SqlSingle.Kind
      )
      return NetFrameworkBase.Int32;
      
      function GetXsdType
      (
         schemaSet : NetFrameworkBase.System.Xml.Schema.XmlSchemaSet.Kind_Ptr
      )
      return NetFrameworkBase.System.Xml.XmlQualifiedName.Kind_Ptr;
      
      function Constructor
      (
         value : NetFrameworkBase.Single
      )
      return NetFrameworkBase.System.Data.SqlTypes.SqlSingle.Kind_Ptr;
      
      function Constructor
      (
         value : NetFrameworkBase.Double
      )
      return NetFrameworkBase.System.Data.SqlTypes.SqlSingle.Kind_Ptr;
      
end;
