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
with NetFrameworkBase.System.Data.Common.DbDataReader;
with NetFrameworkBase.System.Object;
limited with NetFrameworkBase.System.Threading.CancellationToken;
limited with NetFrameworkBase.System.Collections.IEnumerator;
limited with NetFrameworkBase.System.Type_x;
limited with NetFrameworkBase.System.Data.DataTable;
limited with NetFrameworkBase.System.Xml.XmlReader;
limited with NetFrameworkBase.System.IO.Stream;
limited with NetFrameworkBase.System.IO.TextReader;
limited with NetFrameworkBase.System.Decimal;
limited with NetFrameworkBase.System.Guid;
limited with NetFrameworkBase.System.Data.SqlTypes.SqlBoolean;
limited with NetFrameworkBase.System.Data.SqlTypes.SqlBinary;
limited with NetFrameworkBase.System.Data.SqlTypes.SqlByte;
limited with NetFrameworkBase.System.Data.SqlTypes.SqlBytes;
limited with NetFrameworkBase.System.Data.SqlTypes.SqlChars;
limited with NetFrameworkBase.System.Data.SqlTypes.SqlDateTime;
limited with NetFrameworkBase.System.Data.SqlTypes.SqlDecimal;
limited with NetFrameworkBase.System.Data.SqlTypes.SqlGuid;
limited with NetFrameworkBase.System.Data.SqlTypes.SqlDouble;
limited with NetFrameworkBase.System.Data.SqlTypes.SqlInt16;
limited with NetFrameworkBase.System.Data.SqlTypes.SqlInt32;
limited with NetFrameworkBase.System.Data.SqlTypes.SqlInt64;
limited with NetFrameworkBase.System.Data.SqlTypes.SqlMoney;
limited with NetFrameworkBase.System.Data.SqlTypes.SqlSingle;
limited with NetFrameworkBase.System.Data.SqlTypes.SqlString;
limited with NetFrameworkBase.System.Data.SqlTypes.SqlXml;
limited with NetFrameworkBase.System.TimeSpan;
limited with NetFrameworkBase.System.DateTimeOffset;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Data.SqlClient.SqlDataReader is
   
   type Kind is new NetFrameworkBase.System.Data.Common.DbDataReader.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function Depth
      (
         this : in out SqlDataReader.Kind
      )
      return NetFrameworkBase.Int32;
      
      function IsClosed
      (
         this : in out SqlDataReader.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function RecordsAffected
      (
         this : in out SqlDataReader.Kind
      )
      return NetFrameworkBase.Int32;
      
      function VisibleFieldCount
      (
         this : in out SqlDataReader.Kind
      )
      return NetFrameworkBase.Int32;
      
      function Item
      (
         this : in out SqlDataReader.Kind;
         i : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.Object.Kind_Ptr;
      
      function Item
      (
         this : in out SqlDataReader.Kind;
         name : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Object.Kind_Ptr;
      
      function GetDataTypeName
      (
         this : in out SqlDataReader.Kind;
         i : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.BSTR;
      
      function GetEnumerator
      (
         this : in out SqlDataReader.Kind
      )
      return NetFrameworkBase.System.Collections.IEnumerator.Kind_Ptr;
      
      function GetFieldType
      (
         this : in out SqlDataReader.Kind;
         i : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.Type_x.Kind_Ptr;
      
      function GetName
      (
         this : in out SqlDataReader.Kind;
         i : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.BSTR;
      
      function GetProviderSpecificFieldType
      (
         this : in out SqlDataReader.Kind;
         i : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.Type_x.Kind_Ptr;
      
      function GetOrdinal
      (
         this : in out SqlDataReader.Kind;
         name : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.Int32;
      
      function GetProviderSpecificValue
      (
         this : in out SqlDataReader.Kind;
         i : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.Object.Kind_Ptr;
      
      function GetProviderSpecificValues
      (
         this : in out SqlDataReader.Kind;
         values : NetFrameworkBase.System.Object.Kind_Array
      )
      return NetFrameworkBase.Int32;
      
      function GetSqlValue
      (
         this : in out SqlDataReader.Kind;
         i : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.Object.Kind_Ptr;
      
      function GetValue
      (
         this : in out SqlDataReader.Kind;
         i : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.Object.Kind_Ptr;
      
      function FieldCount
      (
         this : in out SqlDataReader.Kind
      )
      return NetFrameworkBase.Int32;
      
      function HasRows
      (
         this : in out SqlDataReader.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure Close
      (
         this : in out SqlDataReader.Kind
      );
      
      function GetSchemaTable
      (
         this : in out SqlDataReader.Kind
      )
      return NetFrameworkBase.System.Data.DataTable.Kind_Ptr;
      
      function GetBoolean
      (
         this : in out SqlDataReader.Kind;
         i : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.Boolean;
      
      function GetXmlReader
      (
         this : in out SqlDataReader.Kind;
         i : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.Xml.XmlReader.Kind_Ptr;
      
      function GetStream
      (
         this : in out SqlDataReader.Kind;
         i : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.IO.Stream.Kind_Ptr;
      
      function GetByte
      (
         this : in out SqlDataReader.Kind;
         i : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.Byte;
      
      function GetBytes
      (
         this : in out SqlDataReader.Kind;
         i : NetFrameworkBase.Int32; 
         dataIndex : NetFrameworkBase.Int64; 
         buffer : NetFrameworkBase.Byte_Array; 
         bufferIndex : NetFrameworkBase.Int32; 
         length : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.Int64;
      
      function GetTextReader
      (
         this : in out SqlDataReader.Kind;
         i : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.IO.TextReader.Kind_Ptr;
      
      function GetChar
      (
         this : in out SqlDataReader.Kind;
         i : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.Wide_Char;
      
      function GetChars
      (
         this : in out SqlDataReader.Kind;
         i : NetFrameworkBase.Int32; 
         dataIndex : NetFrameworkBase.Int64; 
         buffer : NetFrameworkBase.Wide_Char_Array; 
         bufferIndex : NetFrameworkBase.Int32; 
         length : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.Int64;
      
      function GetDateTime
      (
         this : in out SqlDataReader.Kind;
         i : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.Date;
      
      function GetDecimal
      (
         this : in out SqlDataReader.Kind;
         i : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.Decimal.Kind_Ptr;
      
      function GetDouble
      (
         this : in out SqlDataReader.Kind;
         i : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.Double;
      
      function GetFloat
      (
         this : in out SqlDataReader.Kind;
         i : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.Single;
      
      function GetGuid
      (
         this : in out SqlDataReader.Kind;
         i : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.Guid.Kind_Ptr;
      
      function GetInt16
      (
         this : in out SqlDataReader.Kind;
         i : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.Int16;
      
      function GetInt32
      (
         this : in out SqlDataReader.Kind;
         i : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.Int32;
      
      function GetInt64
      (
         this : in out SqlDataReader.Kind;
         i : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.Int64;
      
      function GetSqlBoolean
      (
         this : in out SqlDataReader.Kind;
         i : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.Data.SqlTypes.SqlBoolean.Kind_Ptr;
      
      function GetSqlBinary
      (
         this : in out SqlDataReader.Kind;
         i : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.Data.SqlTypes.SqlBinary.Kind_Ptr;
      
      function GetSqlByte
      (
         this : in out SqlDataReader.Kind;
         i : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.Data.SqlTypes.SqlByte.Kind_Ptr;
      
      function GetSqlBytes
      (
         this : in out SqlDataReader.Kind;
         i : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.Data.SqlTypes.SqlBytes.Kind_Ptr;
      
      function GetSqlChars
      (
         this : in out SqlDataReader.Kind;
         i : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.Data.SqlTypes.SqlChars.Kind_Ptr;
      
      function GetSqlDateTime
      (
         this : in out SqlDataReader.Kind;
         i : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.Data.SqlTypes.SqlDateTime.Kind_Ptr;
      
      function GetSqlDecimal
      (
         this : in out SqlDataReader.Kind;
         i : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.Data.SqlTypes.SqlDecimal.Kind_Ptr;
      
      function GetSqlGuid
      (
         this : in out SqlDataReader.Kind;
         i : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.Data.SqlTypes.SqlGuid.Kind_Ptr;
      
      function GetSqlDouble
      (
         this : in out SqlDataReader.Kind;
         i : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.Data.SqlTypes.SqlDouble.Kind_Ptr;
      
      function GetSqlInt16
      (
         this : in out SqlDataReader.Kind;
         i : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.Data.SqlTypes.SqlInt16.Kind_Ptr;
      
      function GetSqlInt32
      (
         this : in out SqlDataReader.Kind;
         i : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.Data.SqlTypes.SqlInt32.Kind_Ptr;
      
      function GetSqlInt64
      (
         this : in out SqlDataReader.Kind;
         i : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.Data.SqlTypes.SqlInt64.Kind_Ptr;
      
      function GetSqlMoney
      (
         this : in out SqlDataReader.Kind;
         i : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.Data.SqlTypes.SqlMoney.Kind_Ptr;
      
      function GetSqlSingle
      (
         this : in out SqlDataReader.Kind;
         i : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.Data.SqlTypes.SqlSingle.Kind_Ptr;
      
      function GetSqlString
      (
         this : in out SqlDataReader.Kind;
         i : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.Data.SqlTypes.SqlString.Kind_Ptr;
      
      function GetSqlXml
      (
         this : in out SqlDataReader.Kind;
         i : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.Data.SqlTypes.SqlXml.Kind_Ptr;
      
      function GetSqlValues
      (
         this : in out SqlDataReader.Kind;
         values : NetFrameworkBase.System.Object.Kind_Array
      )
      return NetFrameworkBase.Int32;
      
      function GetString
      (
         this : in out SqlDataReader.Kind;
         i : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.BSTR;
      
      function GetTimeSpan
      (
         this : in out SqlDataReader.Kind;
         i : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.TimeSpan.Kind_Ptr;
      
      function GetDateTimeOffset
      (
         this : in out SqlDataReader.Kind;
         i : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.DateTimeOffset.Kind_Ptr;
      
      function GetValues
      (
         this : in out SqlDataReader.Kind;
         values : NetFrameworkBase.System.Object.Kind_Array
      )
      return NetFrameworkBase.Int32;
      
      function IsDBNull
      (
         this : in out SqlDataReader.Kind;
         i : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.Boolean;
      
      function NextResult
      (
         this : in out SqlDataReader.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function Read
      (
         this : in out SqlDataReader.Kind
      )
      return NetFrameworkBase.Boolean;
      
end;