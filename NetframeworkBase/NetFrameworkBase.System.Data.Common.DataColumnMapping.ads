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
limited with NetFrameworkBase.System.Data.DataTable;
limited with NetFrameworkBase.System.Type_x;
limited with NetFrameworkBase.System.Data.MissingSchemaAction;
limited with NetFrameworkBase.System.Data.DataColumn;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Data.Common.DataColumnMapping is
   
   type Kind is new NetFrameworkBase.System.MarshalByRefObject.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function DataSetColumn
      (
         this : in out DataColumnMapping.Kind
      )
      return NetFrameworkBase.BSTR;
      
      procedure DataSetColumn
      (
         this : in out DataColumnMapping.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      function SourceColumn
      (
         this : in out DataColumnMapping.Kind
      )
      return NetFrameworkBase.BSTR;
      
      procedure SourceColumn
      (
         this : in out DataColumnMapping.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      function ToString
      (
         this : in out DataColumnMapping.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function GetDataColumnBySchemaAction
      (
         this : in out DataColumnMapping.Kind;
         dataTable : NetFrameworkBase.System.Data.DataTable.Kind_Ptr; 
         dataType : NetFrameworkBase.System.Type_x.Kind_Ptr; 
         schemaAction : NetFrameworkBase.System.Data.MissingSchemaAction.Kind
      )
      return NetFrameworkBase.System.Data.DataColumn.Kind_Ptr;
      
      function GetDataColumnBySchemaAction
      (
         sourceColumn : NetFrameworkBase.BSTR; 
         dataSetColumn : NetFrameworkBase.BSTR; 
         dataTable : NetFrameworkBase.System.Data.DataTable.Kind_Ptr; 
         dataType : NetFrameworkBase.System.Type_x.Kind_Ptr; 
         schemaAction : NetFrameworkBase.System.Data.MissingSchemaAction.Kind
      )
      return NetFrameworkBase.System.Data.DataColumn.Kind_Ptr;
      
      function Constructor return NetFrameworkBase.System.Data.Common.DataColumnMapping.Kind_Ptr;
      
      function Constructor
      (
         sourceColumn : NetFrameworkBase.BSTR;
         dataSetColumn : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Data.Common.DataColumnMapping.Kind_Ptr;
      
end;