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
with NetFrameworkBase.System.Windows.Forms.BaseCollection;
limited with NetFrameworkBase.System.Windows.Forms.DataGridTableStyle;
limited with NetFrameworkBase.System.ComponentModel.CollectionChangeEventHandler;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Windows.Forms.GridTableStylesCollection is
   
   type Kind is new NetFrameworkBase.System.Windows.Forms.BaseCollection.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function Item
      (
         this : in out GridTableStylesCollection.Kind;
         index : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.Windows.Forms.DataGridTableStyle.Kind_Ptr;
      
      function Item
      (
         this : in out GridTableStylesCollection.Kind;
         tableName : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Windows.Forms.DataGridTableStyle.Kind_Ptr;
      
      function Add
      (
         this : in out GridTableStylesCollection.Kind;
         table : NetFrameworkBase.System.Windows.Forms.DataGridTableStyle.Kind_Ptr
      )
      return NetFrameworkBase.Int32;
      
      procedure AddRange
      (
         this : in out GridTableStylesCollection.Kind;
         tables : NetFrameworkBase.System.Windows.Forms.DataGridTableStyle.Kind_Array
      );
      
      procedure add_CollectionChanged
      (
         this : in out GridTableStylesCollection.Kind;
         value : NetFrameworkBase.System.ComponentModel.CollectionChangeEventHandler.Kind_Ptr
      );
      
      procedure remove_CollectionChanged
      (
         this : in out GridTableStylesCollection.Kind;
         value : NetFrameworkBase.System.ComponentModel.CollectionChangeEventHandler.Kind_Ptr
      );
      
      procedure Clear
      (
         this : in out GridTableStylesCollection.Kind
      );
      
      function Contains
      (
         this : in out GridTableStylesCollection.Kind;
         table : NetFrameworkBase.System.Windows.Forms.DataGridTableStyle.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      
      function Contains
      (
         this : in out GridTableStylesCollection.Kind;
         name : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.Boolean;
      
      procedure Remove
      (
         this : in out GridTableStylesCollection.Kind;
         table : NetFrameworkBase.System.Windows.Forms.DataGridTableStyle.Kind_Ptr
      );
      
      procedure RemoveAt
      (
         this : in out GridTableStylesCollection.Kind;
         index : NetFrameworkBase.Int32
      );
      
end;