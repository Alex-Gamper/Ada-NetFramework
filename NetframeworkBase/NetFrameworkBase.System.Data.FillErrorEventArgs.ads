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
with NetFrameworkBase.System.EventArgs;
limited with NetFrameworkBase.System.Exception_x;
limited with NetFrameworkBase.System.Data.DataTable;
with NetFrameworkBase.System.Object;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Data.FillErrorEventArgs is
   
   type Kind is new NetFrameworkBase.System.EventArgs.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function Continue
      (
         this : in out FillErrorEventArgs.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure Continue
      (
         this : in out FillErrorEventArgs.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      function DataTable
      (
         this : in out FillErrorEventArgs.Kind
      )
      return NetFrameworkBase.System.Data.DataTable.Kind_Ptr;
      
      function Errors
      (
         this : in out FillErrorEventArgs.Kind
      )
      return NetFrameworkBase.System.Exception_x.Kind_Ptr;
      
      procedure Errors
      (
         this : in out FillErrorEventArgs.Kind;
         value : NetFrameworkBase.System.Exception_x.Kind_Ptr
      );
      
      function Values
      (
         this : in out FillErrorEventArgs.Kind
      )
      return NetFrameworkBase.System.Object.Kind_Array;
      
      function Constructor
      (
         dataTable : NetFrameworkBase.System.Data.DataTable.Kind_Ptr;
         values : NetFrameworkBase.System.Object.Kind_Array
      )
      return NetFrameworkBase.System.Data.FillErrorEventArgs.Kind_Ptr;
      
end;
