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
limited with NetFrameworkBase.System.Data.SqlClient.OnChangeEventHandler;
limited with NetFrameworkBase.System.Data.SqlClient.SqlCommand;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Data.SqlClient.SqlDependency is
   
   type Kind is new NetFrameworkBase.System.Object.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function HasChanges
      (
         this : in out SqlDependency.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function Id
      (
         this : in out SqlDependency.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function Start
      (
         connectionString : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.Boolean;
      
      function Start
      (
         connectionString : NetFrameworkBase.BSTR; 
         queue : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.Boolean;
      
      function Stop
      (
         connectionString : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.Boolean;
      
      function Stop
      (
         connectionString : NetFrameworkBase.BSTR; 
         queue : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.Boolean;
      
      procedure add_OnChange
      (
         this : in out SqlDependency.Kind;
         value : NetFrameworkBase.System.Data.SqlClient.OnChangeEventHandler.Kind_Ptr
      );
      
      procedure remove_OnChange
      (
         this : in out SqlDependency.Kind;
         value : NetFrameworkBase.System.Data.SqlClient.OnChangeEventHandler.Kind_Ptr
      );
      
      procedure AddCommandDependency
      (
         this : in out SqlDependency.Kind;
         command : NetFrameworkBase.System.Data.SqlClient.SqlCommand.Kind_Ptr
      );
      
      function Constructor return NetFrameworkBase.System.Data.SqlClient.SqlDependency.Kind_Ptr;
      
      function Constructor
      (
         command : NetFrameworkBase.System.Data.SqlClient.SqlCommand.Kind_Ptr
      )
      return NetFrameworkBase.System.Data.SqlClient.SqlDependency.Kind_Ptr;
      
      function Constructor
      (
         command : NetFrameworkBase.System.Data.SqlClient.SqlCommand.Kind_Ptr;
         options : NetFrameworkBase.BSTR;
         timeout : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.Data.SqlClient.SqlDependency.Kind_Ptr;
      
end;
