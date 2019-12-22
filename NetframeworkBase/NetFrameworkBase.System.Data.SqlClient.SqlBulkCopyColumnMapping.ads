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
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Data.SqlClient.SqlBulkCopyColumnMapping is
   
   type Kind is new NetFrameworkBase.System.Object.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function DestinationColumn
      (
         this : in out SqlBulkCopyColumnMapping.Kind
      )
      return NetFrameworkBase.BSTR;
      
      procedure DestinationColumn
      (
         this : in out SqlBulkCopyColumnMapping.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      function DestinationOrdinal
      (
         this : in out SqlBulkCopyColumnMapping.Kind
      )
      return NetFrameworkBase.Int32;
      
      procedure DestinationOrdinal
      (
         this : in out SqlBulkCopyColumnMapping.Kind;
         value : NetFrameworkBase.Int32
      );
      
      function SourceColumn
      (
         this : in out SqlBulkCopyColumnMapping.Kind
      )
      return NetFrameworkBase.BSTR;
      
      procedure SourceColumn
      (
         this : in out SqlBulkCopyColumnMapping.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      function SourceOrdinal
      (
         this : in out SqlBulkCopyColumnMapping.Kind
      )
      return NetFrameworkBase.Int32;
      
      procedure SourceOrdinal
      (
         this : in out SqlBulkCopyColumnMapping.Kind;
         value : NetFrameworkBase.Int32
      );
      
      function Constructor return NetFrameworkBase.System.Data.SqlClient.SqlBulkCopyColumnMapping.Kind_Ptr;
      
      function Constructor
      (
         sourceColumn : NetFrameworkBase.BSTR;
         destinationColumn : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Data.SqlClient.SqlBulkCopyColumnMapping.Kind_Ptr;
      
      function Constructor
      (
         sourceColumnOrdinal : NetFrameworkBase.Int32;
         destinationColumn : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Data.SqlClient.SqlBulkCopyColumnMapping.Kind_Ptr;
      
      function Constructor
      (
         sourceColumn : NetFrameworkBase.BSTR;
         destinationOrdinal : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.Data.SqlClient.SqlBulkCopyColumnMapping.Kind_Ptr;
      
      function Constructor
      (
         sourceColumnOrdinal : NetFrameworkBase.Int32;
         destinationOrdinal : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.Data.SqlClient.SqlBulkCopyColumnMapping.Kind_Ptr;
      
end;
