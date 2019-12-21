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
limited with NetFrameworkBase.System.ComponentModel.Design.ServiceCreatorCallback;
limited with NetFrameworkBase.System.IServiceProvider;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.ComponentModel.Design.ServiceContainer is
   
   type Kind is new NetFrameworkBase.System.Object.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      procedure AddService
      (
         this : in out ServiceContainer.Kind;
         serviceType : NetFrameworkBase.System.Type_x.Kind_Ptr; 
         serviceInstance : NetFrameworkBase.System.Object.Kind_Ptr
      );
      
      procedure AddService
      (
         this : in out ServiceContainer.Kind;
         serviceType : NetFrameworkBase.System.Type_x.Kind_Ptr; 
         callback : NetFrameworkBase.System.ComponentModel.Design.ServiceCreatorCallback.Kind_Ptr
      );
      
      procedure Dispose
      (
         this : in out ServiceContainer.Kind
      );
      
      procedure RemoveService
      (
         this : in out ServiceContainer.Kind;
         serviceType : NetFrameworkBase.System.Type_x.Kind_Ptr
      );
      
      procedure AddService
      (
         this : in out ServiceContainer.Kind;
         serviceType : NetFrameworkBase.System.Type_x.Kind_Ptr; 
         serviceInstance : NetFrameworkBase.System.Object.Kind_Ptr; 
         promote : NetFrameworkBase.Boolean
      );
      
      procedure AddService
      (
         this : in out ServiceContainer.Kind;
         serviceType : NetFrameworkBase.System.Type_x.Kind_Ptr; 
         callback : NetFrameworkBase.System.ComponentModel.Design.ServiceCreatorCallback.Kind_Ptr; 
         promote : NetFrameworkBase.Boolean
      );
      
      function GetService
      (
         this : in out ServiceContainer.Kind;
         serviceType : NetFrameworkBase.System.Type_x.Kind_Ptr
      )
      return NetFrameworkBase.System.Object.Kind_Ptr;
      
      procedure RemoveService
      (
         this : in out ServiceContainer.Kind;
         serviceType : NetFrameworkBase.System.Type_x.Kind_Ptr; 
         promote : NetFrameworkBase.Boolean
      );
      
      function Constructor return NetFrameworkBase.System.ComponentModel.Design.ServiceContainer.Kind_Ptr;
      
      function Constructor
      (
         parentProvider : NetFrameworkBase.System.IServiceProvider.Kind_Ptr
      )
      return NetFrameworkBase.System.ComponentModel.Design.ServiceContainer.Kind_Ptr;
      
end;