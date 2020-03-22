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
with NetFrameworkBase.System.EnterpriseServices.ServicedComponent;
limited with NetFrameworkBase.System.EnterpriseServices.InstallationFlags;
with NetFrameworkBase.System.Object;
limited with NetFrameworkBase.System.EnterpriseServices.RegistrationConfig;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.EnterpriseServices.RegistrationHelperTx is
   
   type Kind is new NetFrameworkBase.System.EnterpriseServices.ServicedComponent.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      procedure InstallAssembly
      (
         this : in out RegistrationHelperTx.Kind;
         assembly : NetFrameworkBase.BSTR; 
         application : NetFrameworkBase.BSTR_Ptr; 
         tlb : NetFrameworkBase.BSTR_Ptr; 
         installFlags : NetFrameworkBase.System.EnterpriseServices.InstallationFlags.Kind; 
         sync : NetFrameworkBase.System.Object.Kind_Ptr
      );
      
      procedure InstallAssembly
      (
         this : in out RegistrationHelperTx.Kind;
         assembly : NetFrameworkBase.BSTR; 
         application : NetFrameworkBase.BSTR_Ptr; 
         partition : NetFrameworkBase.BSTR; 
         tlb : NetFrameworkBase.BSTR_Ptr; 
         installFlags : NetFrameworkBase.System.EnterpriseServices.InstallationFlags.Kind; 
         sync : NetFrameworkBase.System.Object.Kind_Ptr
      );
      
      procedure InstallAssemblyFromConfig
      (
         this : in out RegistrationHelperTx.Kind;
         regConfig : NetFrameworkBase.System.EnterpriseServices.RegistrationConfig.Kind_Ptr; 
         sync : NetFrameworkBase.System.Object.Kind_Ptr
      );
      
      procedure UninstallAssembly
      (
         this : in out RegistrationHelperTx.Kind;
         assembly : NetFrameworkBase.BSTR; 
         application : NetFrameworkBase.BSTR; 
         sync : NetFrameworkBase.System.Object.Kind_Ptr
      );
      
      procedure UninstallAssembly
      (
         this : in out RegistrationHelperTx.Kind;
         assembly : NetFrameworkBase.BSTR; 
         application : NetFrameworkBase.BSTR; 
         partition : NetFrameworkBase.BSTR; 
         sync : NetFrameworkBase.System.Object.Kind_Ptr
      );
      
      procedure UninstallAssemblyFromConfig
      (
         this : in out RegistrationHelperTx.Kind;
         regConfig : NetFrameworkBase.System.EnterpriseServices.RegistrationConfig.Kind_Ptr; 
         sync : NetFrameworkBase.System.Object.Kind_Ptr
      );
      
      function IsInTransaction
      (
         this : in out RegistrationHelperTx.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function Constructor return NetFrameworkBase.System.EnterpriseServices.RegistrationHelperTx.Kind_Ptr;
      
end;