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
with NetFrameworkBase.System.ComponentModel.Component;
limited with NetFrameworkBase.System.Data.CommandType;
limited with NetFrameworkBase.System.Data.Common.DbConnection;
limited with NetFrameworkBase.System.Data.Common.DbTransaction;
limited with NetFrameworkBase.System.Data.UpdateRowSource;
limited with NetFrameworkBase.System.Data.CommandBehavior;
limited with NetFrameworkBase.System.Threading.CancellationToken;
limited with NetFrameworkBase.System.Data.Common.DbParameterCollection;
limited with NetFrameworkBase.System.Data.Common.DbParameter;
limited with NetFrameworkBase.System.Data.Common.DbDataReader;
with NetFrameworkBase.System.Object;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Data.Common.DbCommand is
   
   type Kind is new NetFrameworkBase.System.ComponentModel.Component.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function CommandText
      (
         this : in out DbCommand.Kind
      )
      return NetFrameworkBase.BSTR;
      
      procedure CommandText
      (
         this : in out DbCommand.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      function CommandTimeout
      (
         this : in out DbCommand.Kind
      )
      return NetFrameworkBase.Int32;
      
      procedure CommandTimeout
      (
         this : in out DbCommand.Kind;
         value : NetFrameworkBase.Int32
      );
      
      function CommandType
      (
         this : in out DbCommand.Kind
      )
      return NetFrameworkBase.System.Data.CommandType.Kind;
      
      procedure CommandType
      (
         this : in out DbCommand.Kind;
         value : NetFrameworkBase.System.Data.CommandType.Kind
      );
      
      function Connection
      (
         this : in out DbCommand.Kind
      )
      return NetFrameworkBase.System.Data.Common.DbConnection.Kind_Ptr;
      
      procedure Connection
      (
         this : in out DbCommand.Kind;
         value : NetFrameworkBase.System.Data.Common.DbConnection.Kind_Ptr
      );
      
      function DesignTimeVisible
      (
         this : in out DbCommand.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure DesignTimeVisible
      (
         this : in out DbCommand.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      function Parameters
      (
         this : in out DbCommand.Kind
      )
      return NetFrameworkBase.System.Data.Common.DbParameterCollection.Kind_Ptr;
      
      function Transaction
      (
         this : in out DbCommand.Kind
      )
      return NetFrameworkBase.System.Data.Common.DbTransaction.Kind_Ptr;
      
      procedure Transaction
      (
         this : in out DbCommand.Kind;
         value : NetFrameworkBase.System.Data.Common.DbTransaction.Kind_Ptr
      );
      
      function UpdatedRowSource
      (
         this : in out DbCommand.Kind
      )
      return NetFrameworkBase.System.Data.UpdateRowSource.Kind;
      
      procedure UpdatedRowSource
      (
         this : in out DbCommand.Kind;
         value : NetFrameworkBase.System.Data.UpdateRowSource.Kind
      );
      
      procedure Cancel
      (
         this : in out DbCommand.Kind
      );
      
      function CreateParameter
      (
         this : in out DbCommand.Kind
      )
      return NetFrameworkBase.System.Data.Common.DbParameter.Kind_Ptr;
      
      function ExecuteNonQuery
      (
         this : in out DbCommand.Kind
      )
      return NetFrameworkBase.Int32;
      
      function ExecuteReader
      (
         this : in out DbCommand.Kind
      )
      return NetFrameworkBase.System.Data.Common.DbDataReader.Kind_Ptr;
      
      function ExecuteReader
      (
         this : in out DbCommand.Kind;
         behavior : NetFrameworkBase.System.Data.CommandBehavior.Kind
      )
      return NetFrameworkBase.System.Data.Common.DbDataReader.Kind_Ptr;
      
      function ExecuteScalar
      (
         this : in out DbCommand.Kind
      )
      return NetFrameworkBase.System.Object.Kind_Ptr;
      
      procedure Prepare
      (
         this : in out DbCommand.Kind
      );
      
end;