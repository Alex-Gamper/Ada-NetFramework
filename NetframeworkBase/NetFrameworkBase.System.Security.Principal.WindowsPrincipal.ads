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
with NetFrameworkBase.System.Security.Claims.ClaimsPrincipal;
limited with NetFrameworkBase.System.Security.Principal.WindowsBuiltInRole;
limited with NetFrameworkBase.System.Security.Principal.SecurityIdentifier;
limited with NetFrameworkBase.System.Security.Principal.WindowsIdentity;
limited with NetFrameworkBase.System.Security.Principal.IIdentity;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Security.Principal.WindowsPrincipal is
   
   type Kind is new NetFrameworkBase.System.Security.Claims.ClaimsPrincipal.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function Identity
      (
         this : in out WindowsPrincipal.Kind
      )
      return NetFrameworkBase.System.Security.Principal.IIdentity.Kind_Ptr;
      
      function IsInRole
      (
         this : in out WindowsPrincipal.Kind;
         role : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.Boolean;
      
      function IsInRole
      (
         this : in out WindowsPrincipal.Kind;
         role : NetFrameworkBase.System.Security.Principal.WindowsBuiltInRole.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function IsInRole
      (
         this : in out WindowsPrincipal.Kind;
         rid : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.Boolean;
      
      function IsInRole
      (
         this : in out WindowsPrincipal.Kind;
         sid : NetFrameworkBase.System.Security.Principal.SecurityIdentifier.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      
      function Constructor
      (
         ntIdentity : NetFrameworkBase.System.Security.Principal.WindowsIdentity.Kind_Ptr
      )
      return NetFrameworkBase.System.Security.Principal.WindowsPrincipal.Kind_Ptr;
      
end;
