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
limited with NetFrameworkBase.System.Data.DataRowVersion;
limited with NetFrameworkBase.System.Data.DbType;
limited with NetFrameworkBase.System.Data.ParameterDirection;
with NetFrameworkBase.System.Object;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Data.Common.DbParameter is
   
   type Kind is new NetFrameworkBase.System.MarshalByRefObject.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function Precision
      (
         this : in out DbParameter.Kind
      )
      return NetFrameworkBase.Byte;
      
      procedure Precision
      (
         this : in out DbParameter.Kind;
         value : NetFrameworkBase.Byte
      );
      
      function Scale
      (
         this : in out DbParameter.Kind
      )
      return NetFrameworkBase.Byte;
      
      procedure Scale
      (
         this : in out DbParameter.Kind;
         value : NetFrameworkBase.Byte
      );
      
      function SourceVersion
      (
         this : in out DbParameter.Kind
      )
      return NetFrameworkBase.System.Data.DataRowVersion.Kind;
      
      procedure SourceVersion
      (
         this : in out DbParameter.Kind;
         value : NetFrameworkBase.System.Data.DataRowVersion.Kind
      );
      
      function DbType
      (
         this : in out DbParameter.Kind
      )
      return NetFrameworkBase.System.Data.DbType.Kind;
      
      procedure DbType
      (
         this : in out DbParameter.Kind;
         value : NetFrameworkBase.System.Data.DbType.Kind
      );
      
      procedure ResetDbType
      (
         this : in out DbParameter.Kind
      );
      
      function Direction
      (
         this : in out DbParameter.Kind
      )
      return NetFrameworkBase.System.Data.ParameterDirection.Kind;
      
      procedure Direction
      (
         this : in out DbParameter.Kind;
         value : NetFrameworkBase.System.Data.ParameterDirection.Kind
      );
      
      function IsNullable
      (
         this : in out DbParameter.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure IsNullable
      (
         this : in out DbParameter.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      function ParameterName
      (
         this : in out DbParameter.Kind
      )
      return NetFrameworkBase.BSTR;
      
      procedure ParameterName
      (
         this : in out DbParameter.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      function Size
      (
         this : in out DbParameter.Kind
      )
      return NetFrameworkBase.Int32;
      
      procedure Size
      (
         this : in out DbParameter.Kind;
         value : NetFrameworkBase.Int32
      );
      
      function SourceColumn
      (
         this : in out DbParameter.Kind
      )
      return NetFrameworkBase.BSTR;
      
      procedure SourceColumn
      (
         this : in out DbParameter.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      function SourceColumnNullMapping
      (
         this : in out DbParameter.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure SourceColumnNullMapping
      (
         this : in out DbParameter.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      function Value
      (
         this : in out DbParameter.Kind
      )
      return NetFrameworkBase.System.Object.Kind_Ptr;
      
      procedure Value
      (
         this : in out DbParameter.Kind;
         value : NetFrameworkBase.System.Object.Kind_Ptr
      );
      
end;