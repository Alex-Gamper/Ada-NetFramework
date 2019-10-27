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
limited with NetFrameworkBase.System.Type_x;
limited with NetFrameworkBase.System.Decimal;
limited with NetFrameworkBase.System.Runtime.Serialization.IFormatterConverter;
limited with NetFrameworkBase.System.Runtime.Serialization.SerializationInfoEnumerator;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Runtime.Serialization.SerializationInfo is
   
   type Kind is new NetFrameworkBase.System.Object.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function FullTypeName
      (
         this : in out SerializationInfo.Kind
      )
      return NetFrameworkBase.BSTR;
      
      procedure FullTypeName
      (
         this : in out SerializationInfo.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      function AssemblyName
      (
         this : in out SerializationInfo.Kind
      )
      return NetFrameworkBase.BSTR;
      
      procedure AssemblyName
      (
         this : in out SerializationInfo.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      procedure SetType
      (
         this : in out SerializationInfo.Kind;
         type_x : NetFrameworkBase.System.Type_x.Kind_Ptr
      );
      
      function MemberCount
      (
         this : in out SerializationInfo.Kind
      )
      return NetFrameworkBase.Int32;
      
      function ObjectType
      (
         this : in out SerializationInfo.Kind
      )
      return NetFrameworkBase.System.Type_x.Kind_Ptr;
      
      function IsFullTypeNameSetExplicit
      (
         this : in out SerializationInfo.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function IsAssemblyNameSetExplicit
      (
         this : in out SerializationInfo.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function GetEnumerator
      (
         this : in out SerializationInfo.Kind
      )
      return NetFrameworkBase.System.Runtime.Serialization.SerializationInfoEnumerator.Kind_Ptr;
      
      procedure AddValue
      (
         this : in out SerializationInfo.Kind;
         name : NetFrameworkBase.BSTR;
         value : NetFrameworkBase.System.Object.Kind_Ptr;
         type_x : NetFrameworkBase.System.Type_x.Kind_Ptr
      );
      
      procedure AddValue
      (
         this : in out SerializationInfo.Kind;
         name : NetFrameworkBase.BSTR;
         value : NetFrameworkBase.System.Object.Kind_Ptr
      );
      
      procedure AddValue
      (
         this : in out SerializationInfo.Kind;
         name : NetFrameworkBase.BSTR;
         value : NetFrameworkBase.Boolean
      );
      
      procedure AddValue
      (
         this : in out SerializationInfo.Kind;
         name : NetFrameworkBase.BSTR;
         value : NetFrameworkBase.Char
      );
      
      procedure AddValue
      (
         this : in out SerializationInfo.Kind;
         name : NetFrameworkBase.BSTR;
         value : NetFrameworkBase.SByte
      );
      
      procedure AddValue
      (
         this : in out SerializationInfo.Kind;
         name : NetFrameworkBase.BSTR;
         value : NetFrameworkBase.Byte
      );
      
      procedure AddValue
      (
         this : in out SerializationInfo.Kind;
         name : NetFrameworkBase.BSTR;
         value : NetFrameworkBase.Int16
      );
      
      procedure AddValue
      (
         this : in out SerializationInfo.Kind;
         name : NetFrameworkBase.BSTR;
         value : NetFrameworkBase.UInt16
      );
      
      procedure AddValue
      (
         this : in out SerializationInfo.Kind;
         name : NetFrameworkBase.BSTR;
         value : NetFrameworkBase.Int32
      );
      
      procedure AddValue
      (
         this : in out SerializationInfo.Kind;
         name : NetFrameworkBase.BSTR;
         value : NetFrameworkBase.UInt32
      );
      
      procedure AddValue
      (
         this : in out SerializationInfo.Kind;
         name : NetFrameworkBase.BSTR;
         value : NetFrameworkBase.Int64
      );
      
      procedure AddValue
      (
         this : in out SerializationInfo.Kind;
         name : NetFrameworkBase.BSTR;
         value : NetFrameworkBase.UInt64
      );
      
      procedure AddValue
      (
         this : in out SerializationInfo.Kind;
         name : NetFrameworkBase.BSTR;
         value : NetFrameworkBase.Single
      );
      
      procedure AddValue
      (
         this : in out SerializationInfo.Kind;
         name : NetFrameworkBase.BSTR;
         value : NetFrameworkBase.Double
      );
      
      procedure AddValue
      (
         this : in out SerializationInfo.Kind;
         name : NetFrameworkBase.BSTR;
         value : NetFrameworkBase.System.Decimal.Kind_Ptr
      );
      
      procedure AddValue
      (
         this : in out SerializationInfo.Kind;
         name : NetFrameworkBase.BSTR;
         value : NetFrameworkBase.Date
      );
      
      function GetValue
      (
         this : in out SerializationInfo.Kind;
         name : NetFrameworkBase.BSTR;
         type_x : NetFrameworkBase.System.Type_x.Kind_Ptr
      )
      return NetFrameworkBase.System.Object.Kind_Ptr;
      
      function GetBoolean
      (
         this : in out SerializationInfo.Kind;
         name : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.Boolean;
      
      function GetChar
      (
         this : in out SerializationInfo.Kind;
         name : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.Char;
      
      function GetSByte
      (
         this : in out SerializationInfo.Kind;
         name : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.SByte;
      
      function GetByte
      (
         this : in out SerializationInfo.Kind;
         name : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.Byte;
      
      function GetInt16
      (
         this : in out SerializationInfo.Kind;
         name : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.Int16;
      
      function GetUInt16
      (
         this : in out SerializationInfo.Kind;
         name : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.UInt16;
      
      function GetInt32
      (
         this : in out SerializationInfo.Kind;
         name : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.Int32;
      
      function GetUInt32
      (
         this : in out SerializationInfo.Kind;
         name : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.UInt32;
      
      function GetInt64
      (
         this : in out SerializationInfo.Kind;
         name : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.Int64;
      
      function GetUInt64
      (
         this : in out SerializationInfo.Kind;
         name : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.UInt64;
      
      function GetSingle
      (
         this : in out SerializationInfo.Kind;
         name : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.Single;
      
      function GetDouble
      (
         this : in out SerializationInfo.Kind;
         name : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.Double;
      
      function GetDecimal
      (
         this : in out SerializationInfo.Kind;
         name : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Decimal.Kind_Ptr;
      
      function GetDateTime
      (
         this : in out SerializationInfo.Kind;
         name : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.Date;
      
      function GetString
      (
         this : in out SerializationInfo.Kind;
         name : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.BSTR;
      
      function Constructor
      (
         type_x : NetFrameworkBase.System.Type_x.Kind_Ptr;
         converter : NetFrameworkBase.System.Runtime.Serialization.IFormatterConverter.Kind_Ptr
      )
      return NetFrameworkBase.System.Runtime.Serialization.SerializationInfo.Kind_Ptr;
      
      function Constructor
      (
         type_x : NetFrameworkBase.System.Type_x.Kind_Ptr;
         converter : NetFrameworkBase.System.Runtime.Serialization.IFormatterConverter.Kind_Ptr;
         requireSameTokenInPartialTrust : NetFrameworkBase.Boolean
      )
      return NetFrameworkBase.System.Runtime.Serialization.SerializationInfo.Kind_Ptr;
      
end;
