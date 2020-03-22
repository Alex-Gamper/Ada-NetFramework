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
with NetFrameworkBase.System.Object;
limited with NetFrameworkBase.System.Array_x;
limited with NetFrameworkBase.System.Data.MissingMappingAction;
limited with NetFrameworkBase.System.Data.Common.DataTableMapping;
limited with NetFrameworkBase.System.Collections.IEnumerator;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Data.Common.DataTableMappingCollection is
   
   type Kind is new NetFrameworkBase.System.MarshalByRefObject.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function Count
      (
         this : in out DataTableMappingCollection.Kind
      )
      return NetFrameworkBase.Int32;
      
      function Add
      (
         this : in out DataTableMappingCollection.Kind;
         value : NetFrameworkBase.System.Object.Kind_Ptr
      )
      return NetFrameworkBase.Int32;
      
      procedure Clear
      (
         this : in out DataTableMappingCollection.Kind
      );
      
      function Contains
      (
         this : in out DataTableMappingCollection.Kind;
         value : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.Boolean;
      
      function Contains
      (
         this : in out DataTableMappingCollection.Kind;
         value : NetFrameworkBase.System.Object.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      
      procedure CopyTo
      (
         this : in out DataTableMappingCollection.Kind;
         array_x : NetFrameworkBase.System.Array_x.Kind_Ptr; 
         index : NetFrameworkBase.Int32
      );
      
      function GetEnumerator
      (
         this : in out DataTableMappingCollection.Kind
      )
      return NetFrameworkBase.System.Collections.IEnumerator.Kind_Ptr;
      
      function IndexOf
      (
         this : in out DataTableMappingCollection.Kind;
         value : NetFrameworkBase.System.Object.Kind_Ptr
      )
      return NetFrameworkBase.Int32;
      
      function IndexOf
      (
         this : in out DataTableMappingCollection.Kind;
         sourceTable : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.Int32;
      
      procedure Insert
      (
         this : in out DataTableMappingCollection.Kind;
         index : NetFrameworkBase.Int32; 
         value : NetFrameworkBase.System.Object.Kind_Ptr
      );
      
      procedure RemoveAt
      (
         this : in out DataTableMappingCollection.Kind;
         index : NetFrameworkBase.Int32
      );
      
      procedure RemoveAt
      (
         this : in out DataTableMappingCollection.Kind;
         sourceTable : NetFrameworkBase.BSTR
      );
      
      procedure Remove
      (
         this : in out DataTableMappingCollection.Kind;
         value : NetFrameworkBase.System.Object.Kind_Ptr
      );
      
      function GetTableMappingBySchemaAction
      (
         tableMappings : NetFrameworkBase.System.Data.Common.DataTableMappingCollection.Kind_Ptr; 
         sourceTable : NetFrameworkBase.BSTR; 
         dataSetTable : NetFrameworkBase.BSTR; 
         mappingAction : NetFrameworkBase.System.Data.MissingMappingAction.Kind
      )
      return NetFrameworkBase.System.Data.Common.DataTableMapping.Kind_Ptr;
      
      function Item
      (
         this : in out DataTableMappingCollection.Kind;
         index : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.Data.Common.DataTableMapping.Kind_Ptr;
      
      procedure Item
      (
         this : in out DataTableMappingCollection.Kind;
         index : NetFrameworkBase.Int32; 
         value : NetFrameworkBase.System.Data.Common.DataTableMapping.Kind_Ptr
      );
      
      function Item
      (
         this : in out DataTableMappingCollection.Kind;
         sourceTable : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Data.Common.DataTableMapping.Kind_Ptr;
      
      procedure Item
      (
         this : in out DataTableMappingCollection.Kind;
         sourceTable : NetFrameworkBase.BSTR; 
         value : NetFrameworkBase.System.Data.Common.DataTableMapping.Kind_Ptr
      );
      
      procedure AddRange
      (
         this : in out DataTableMappingCollection.Kind;
         values : NetFrameworkBase.System.Data.Common.DataTableMapping.Kind_Array
      );
      
      procedure AddRange
      (
         this : in out DataTableMappingCollection.Kind;
         values : NetFrameworkBase.System.Array_x.Kind_Ptr
      );
      
      function Add
      (
         this : in out DataTableMappingCollection.Kind;
         sourceTable : NetFrameworkBase.BSTR; 
         dataSetTable : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Data.Common.DataTableMapping.Kind_Ptr;
      
      procedure CopyTo
      (
         this : in out DataTableMappingCollection.Kind;
         array_x : NetFrameworkBase.System.Data.Common.DataTableMapping.Kind_Array; 
         index : NetFrameworkBase.Int32
      );
      
      function GetByDataSetTable
      (
         this : in out DataTableMappingCollection.Kind;
         dataSetTable : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Data.Common.DataTableMapping.Kind_Ptr;
      
      function IndexOfDataSetTable
      (
         this : in out DataTableMappingCollection.Kind;
         dataSetTable : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.Int32;
      
      procedure Insert
      (
         this : in out DataTableMappingCollection.Kind;
         index : NetFrameworkBase.Int32; 
         value : NetFrameworkBase.System.Data.Common.DataTableMapping.Kind_Ptr
      );
      
      procedure Remove
      (
         this : in out DataTableMappingCollection.Kind;
         value : NetFrameworkBase.System.Data.Common.DataTableMapping.Kind_Ptr
      );
      
      function Constructor return NetFrameworkBase.System.Data.Common.DataTableMappingCollection.Kind_Ptr;
      
end;