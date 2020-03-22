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
with NetFrameworkBase.System.Data.Common.DbConnectionStringBuilder;
with NetFrameworkBase.System.Object;
limited with NetFrameworkBase.System.Collections.ICollection;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Data.Odbc.OdbcConnectionStringBuilder is
   
   type Kind is new NetFrameworkBase.System.Data.Common.DbConnectionStringBuilder.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function Driver
      (
         this : in out OdbcConnectionStringBuilder.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function Dsn
      (
         this : in out OdbcConnectionStringBuilder.Kind
      )
      return NetFrameworkBase.BSTR;
      
      procedure Clear
      (
         this : in out OdbcConnectionStringBuilder.Kind
      );
      
      function Item
      (
         this : in out OdbcConnectionStringBuilder.Kind;
         keyword : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Object.Kind_Ptr;
      
      procedure Item
      (
         this : in out OdbcConnectionStringBuilder.Kind;
         keyword : NetFrameworkBase.BSTR; 
         value : NetFrameworkBase.System.Object.Kind_Ptr
      );
      
      procedure Driver
      (
         this : in out OdbcConnectionStringBuilder.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      procedure Dsn
      (
         this : in out OdbcConnectionStringBuilder.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      function Keys
      (
         this : in out OdbcConnectionStringBuilder.Kind
      )
      return NetFrameworkBase.System.Collections.ICollection.Kind_Ptr;
      
      function ContainsKey
      (
         this : in out OdbcConnectionStringBuilder.Kind;
         keyword : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.Boolean;
      
      function Remove
      (
         this : in out OdbcConnectionStringBuilder.Kind;
         keyword : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.Boolean;
      
      function TryGetValue
      (
         this : in out OdbcConnectionStringBuilder.Kind;
         keyword : NetFrameworkBase.BSTR; 
         value : out NetFrameworkBase.System.Object.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      
      function Constructor return NetFrameworkBase.System.Data.Odbc.OdbcConnectionStringBuilder.Kind_Ptr;
      
      function Constructor
      (
         connectionString : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Data.Odbc.OdbcConnectionStringBuilder.Kind_Ptr;
      
end;