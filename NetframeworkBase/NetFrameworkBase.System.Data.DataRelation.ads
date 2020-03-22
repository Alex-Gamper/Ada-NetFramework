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
limited with NetFrameworkBase.System.Data.DataColumn;
limited with NetFrameworkBase.System.Data.DataTable;
limited with NetFrameworkBase.System.Data.DataSet;
limited with NetFrameworkBase.System.Data.UniqueConstraint;
limited with NetFrameworkBase.System.Data.ForeignKeyConstraint;
limited with NetFrameworkBase.System.Data.PropertyCollection;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Data.DataRelation is
   
   type Kind is new NetFrameworkBase.System.Object.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function ChildColumns
      (
         this : in out DataRelation.Kind
      )
      return NetFrameworkBase.System.Data.DataColumn.Kind_Array;
      
      function ChildTable
      (
         this : in out DataRelation.Kind
      )
      return NetFrameworkBase.System.Data.DataTable.Kind_Ptr;
      
      function DataSet
      (
         this : in out DataRelation.Kind
      )
      return NetFrameworkBase.System.Data.DataSet.Kind_Ptr;
      
      function ParentColumns
      (
         this : in out DataRelation.Kind
      )
      return NetFrameworkBase.System.Data.DataColumn.Kind_Array;
      
      function ParentTable
      (
         this : in out DataRelation.Kind
      )
      return NetFrameworkBase.System.Data.DataTable.Kind_Ptr;
      
      function RelationName
      (
         this : in out DataRelation.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function Nested
      (
         this : in out DataRelation.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function ParentKeyConstraint
      (
         this : in out DataRelation.Kind
      )
      return NetFrameworkBase.System.Data.UniqueConstraint.Kind_Ptr;
      
      function ChildKeyConstraint
      (
         this : in out DataRelation.Kind
      )
      return NetFrameworkBase.System.Data.ForeignKeyConstraint.Kind_Ptr;
      
      function ExtendedProperties
      (
         this : in out DataRelation.Kind
      )
      return NetFrameworkBase.System.Data.PropertyCollection.Kind_Ptr;
      
      function ToString
      (
         this : in out DataRelation.Kind
      )
      return NetFrameworkBase.BSTR;
      
      procedure RelationName
      (
         this : in out DataRelation.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      procedure Nested
      (
         this : in out DataRelation.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      function Constructor
      (
         relationName : NetFrameworkBase.BSTR;
         parentColumn : NetFrameworkBase.System.Data.DataColumn.Kind_Ptr;
         childColumn : NetFrameworkBase.System.Data.DataColumn.Kind_Ptr
      )
      return NetFrameworkBase.System.Data.DataRelation.Kind_Ptr;
      
      function Constructor
      (
         relationName : NetFrameworkBase.BSTR;
         parentColumn : NetFrameworkBase.System.Data.DataColumn.Kind_Ptr;
         childColumn : NetFrameworkBase.System.Data.DataColumn.Kind_Ptr;
         createConstraints : NetFrameworkBase.Boolean
      )
      return NetFrameworkBase.System.Data.DataRelation.Kind_Ptr;
      
      function Constructor
      (
         relationName : NetFrameworkBase.BSTR;
         parentColumns : NetFrameworkBase.System.Data.DataColumn.Kind_Array;
         childColumns : NetFrameworkBase.System.Data.DataColumn.Kind_Array
      )
      return NetFrameworkBase.System.Data.DataRelation.Kind_Ptr;
      
      function Constructor
      (
         relationName : NetFrameworkBase.BSTR;
         parentColumns : NetFrameworkBase.System.Data.DataColumn.Kind_Array;
         childColumns : NetFrameworkBase.System.Data.DataColumn.Kind_Array;
         createConstraints : NetFrameworkBase.Boolean
      )
      return NetFrameworkBase.System.Data.DataRelation.Kind_Ptr;
      
      function Constructor
      (
         relationName : NetFrameworkBase.BSTR;
         parentTableName : NetFrameworkBase.BSTR;
         childTableName : NetFrameworkBase.BSTR;
         parentColumnNames : NetFrameworkBase.BSTR_Array;
         childColumnNames : NetFrameworkBase.BSTR_Array;
         nested : NetFrameworkBase.Boolean
      )
      return NetFrameworkBase.System.Data.DataRelation.Kind_Ptr;
      
      function Constructor
      (
         relationName : NetFrameworkBase.BSTR;
         parentTableName : NetFrameworkBase.BSTR;
         parentTableNamespace : NetFrameworkBase.BSTR;
         childTableName : NetFrameworkBase.BSTR;
         childTableNamespace : NetFrameworkBase.BSTR;
         parentColumnNames : NetFrameworkBase.BSTR_Array;
         childColumnNames : NetFrameworkBase.BSTR_Array;
         nested : NetFrameworkBase.Boolean
      )
      return NetFrameworkBase.System.Data.DataRelation.Kind_Ptr;
      
end;