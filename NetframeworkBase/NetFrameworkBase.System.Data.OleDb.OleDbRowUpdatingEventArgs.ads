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
with NetFrameworkBase.System.Data.Common.RowUpdatingEventArgs;
limited with NetFrameworkBase.System.Data.OleDb.OleDbCommand;
limited with NetFrameworkBase.System.Data.DataRow;
limited with NetFrameworkBase.System.Data.IDbCommand;
limited with NetFrameworkBase.System.Data.StatementType;
limited with NetFrameworkBase.System.Data.Common.DataTableMapping;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Data.OleDb.OleDbRowUpdatingEventArgs is
   
   type Kind is new NetFrameworkBase.System.Data.Common.RowUpdatingEventArgs.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function Command
      (
         this : in out OleDbRowUpdatingEventArgs.Kind
      )
      return NetFrameworkBase.System.Data.OleDb.OleDbCommand.Kind_Ptr;
      
      procedure Command
      (
         this : in out OleDbRowUpdatingEventArgs.Kind;
         value : NetFrameworkBase.System.Data.OleDb.OleDbCommand.Kind_Ptr
      );
      
      function Constructor
      (
         dataRow : NetFrameworkBase.System.Data.DataRow.Kind_Ptr;
         command : NetFrameworkBase.System.Data.IDbCommand.Kind_Ptr;
         statementType : NetFrameworkBase.System.Data.StatementType.Kind;
         tableMapping : NetFrameworkBase.System.Data.Common.DataTableMapping.Kind_Ptr
      )
      return NetFrameworkBase.System.Data.OleDb.OleDbRowUpdatingEventArgs.Kind_Ptr;
      
end;
