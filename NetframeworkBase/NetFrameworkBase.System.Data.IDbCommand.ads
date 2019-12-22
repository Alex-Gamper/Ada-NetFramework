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
limited with NetFrameworkBase.System.Data.IDbConnection;
limited with NetFrameworkBase.System.Data.IDbTransaction;
limited with NetFrameworkBase.System.Data.CommandType;
limited with NetFrameworkBase.System.Data.UpdateRowSource;
limited with NetFrameworkBase.System.Data.CommandBehavior;
limited with NetFrameworkBase.System.Data.IDataParameterCollection;
limited with NetFrameworkBase.System.Data.IDbDataParameter;
limited with NetFrameworkBase.System.Data.IDataReader;
limited with NetFrameworkBase.System.Object;
with NetFrameworkWin32;
with NetFrameworkAdaRuntime;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Data.IDbCommand is
   
   type Kind is interface and NetFrameworkWin32.IUnknown;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array (Natural range <>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function get_Connection
      (
         this : in out IDbCommand.Kind;
         RetVal : access NetFrameworkBase.System.Data.IDbConnection.Kind_Ptr
      ) return HResult is abstract;
      
      function set_Connection
      (
         this : in out IDbCommand.Kind;
         value : NetFrameworkBase.System.Data.IDbConnection.Kind_Ptr
      ) return HResult is abstract;
      
      function get_Transaction
      (
         this : in out IDbCommand.Kind;
         RetVal : access NetFrameworkBase.System.Data.IDbTransaction.Kind_Ptr
      ) return HResult is abstract;
      
      function set_Transaction
      (
         this : in out IDbCommand.Kind;
         value : NetFrameworkBase.System.Data.IDbTransaction.Kind_Ptr
      ) return HResult is abstract;
      
      function get_CommandText
      (
         this : in out IDbCommand.Kind;
         RetVal : access NetFrameworkBase.BSTR
      ) return HResult is abstract;
      
      function set_CommandText
      (
         this : in out IDbCommand.Kind;
         value : NetFrameworkBase.BSTR
      ) return HResult is abstract;
      
      function get_CommandTimeout
      (
         this : in out IDbCommand.Kind;
         RetVal : access NetFrameworkBase.Int32
      ) return HResult is abstract;
      
      function set_CommandTimeout
      (
         this : in out IDbCommand.Kind;
         value : NetFrameworkBase.Int32
      ) return HResult is abstract;
      
      function get_CommandType
      (
         this : in out IDbCommand.Kind;
         RetVal : access NetFrameworkBase.System.Data.CommandType.Kind
      ) return HResult is abstract;
      
      function set_CommandType
      (
         this : in out IDbCommand.Kind;
         value : NetFrameworkBase.System.Data.CommandType.Kind
      ) return HResult is abstract;
      
      function get_Parameters
      (
         this : in out IDbCommand.Kind;
         RetVal : access NetFrameworkBase.System.Data.IDataParameterCollection.Kind_Ptr
      ) return HResult is abstract;
      
      function Prepare
      (
         this : in out IDbCommand.Kind
      ) return HResult is abstract;
      
      function get_UpdatedRowSource
      (
         this : in out IDbCommand.Kind;
         RetVal : access NetFrameworkBase.System.Data.UpdateRowSource.Kind
      ) return HResult is abstract;
      
      function set_UpdatedRowSource
      (
         this : in out IDbCommand.Kind;
         value : NetFrameworkBase.System.Data.UpdateRowSource.Kind
      ) return HResult is abstract;
      
      function Cancel
      (
         this : in out IDbCommand.Kind
      ) return HResult is abstract;
      
      function CreateParameter
      (
         this : in out IDbCommand.Kind;
         RetVal : access NetFrameworkBase.System.Data.IDbDataParameter.Kind_Ptr
      ) return HResult is abstract;
      
      function ExecuteNonQuery
      (
         this : in out IDbCommand.Kind;
         RetVal : access NetFrameworkBase.Int32
      ) return HResult is abstract;
      
      function ExecuteReader
      (
         this : in out IDbCommand.Kind;
         RetVal : access NetFrameworkBase.System.Data.IDataReader.Kind_Ptr
      ) return HResult is abstract;
      
      function ExecuteReader
      (
         this : in out IDbCommand.Kind;
         behavior : NetFrameworkBase.System.Data.CommandBehavior.Kind;
         RetVal : access NetFrameworkBase.System.Data.IDataReader.Kind_Ptr
      ) return HResult is abstract;
      
      function ExecuteScalar
      (
         this : in out IDbCommand.Kind;
         RetVal : access NetFrameworkBase.System.Object.Kind_Ptr
      ) return HResult is abstract;
      
   private
   
      This_AssemblyFile : constant Standard.Wide_String := "C:\Windows\Microsoft.NET\Framework64\v4.0.30319\System.Data.dll";
      This_AssemblyName : constant Standard.Wide_String := "System.Data, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089";
      This_TypeName     : constant Standard.Wide_String := "System.Data.IDbCommand";
   
end;
