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
limited with NetFrameworkBase.System.Windows.Forms.DataGridViewRow;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Windows.Forms.DataGridViewSelectedRowCollection is
   
   type Kind is new NetFrameworkBase.System.Windows.Forms.BaseCollection.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function Item
      (
         this : in out DataGridViewSelectedRowCollection.Kind;
         index : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.Windows.Forms.DataGridViewRow.Kind_Ptr;
      
      procedure Clear
      (
         this : in out DataGridViewSelectedRowCollection.Kind
      );
      
      function Contains
      (
         this : in out DataGridViewSelectedRowCollection.Kind;
         dataGridViewRow : NetFrameworkBase.System.Windows.Forms.DataGridViewRow.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      
      procedure CopyTo
      (
         this : in out DataGridViewSelectedRowCollection.Kind;
         array_x : NetFrameworkBase.System.Windows.Forms.DataGridViewRow.Kind_Array; 
         index : NetFrameworkBase.Int32
      );
      
      procedure Insert
      (
         this : in out DataGridViewSelectedRowCollection.Kind;
         index : NetFrameworkBase.Int32; 
         dataGridViewRow : NetFrameworkBase.System.Windows.Forms.DataGridViewRow.Kind_Ptr
      );
      
end;
