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
limited with NetFrameworkBase.System.Data.SqlTypes.SqlDecimal;
limited with NetFrameworkBase.System.Data.SqlTypes.SqlString;
limited with NetFrameworkBase.System.Data.SqlTypes.SqlBinary;
limited with NetFrameworkBase.System.Data.SqlTypes.SqlGuid;
limited with NetFrameworkBase.System.Data.SqlTypes.SqlChars;
limited with NetFrameworkBase.System.Data.SqlTypes.SqlBytes;
limited with NetFrameworkBase.System.Data.SqlTypes.SqlXml;
limited with NetFrameworkBase.System.TimeSpan;
limited with NetFrameworkBase.System.DateTimeOffset;
limited with NetFrameworkBase.System.Data.SqlDbType;
limited with NetFrameworkBase.System.Data.SqlClient.SortOrder;
limited with NetFrameworkBase.System.Type_x;
limited with NetFrameworkBase.System.Data.SqlTypes.SqlCompareOptions;
limited with NetFrameworkBase.System.Data.DbType;
--------------------------------------------------------------------------------
package NetFrameworkBase.Microsoft.SqlServer.Server.SqlMetaData is
   
   type Kind is new NetFrameworkBase.System.Object.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function CompareOptions
      (
         this : in out SqlMetaData.Kind
      )
      return NetFrameworkBase.System.Data.SqlTypes.SqlCompareOptions.Kind;
      
      function DbType
      (
         this : in out SqlMetaData.Kind
      )
      return NetFrameworkBase.System.Data.DbType.Kind;
      
      function IsUniqueKey
      (
         this : in out SqlMetaData.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function LocaleId
      (
         this : in out SqlMetaData.Kind
      )
      return NetFrameworkBase.Int64;
      
      function Max
      return NetFrameworkBase.Int64;
      
      function MaxLength
      (
         this : in out SqlMetaData.Kind
      )
      return NetFrameworkBase.Int64;
      
      function Name
      (
         this : in out SqlMetaData.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function Precision
      (
         this : in out SqlMetaData.Kind
      )
      return NetFrameworkBase.Byte;
      
      function Scale
      (
         this : in out SqlMetaData.Kind
      )
      return NetFrameworkBase.Byte;
      
      function SortOrder
      (
         this : in out SqlMetaData.Kind
      )
      return NetFrameworkBase.System.Data.SqlClient.SortOrder.Kind;
      
      function SortOrdinal
      (
         this : in out SqlMetaData.Kind
      )
      return NetFrameworkBase.Int32;
      
      function SqlDbType
      (
         this : in out SqlMetaData.Kind
      )
      return NetFrameworkBase.System.Data.SqlDbType.Kind;
      
      function Type_x
      (
         this : in out SqlMetaData.Kind
      )
      return NetFrameworkBase.System.Type_x.Kind_Ptr;
      
      function TypeName
      (
         this : in out SqlMetaData.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function UseServerDefault
      (
         this : in out SqlMetaData.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function XmlSchemaCollectionDatabase
      (
         this : in out SqlMetaData.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function XmlSchemaCollectionName
      (
         this : in out SqlMetaData.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function XmlSchemaCollectionOwningSchema
      (
         this : in out SqlMetaData.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function Adjust
      (
         this : in out SqlMetaData.Kind;
         value : NetFrameworkBase.Int16
      )
      return NetFrameworkBase.Int16;
      
      function Adjust
      (
         this : in out SqlMetaData.Kind;
         value : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.Int32;
      
      function Adjust
      (
         this : in out SqlMetaData.Kind;
         value : NetFrameworkBase.Int64
      )
      return NetFrameworkBase.Int64;
      
      function Adjust
      (
         this : in out SqlMetaData.Kind;
         value : NetFrameworkBase.Single
      )
      return NetFrameworkBase.Single;
      
      function Adjust
      (
         this : in out SqlMetaData.Kind;
         value : NetFrameworkBase.Double
      )
      return NetFrameworkBase.Double;
      
      function Adjust
      (
         this : in out SqlMetaData.Kind;
         value : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.BSTR;
      
      function Adjust
      (
         this : in out SqlMetaData.Kind;
         value : NetFrameworkBase.System.Decimal.Kind_Ptr
      )
      return NetFrameworkBase.System.Decimal.Kind_Ptr;
      
      function Adjust
      (
         this : in out SqlMetaData.Kind;
         value : NetFrameworkBase.Date
      )
      return NetFrameworkBase.Date;
      
      function Adjust
      (
         this : in out SqlMetaData.Kind;
         value : NetFrameworkBase.System.Guid.Kind_Ptr
      )
      return NetFrameworkBase.System.Guid.Kind_Ptr;
      
      function Adjust
      (
         this : in out SqlMetaData.Kind;
         value : NetFrameworkBase.System.Data.SqlTypes.SqlBoolean.Kind_Ptr
      )
      return NetFrameworkBase.System.Data.SqlTypes.SqlBoolean.Kind_Ptr;
      
      function Adjust
      (
         this : in out SqlMetaData.Kind;
         value : NetFrameworkBase.System.Data.SqlTypes.SqlByte.Kind_Ptr
      )
      return NetFrameworkBase.System.Data.SqlTypes.SqlByte.Kind_Ptr;
      
      function Adjust
      (
         this : in out SqlMetaData.Kind;
         value : NetFrameworkBase.System.Data.SqlTypes.SqlInt16.Kind_Ptr
      )
      return NetFrameworkBase.System.Data.SqlTypes.SqlInt16.Kind_Ptr;
      
      function Adjust
      (
         this : in out SqlMetaData.Kind;
         value : NetFrameworkBase.System.Data.SqlTypes.SqlInt32.Kind_Ptr
      )
      return NetFrameworkBase.System.Data.SqlTypes.SqlInt32.Kind_Ptr;
      
      function Adjust
      (
         this : in out SqlMetaData.Kind;
         value : NetFrameworkBase.System.Data.SqlTypes.SqlInt64.Kind_Ptr
      )
      return NetFrameworkBase.System.Data.SqlTypes.SqlInt64.Kind_Ptr;
      
      function Adjust
      (
         this : in out SqlMetaData.Kind;
         value : NetFrameworkBase.System.Data.SqlTypes.SqlSingle.Kind_Ptr
      )
      return NetFrameworkBase.System.Data.SqlTypes.SqlSingle.Kind_Ptr;
      
      function Adjust
      (
         this : in out SqlMetaData.Kind;
         value : NetFrameworkBase.System.Data.SqlTypes.SqlDouble.Kind_Ptr
      )
      return NetFrameworkBase.System.Data.SqlTypes.SqlDouble.Kind_Ptr;
      
      function Adjust
      (
         this : in out SqlMetaData.Kind;
         value : NetFrameworkBase.System.Data.SqlTypes.SqlMoney.Kind_Ptr
      )
      return NetFrameworkBase.System.Data.SqlTypes.SqlMoney.Kind_Ptr;
      
      function Adjust
      (
         this : in out SqlMetaData.Kind;
         value : NetFrameworkBase.System.Data.SqlTypes.SqlDateTime.Kind_Ptr
      )
      return NetFrameworkBase.System.Data.SqlTypes.SqlDateTime.Kind_Ptr;
      
      function Adjust
      (
         this : in out SqlMetaData.Kind;
         value : NetFrameworkBase.System.Data.SqlTypes.SqlDecimal.Kind_Ptr
      )
      return NetFrameworkBase.System.Data.SqlTypes.SqlDecimal.Kind_Ptr;
      
      function Adjust
      (
         this : in out SqlMetaData.Kind;
         value : NetFrameworkBase.System.Data.SqlTypes.SqlString.Kind_Ptr
      )
      return NetFrameworkBase.System.Data.SqlTypes.SqlString.Kind_Ptr;
      
      function Adjust
      (
         this : in out SqlMetaData.Kind;
         value : NetFrameworkBase.System.Data.SqlTypes.SqlBinary.Kind_Ptr
      )
      return NetFrameworkBase.System.Data.SqlTypes.SqlBinary.Kind_Ptr;
      
      function Adjust
      (
         this : in out SqlMetaData.Kind;
         value : NetFrameworkBase.System.Data.SqlTypes.SqlGuid.Kind_Ptr
      )
      return NetFrameworkBase.System.Data.SqlTypes.SqlGuid.Kind_Ptr;
      
      function Adjust
      (
         this : in out SqlMetaData.Kind;
         value : NetFrameworkBase.System.Data.SqlTypes.SqlChars.Kind_Ptr
      )
      return NetFrameworkBase.System.Data.SqlTypes.SqlChars.Kind_Ptr;
      
      function Adjust
      (
         this : in out SqlMetaData.Kind;
         value : NetFrameworkBase.System.Data.SqlTypes.SqlBytes.Kind_Ptr
      )
      return NetFrameworkBase.System.Data.SqlTypes.SqlBytes.Kind_Ptr;
      
      function Adjust
      (
         this : in out SqlMetaData.Kind;
         value : NetFrameworkBase.System.Data.SqlTypes.SqlXml.Kind_Ptr
      )
      return NetFrameworkBase.System.Data.SqlTypes.SqlXml.Kind_Ptr;
      
      function Adjust
      (
         this : in out SqlMetaData.Kind;
         value : NetFrameworkBase.System.TimeSpan.Kind_Ptr
      )
      return NetFrameworkBase.System.TimeSpan.Kind_Ptr;
      
      function Adjust
      (
         this : in out SqlMetaData.Kind;
         value : NetFrameworkBase.System.DateTimeOffset.Kind_Ptr
      )
      return NetFrameworkBase.System.DateTimeOffset.Kind_Ptr;
      
      function Adjust
      (
         this : in out SqlMetaData.Kind;
         value : NetFrameworkBase.System.Object.Kind_Ptr
      )
      return NetFrameworkBase.System.Object.Kind_Ptr;
      
      function InferFromValue
      (
         value : NetFrameworkBase.System.Object.Kind_Ptr; 
         name : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.Microsoft.SqlServer.Server.SqlMetaData.Kind_Ptr;
      
      function Adjust
      (
         this : in out SqlMetaData.Kind;
         value : NetFrameworkBase.Boolean
      )
      return NetFrameworkBase.Boolean;
      
      function Adjust
      (
         this : in out SqlMetaData.Kind;
         value : NetFrameworkBase.Byte
      )
      return NetFrameworkBase.Byte;
      
      function Adjust
      (
         this : in out SqlMetaData.Kind;
         value : NetFrameworkBase.Byte_Array
      )
      return NetFrameworkBase.Byte_Array;
      
      function Adjust
      (
         this : in out SqlMetaData.Kind;
         value : NetFrameworkBase.Wide_Char
      )
      return NetFrameworkBase.Wide_Char;
      
      function Adjust
      (
         this : in out SqlMetaData.Kind;
         value : NetFrameworkBase.Wide_Char_Array
      )
      return NetFrameworkBase.Wide_Char_Array;
      
      function Constructor
      (
         name : NetFrameworkBase.BSTR;
         dbType : NetFrameworkBase.System.Data.SqlDbType.Kind
      )
      return NetFrameworkBase.Microsoft.SqlServer.Server.SqlMetaData.Kind_Ptr;
      
      function Constructor
      (
         name : NetFrameworkBase.BSTR;
         dbType : NetFrameworkBase.System.Data.SqlDbType.Kind;
         useServerDefault : NetFrameworkBase.Boolean;
         isUniqueKey : NetFrameworkBase.Boolean;
         columnSortOrder : NetFrameworkBase.System.Data.SqlClient.SortOrder.Kind;
         sortOrdinal : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.Microsoft.SqlServer.Server.SqlMetaData.Kind_Ptr;
      
      function Constructor
      (
         name : NetFrameworkBase.BSTR;
         dbType : NetFrameworkBase.System.Data.SqlDbType.Kind;
         maxLength : NetFrameworkBase.Int64
      )
      return NetFrameworkBase.Microsoft.SqlServer.Server.SqlMetaData.Kind_Ptr;
      
      function Constructor
      (
         name : NetFrameworkBase.BSTR;
         dbType : NetFrameworkBase.System.Data.SqlDbType.Kind;
         maxLength : NetFrameworkBase.Int64;
         useServerDefault : NetFrameworkBase.Boolean;
         isUniqueKey : NetFrameworkBase.Boolean;
         columnSortOrder : NetFrameworkBase.System.Data.SqlClient.SortOrder.Kind;
         sortOrdinal : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.Microsoft.SqlServer.Server.SqlMetaData.Kind_Ptr;
      
      function Constructor
      (
         name : NetFrameworkBase.BSTR;
         dbType : NetFrameworkBase.System.Data.SqlDbType.Kind;
         userDefinedType : NetFrameworkBase.System.Type_x.Kind_Ptr
      )
      return NetFrameworkBase.Microsoft.SqlServer.Server.SqlMetaData.Kind_Ptr;
      
      function Constructor
      (
         name : NetFrameworkBase.BSTR;
         dbType : NetFrameworkBase.System.Data.SqlDbType.Kind;
         userDefinedType : NetFrameworkBase.System.Type_x.Kind_Ptr;
         serverTypeName : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.Microsoft.SqlServer.Server.SqlMetaData.Kind_Ptr;
      
      function Constructor
      (
         name : NetFrameworkBase.BSTR;
         dbType : NetFrameworkBase.System.Data.SqlDbType.Kind;
         userDefinedType : NetFrameworkBase.System.Type_x.Kind_Ptr;
         serverTypeName : NetFrameworkBase.BSTR;
         useServerDefault : NetFrameworkBase.Boolean;
         isUniqueKey : NetFrameworkBase.Boolean;
         columnSortOrder : NetFrameworkBase.System.Data.SqlClient.SortOrder.Kind;
         sortOrdinal : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.Microsoft.SqlServer.Server.SqlMetaData.Kind_Ptr;
      
      function Constructor
      (
         name : NetFrameworkBase.BSTR;
         dbType : NetFrameworkBase.System.Data.SqlDbType.Kind;
         precision : NetFrameworkBase.Byte;
         scale : NetFrameworkBase.Byte
      )
      return NetFrameworkBase.Microsoft.SqlServer.Server.SqlMetaData.Kind_Ptr;
      
      function Constructor
      (
         name : NetFrameworkBase.BSTR;
         dbType : NetFrameworkBase.System.Data.SqlDbType.Kind;
         precision : NetFrameworkBase.Byte;
         scale : NetFrameworkBase.Byte;
         useServerDefault : NetFrameworkBase.Boolean;
         isUniqueKey : NetFrameworkBase.Boolean;
         columnSortOrder : NetFrameworkBase.System.Data.SqlClient.SortOrder.Kind;
         sortOrdinal : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.Microsoft.SqlServer.Server.SqlMetaData.Kind_Ptr;
      
      function Constructor
      (
         name : NetFrameworkBase.BSTR;
         dbType : NetFrameworkBase.System.Data.SqlDbType.Kind;
         maxLength : NetFrameworkBase.Int64;
         locale : NetFrameworkBase.Int64;
         compareOptions : NetFrameworkBase.System.Data.SqlTypes.SqlCompareOptions.Kind
      )
      return NetFrameworkBase.Microsoft.SqlServer.Server.SqlMetaData.Kind_Ptr;
      
      function Constructor
      (
         name : NetFrameworkBase.BSTR;
         dbType : NetFrameworkBase.System.Data.SqlDbType.Kind;
         maxLength : NetFrameworkBase.Int64;
         locale : NetFrameworkBase.Int64;
         compareOptions : NetFrameworkBase.System.Data.SqlTypes.SqlCompareOptions.Kind;
         useServerDefault : NetFrameworkBase.Boolean;
         isUniqueKey : NetFrameworkBase.Boolean;
         columnSortOrder : NetFrameworkBase.System.Data.SqlClient.SortOrder.Kind;
         sortOrdinal : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.Microsoft.SqlServer.Server.SqlMetaData.Kind_Ptr;
      
      function Constructor
      (
         name : NetFrameworkBase.BSTR;
         dbType : NetFrameworkBase.System.Data.SqlDbType.Kind;
         database : NetFrameworkBase.BSTR;
         owningSchema : NetFrameworkBase.BSTR;
         objectName : NetFrameworkBase.BSTR;
         useServerDefault : NetFrameworkBase.Boolean;
         isUniqueKey : NetFrameworkBase.Boolean;
         columnSortOrder : NetFrameworkBase.System.Data.SqlClient.SortOrder.Kind;
         sortOrdinal : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.Microsoft.SqlServer.Server.SqlMetaData.Kind_Ptr;
      
      function Constructor
      (
         name : NetFrameworkBase.BSTR;
         dbType : NetFrameworkBase.System.Data.SqlDbType.Kind;
         maxLength : NetFrameworkBase.Int64;
         precision : NetFrameworkBase.Byte;
         scale : NetFrameworkBase.Byte;
         locale : NetFrameworkBase.Int64;
         compareOptions : NetFrameworkBase.System.Data.SqlTypes.SqlCompareOptions.Kind;
         userDefinedType : NetFrameworkBase.System.Type_x.Kind_Ptr
      )
      return NetFrameworkBase.Microsoft.SqlServer.Server.SqlMetaData.Kind_Ptr;
      
      function Constructor
      (
         name : NetFrameworkBase.BSTR;
         dbType : NetFrameworkBase.System.Data.SqlDbType.Kind;
         maxLength : NetFrameworkBase.Int64;
         precision : NetFrameworkBase.Byte;
         scale : NetFrameworkBase.Byte;
         localeId : NetFrameworkBase.Int64;
         compareOptions : NetFrameworkBase.System.Data.SqlTypes.SqlCompareOptions.Kind;
         userDefinedType : NetFrameworkBase.System.Type_x.Kind_Ptr;
         useServerDefault : NetFrameworkBase.Boolean;
         isUniqueKey : NetFrameworkBase.Boolean;
         columnSortOrder : NetFrameworkBase.System.Data.SqlClient.SortOrder.Kind;
         sortOrdinal : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.Microsoft.SqlServer.Server.SqlMetaData.Kind_Ptr;
      
      function Constructor
      (
         name : NetFrameworkBase.BSTR;
         dbType : NetFrameworkBase.System.Data.SqlDbType.Kind;
         database : NetFrameworkBase.BSTR;
         owningSchema : NetFrameworkBase.BSTR;
         objectName : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.Microsoft.SqlServer.Server.SqlMetaData.Kind_Ptr;
      
end;