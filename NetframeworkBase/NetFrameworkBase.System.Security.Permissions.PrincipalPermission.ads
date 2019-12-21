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
limited with NetFrameworkBase.System.Security.IPermission;
limited with NetFrameworkBase.System.Security.SecurityElement;
limited with NetFrameworkBase.System.Security.Permissions.PermissionState;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Security.Permissions.PrincipalPermission is
   
   type Kind is new NetFrameworkBase.System.Object.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function IsUnrestricted
      (
         this : in out PrincipalPermission.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function IsSubsetOf
      (
         this : in out PrincipalPermission.Kind;
         target : NetFrameworkBase.System.Security.IPermission.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      
      function Intersect
      (
         this : in out PrincipalPermission.Kind;
         target : NetFrameworkBase.System.Security.IPermission.Kind_Ptr
      )
      return NetFrameworkBase.System.Security.IPermission.Kind_Ptr;
      
      function Union
      (
         this : in out PrincipalPermission.Kind;
         other : NetFrameworkBase.System.Security.IPermission.Kind_Ptr
      )
      return NetFrameworkBase.System.Security.IPermission.Kind_Ptr;
      
      function Equals
      (
         this : in out PrincipalPermission.Kind;
         obj : NetFrameworkBase.System.Object.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      
      function GetHashCode
      (
         this : in out PrincipalPermission.Kind
      )
      return NetFrameworkBase.Int32;
      
      function Copy
      (
         this : in out PrincipalPermission.Kind
      )
      return NetFrameworkBase.System.Security.IPermission.Kind_Ptr;
      
      procedure Demand
      (
         this : in out PrincipalPermission.Kind
      );
      
      procedure FromXml
      (
         this : in out PrincipalPermission.Kind;
         elem : NetFrameworkBase.System.Security.SecurityElement.Kind_Ptr
      );
      
      function ToString
      (
         this : in out PrincipalPermission.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function ToXml
      (
         this : in out PrincipalPermission.Kind
      )
      return NetFrameworkBase.System.Security.SecurityElement.Kind_Ptr;
      
      function Constructor
      (
         state : NetFrameworkBase.System.Security.Permissions.PermissionState.Kind
      )
      return NetFrameworkBase.System.Security.Permissions.PrincipalPermission.Kind_Ptr;
      
      function Constructor
      (
         name : NetFrameworkBase.BSTR;
         role : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Security.Permissions.PrincipalPermission.Kind_Ptr;
      
      function Constructor
      (
         name : NetFrameworkBase.BSTR;
         role : NetFrameworkBase.BSTR;
         isAuthenticated : NetFrameworkBase.Boolean
      )
      return NetFrameworkBase.System.Security.Permissions.PrincipalPermission.Kind_Ptr;
      
end;