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
limited with NetFrameworkBase.System.Data.IDataReader;
limited with NetFrameworkBase.System.Data.Common.DbDataReader;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Data.Common.DbEnumerator is
   
   type Kind is new NetFrameworkBase.System.Object.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function Current
      (
         this : in out DbEnumerator.Kind
      )
      return NetFrameworkBase.System.Object.Kind_Ptr;
      
      function MoveNext
      (
         this : in out DbEnumerator.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure Reset
      (
         this : in out DbEnumerator.Kind
      );
      
      function Constructor
      (
         reader : NetFrameworkBase.System.Data.IDataReader.Kind_Ptr
      )
      return NetFrameworkBase.System.Data.Common.DbEnumerator.Kind_Ptr;
      
      function Constructor
      (
         reader : NetFrameworkBase.System.Data.IDataReader.Kind_Ptr;
         closeReader : NetFrameworkBase.Boolean
      )
      return NetFrameworkBase.System.Data.Common.DbEnumerator.Kind_Ptr;
      
      function Constructor
      (
         reader : NetFrameworkBase.System.Data.Common.DbDataReader.Kind_Ptr
      )
      return NetFrameworkBase.System.Data.Common.DbEnumerator.Kind_Ptr;
      
      function Constructor
      (
         reader : NetFrameworkBase.System.Data.Common.DbDataReader.Kind_Ptr;
         closeReader : NetFrameworkBase.Boolean
      )
      return NetFrameworkBase.System.Data.Common.DbEnumerator.Kind_Ptr;
      
end;
