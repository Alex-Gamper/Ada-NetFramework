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
limited with NetFrameworkBase.System.Decimal;
limited with NetFrameworkBase.System.TimeSpan;
limited with NetFrameworkBase.System.DateTimeOffset;
limited with NetFrameworkBase.System.Guid;
limited with NetFrameworkBase.System.Data.SqlTypes.SqlBoolean;
limited with NetFrameworkBase.System.Data.SqlTypes.SqlByte;
limited with NetFrameworkBase.System.Data.SqlTypes.SqlInt16;
limited with NetFrameworkBase.System.Data.SqlTypes.SqlInt32;
limited with NetFrameworkBase.System.Data.SqlTypes.SqlInt64;
limited with NetFrameworkBase.System.Data.SqlTypes.SqlSingle;
limited with NetFrameworkBase.System.Data.SqlTypes.SqlDouble;
limited with NetFrameworkBase.System.Data.SqlTypes.SqlMoney;
limited with NetFrameworkBase.System.Data.SqlTypes.SqlDateTime;
limited with NetFrameworkBase.System.Data.SqlTypes.SqlXml;
limited with NetFrameworkBase.System.Data.SqlTypes.SqlDecimal;
limited with NetFrameworkBase.System.Data.SqlTypes.SqlString;
limited with NetFrameworkBase.System.Data.SqlTypes.SqlBinary;
limited with NetFrameworkBase.System.Data.SqlTypes.SqlGuid;
limited with NetFrameworkBase.System.Data.SqlTypes.SqlChars;
limited with NetFrameworkBase.System.Data.SqlTypes.SqlBytes;
limited with NetFrameworkBase.Microsoft.SqlServer.Server.SqlMetaData;
limited with NetFrameworkBase.System.Type_x;
--------------------------------------------------------------------------------
package NetFrameworkBase.Microsoft.SqlServer.Server.SqlDataRecord is
   
   type Kind is new NetFrameworkBase.System.Object.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function FieldCount
      (
         this : in out SqlDataRecord.Kind
      )
      return NetFrameworkBase.Int32;
      
      function GetName
      (
         this : in out SqlDataRecord.Kind;
         ordinal : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.BSTR;
      
      function GetDataTypeName
      (
         this : in out SqlDataRecord.Kind;
         ordinal : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.BSTR;
      
      function GetFieldType
      (
         this : in out SqlDataRecord.Kind;
         ordinal : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.Type_x.Kind_Ptr;
      
      function GetValue
      (
         this : in out SqlDataRecord.Kind;
         ordinal : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.Object.Kind_Ptr;
      
      function GetValues
      (
         this : in out SqlDataRecord.Kind;
         values : NetFrameworkBase.System.Object.Kind_Array
      )
      return NetFrameworkBase.Int32;
      
      function GetOrdinal
      (
         this : in out SqlDataRecord.Kind;
         name : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.Int32;
      
      function Item
      (
         this : in out SqlDataRecord.Kind;
         ordinal : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.Object.Kind_Ptr;
      
      function Item
      (
         this : in out SqlDataRecord.Kind;
         name : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Object.Kind_Ptr;
      
      function GetBoolean
      (
         this : in out SqlDataRecord.Kind;
         ordinal : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.Boolean;
      
      function GetByte
      (
         this : in out SqlDataRecord.Kind;
         ordinal : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.Byte;
      
      function GetBytes
      (
         this : in out SqlDataRecord.Kind;
         ordinal : NetFrameworkBase.Int32; 
         fieldOffset : NetFrameworkBase.Int64; 
         buffer : NetFrameworkBase.Byte_Array; 
         bufferOffset : NetFrameworkBase.Int32; 
         length : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.Int64;
      
      function GetChar
      (
         this : in out SqlDataRecord.Kind;
         ordinal : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.Wide_Char;
      
      function GetChars
      (
         this : in out SqlDataRecord.Kind;
         ordinal : NetFrameworkBase.Int32; 
         fieldOffset : NetFrameworkBase.Int64; 
         buffer : NetFrameworkBase.Wide_Char_Array; 
         bufferOffset : NetFrameworkBase.Int32; 
         length : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.Int64;
      
      function GetGuid
      (
         this : in out SqlDataRecord.Kind;
         ordinal : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.Guid.Kind_Ptr;
      
      function GetInt16
      (
         this : in out SqlDataRecord.Kind;
         ordinal : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.Int16;
      
      function GetInt32
      (
         this : in out SqlDataRecord.Kind;
         ordinal : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.Int32;
      
      function GetInt64
      (
         this : in out SqlDataRecord.Kind;
         ordinal : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.Int64;
      
      function GetFloat
      (
         this : in out SqlDataRecord.Kind;
         ordinal : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.Single;
      
      function GetDouble
      (
         this : in out SqlDataRecord.Kind;
         ordinal : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.Double;
      
      function GetString
      (
         this : in out SqlDataRecord.Kind;
         ordinal : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.BSTR;
      
      function GetDecimal
      (
         this : in out SqlDataRecord.Kind;
         ordinal : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.Decimal.Kind_Ptr;
      
      function GetDateTime
      (
         this : in out SqlDataRecord.Kind;
         ordinal : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.Date;
      
      function GetDateTimeOffset
      (
         this : in out SqlDataRecord.Kind;
         ordinal : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.DateTimeOffset.Kind_Ptr;
      
      function GetTimeSpan
      (
         this : in out SqlDataRecord.Kind;
         ordinal : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.TimeSpan.Kind_Ptr;
      
      function IsDBNull
      (
         this : in out SqlDataRecord.Kind;
         ordinal : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.Boolean;
      
      function GetSqlMetaData
      (
         this : in out SqlDataRecord.Kind;
         ordinal : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.Microsoft.SqlServer.Server.SqlMetaData.Kind_Ptr;
      
      function GetSqlFieldType
      (
         this : in out SqlDataRecord.Kind;
         ordinal : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.Type_x.Kind_Ptr;
      
      function GetSqlValue
      (
         this : in out SqlDataRecord.Kind;
         ordinal : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.Object.Kind_Ptr;
      
      function GetSqlValues
      (
         this : in out SqlDataRecord.Kind;
         values : NetFrameworkBase.System.Object.Kind_Array
      )
      return NetFrameworkBase.Int32;
      
      function GetSqlBinary
      (
         this : in out SqlDataRecord.Kind;
         ordinal : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.Data.SqlTypes.SqlBinary.Kind_Ptr;
      
      function GetSqlBytes
      (
         this : in out SqlDataRecord.Kind;
         ordinal : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.Data.SqlTypes.SqlBytes.Kind_Ptr;
      
      function GetSqlXml
      (
         this : in out SqlDataRecord.Kind;
         ordinal : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.Data.SqlTypes.SqlXml.Kind_Ptr;
      
      function GetSqlBoolean
      (
         this : in out SqlDataRecord.Kind;
         ordinal : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.Data.SqlTypes.SqlBoolean.Kind_Ptr;
      
      function GetSqlByte
      (
         this : in out SqlDataRecord.Kind;
         ordinal : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.Data.SqlTypes.SqlByte.Kind_Ptr;
      
      function GetSqlChars
      (
         this : in out SqlDataRecord.Kind;
         ordinal : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.Data.SqlTypes.SqlChars.Kind_Ptr;
      
      function GetSqlInt16
      (
         this : in out SqlDataRecord.Kind;
         ordinal : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.Data.SqlTypes.SqlInt16.Kind_Ptr;
      
      function GetSqlInt32
      (
         this : in out SqlDataRecord.Kind;
         ordinal : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.Data.SqlTypes.SqlInt32.Kind_Ptr;
      
      function GetSqlInt64
      (
         this : in out SqlDataRecord.Kind;
         ordinal : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.Data.SqlTypes.SqlInt64.Kind_Ptr;
      
      function GetSqlSingle
      (
         this : in out SqlDataRecord.Kind;
         ordinal : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.Data.SqlTypes.SqlSingle.Kind_Ptr;
      
      function GetSqlDouble
      (
         this : in out SqlDataRecord.Kind;
         ordinal : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.Data.SqlTypes.SqlDouble.Kind_Ptr;
      
      function GetSqlMoney
      (
         this : in out SqlDataRecord.Kind;
         ordinal : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.Data.SqlTypes.SqlMoney.Kind_Ptr;
      
      function GetSqlDateTime
      (
         this : in out SqlDataRecord.Kind;
         ordinal : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.Data.SqlTypes.SqlDateTime.Kind_Ptr;
      
      function GetSqlDecimal
      (
         this : in out SqlDataRecord.Kind;
         ordinal : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.Data.SqlTypes.SqlDecimal.Kind_Ptr;
      
      function GetSqlString
      (
         this : in out SqlDataRecord.Kind;
         ordinal : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.Data.SqlTypes.SqlString.Kind_Ptr;
      
      function GetSqlGuid
      (
         this : in out SqlDataRecord.Kind;
         ordinal : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.Data.SqlTypes.SqlGuid.Kind_Ptr;
      
      function SetValues
      (
         this : in out SqlDataRecord.Kind;
         values : NetFrameworkBase.System.Object.Kind_Array
      )
      return NetFrameworkBase.Int32;
      
      procedure SetValue
      (
         this : in out SqlDataRecord.Kind;
         ordinal : NetFrameworkBase.Int32; 
         value : NetFrameworkBase.System.Object.Kind_Ptr
      );
      
      procedure SetBoolean
      (
         this : in out SqlDataRecord.Kind;
         ordinal : NetFrameworkBase.Int32; 
         value : NetFrameworkBase.Boolean
      );
      
      procedure SetByte
      (
         this : in out SqlDataRecord.Kind;
         ordinal : NetFrameworkBase.Int32; 
         value : NetFrameworkBase.Byte
      );
      
      procedure SetBytes
      (
         this : in out SqlDataRecord.Kind;
         ordinal : NetFrameworkBase.Int32; 
         fieldOffset : NetFrameworkBase.Int64; 
         buffer : NetFrameworkBase.Byte_Array; 
         bufferOffset : NetFrameworkBase.Int32; 
         length : NetFrameworkBase.Int32
      );
      
      procedure SetChar
      (
         this : in out SqlDataRecord.Kind;
         ordinal : NetFrameworkBase.Int32; 
         value : NetFrameworkBase.Wide_Char
      );
      
      procedure SetChars
      (
         this : in out SqlDataRecord.Kind;
         ordinal : NetFrameworkBase.Int32; 
         fieldOffset : NetFrameworkBase.Int64; 
         buffer : NetFrameworkBase.Wide_Char_Array; 
         bufferOffset : NetFrameworkBase.Int32; 
         length : NetFrameworkBase.Int32
      );
      
      procedure SetInt16
      (
         this : in out SqlDataRecord.Kind;
         ordinal : NetFrameworkBase.Int32; 
         value : NetFrameworkBase.Int16
      );
      
      procedure SetInt32
      (
         this : in out SqlDataRecord.Kind;
         ordinal : NetFrameworkBase.Int32; 
         value : NetFrameworkBase.Int32
      );
      
      procedure SetInt64
      (
         this : in out SqlDataRecord.Kind;
         ordinal : NetFrameworkBase.Int32; 
         value : NetFrameworkBase.Int64
      );
      
      procedure SetFloat
      (
         this : in out SqlDataRecord.Kind;
         ordinal : NetFrameworkBase.Int32; 
         value : NetFrameworkBase.Single
      );
      
      procedure SetDouble
      (
         this : in out SqlDataRecord.Kind;
         ordinal : NetFrameworkBase.Int32; 
         value : NetFrameworkBase.Double
      );
      
      procedure SetString
      (
         this : in out SqlDataRecord.Kind;
         ordinal : NetFrameworkBase.Int32; 
         value : NetFrameworkBase.BSTR
      );
      
      procedure SetDecimal
      (
         this : in out SqlDataRecord.Kind;
         ordinal : NetFrameworkBase.Int32; 
         value : NetFrameworkBase.System.Decimal.Kind_Ptr
      );
      
      procedure SetDateTime
      (
         this : in out SqlDataRecord.Kind;
         ordinal : NetFrameworkBase.Int32; 
         value : NetFrameworkBase.Date
      );
      
      procedure SetTimeSpan
      (
         this : in out SqlDataRecord.Kind;
         ordinal : NetFrameworkBase.Int32; 
         value : NetFrameworkBase.System.TimeSpan.Kind_Ptr
      );
      
      procedure SetDateTimeOffset
      (
         this : in out SqlDataRecord.Kind;
         ordinal : NetFrameworkBase.Int32; 
         value : NetFrameworkBase.System.DateTimeOffset.Kind_Ptr
      );
      
      procedure SetDBNull
      (
         this : in out SqlDataRecord.Kind;
         ordinal : NetFrameworkBase.Int32
      );
      
      procedure SetGuid
      (
         this : in out SqlDataRecord.Kind;
         ordinal : NetFrameworkBase.Int32; 
         value : NetFrameworkBase.System.Guid.Kind_Ptr
      );
      
      procedure SetSqlBoolean
      (
         this : in out SqlDataRecord.Kind;
         ordinal : NetFrameworkBase.Int32; 
         value : NetFrameworkBase.System.Data.SqlTypes.SqlBoolean.Kind_Ptr
      );
      
      procedure SetSqlByte
      (
         this : in out SqlDataRecord.Kind;
         ordinal : NetFrameworkBase.Int32; 
         value : NetFrameworkBase.System.Data.SqlTypes.SqlByte.Kind_Ptr
      );
      
      procedure SetSqlInt16
      (
         this : in out SqlDataRecord.Kind;
         ordinal : NetFrameworkBase.Int32; 
         value : NetFrameworkBase.System.Data.SqlTypes.SqlInt16.Kind_Ptr
      );
      
      procedure SetSqlInt32
      (
         this : in out SqlDataRecord.Kind;
         ordinal : NetFrameworkBase.Int32; 
         value : NetFrameworkBase.System.Data.SqlTypes.SqlInt32.Kind_Ptr
      );
      
      procedure SetSqlInt64
      (
         this : in out SqlDataRecord.Kind;
         ordinal : NetFrameworkBase.Int32; 
         value : NetFrameworkBase.System.Data.SqlTypes.SqlInt64.Kind_Ptr
      );
      
      procedure SetSqlSingle
      (
         this : in out SqlDataRecord.Kind;
         ordinal : NetFrameworkBase.Int32; 
         value : NetFrameworkBase.System.Data.SqlTypes.SqlSingle.Kind_Ptr
      );
      
      procedure SetSqlDouble
      (
         this : in out SqlDataRecord.Kind;
         ordinal : NetFrameworkBase.Int32; 
         value : NetFrameworkBase.System.Data.SqlTypes.SqlDouble.Kind_Ptr
      );
      
      procedure SetSqlMoney
      (
         this : in out SqlDataRecord.Kind;
         ordinal : NetFrameworkBase.Int32; 
         value : NetFrameworkBase.System.Data.SqlTypes.SqlMoney.Kind_Ptr
      );
      
      procedure SetSqlDateTime
      (
         this : in out SqlDataRecord.Kind;
         ordinal : NetFrameworkBase.Int32; 
         value : NetFrameworkBase.System.Data.SqlTypes.SqlDateTime.Kind_Ptr
      );
      
      procedure SetSqlXml
      (
         this : in out SqlDataRecord.Kind;
         ordinal : NetFrameworkBase.Int32; 
         value : NetFrameworkBase.System.Data.SqlTypes.SqlXml.Kind_Ptr
      );
      
      procedure SetSqlDecimal
      (
         this : in out SqlDataRecord.Kind;
         ordinal : NetFrameworkBase.Int32; 
         value : NetFrameworkBase.System.Data.SqlTypes.SqlDecimal.Kind_Ptr
      );
      
      procedure SetSqlString
      (
         this : in out SqlDataRecord.Kind;
         ordinal : NetFrameworkBase.Int32; 
         value : NetFrameworkBase.System.Data.SqlTypes.SqlString.Kind_Ptr
      );
      
      procedure SetSqlBinary
      (
         this : in out SqlDataRecord.Kind;
         ordinal : NetFrameworkBase.Int32; 
         value : NetFrameworkBase.System.Data.SqlTypes.SqlBinary.Kind_Ptr
      );
      
      procedure SetSqlGuid
      (
         this : in out SqlDataRecord.Kind;
         ordinal : NetFrameworkBase.Int32; 
         value : NetFrameworkBase.System.Data.SqlTypes.SqlGuid.Kind_Ptr
      );
      
      procedure SetSqlChars
      (
         this : in out SqlDataRecord.Kind;
         ordinal : NetFrameworkBase.Int32; 
         value : NetFrameworkBase.System.Data.SqlTypes.SqlChars.Kind_Ptr
      );
      
      procedure SetSqlBytes
      (
         this : in out SqlDataRecord.Kind;
         ordinal : NetFrameworkBase.Int32; 
         value : NetFrameworkBase.System.Data.SqlTypes.SqlBytes.Kind_Ptr
      );
      
      function Constructor
      (
         metaData : NetFrameworkBase.Microsoft.SqlServer.Server.SqlMetaData.Kind_Array
      )
      return NetFrameworkBase.Microsoft.SqlServer.Server.SqlDataRecord.Kind_Ptr;
      
end;
