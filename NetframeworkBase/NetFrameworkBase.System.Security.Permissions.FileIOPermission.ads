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
with NetFrameworkBase.System.Security.CodeAccessPermission;
limited with NetFrameworkBase.System.Security.Permissions.FileIOPermissionAccess;
limited with NetFrameworkBase.System.Security.IPermission;
with NetFrameworkBase.System.Object;
limited with NetFrameworkBase.System.Security.SecurityElement;
limited with NetFrameworkBase.System.Security.Permissions.PermissionState;
limited with NetFrameworkBase.System.Security.AccessControl.AccessControlActions;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Security.Permissions.FileIOPermission is
   
   type Kind is new NetFrameworkBase.System.Security.CodeAccessPermission.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      procedure SetPathList
      (
         this : in out FileIOPermission.Kind;
         access_x : NetFrameworkBase.System.Security.Permissions.FileIOPermissionAccess.Kind; 
         path : NetFrameworkBase.BSTR
      );
      
      procedure SetPathList
      (
         this : in out FileIOPermission.Kind;
         access_x : NetFrameworkBase.System.Security.Permissions.FileIOPermissionAccess.Kind; 
         pathList : NetFrameworkBase.BSTR_Array
      );
      
      procedure AddPathList
      (
         this : in out FileIOPermission.Kind;
         access_x : NetFrameworkBase.System.Security.Permissions.FileIOPermissionAccess.Kind; 
         path : NetFrameworkBase.BSTR
      );
      
      procedure AddPathList
      (
         this : in out FileIOPermission.Kind;
         access_x : NetFrameworkBase.System.Security.Permissions.FileIOPermissionAccess.Kind; 
         pathList : NetFrameworkBase.BSTR_Array
      );
      
      function GetPathList
      (
         this : in out FileIOPermission.Kind;
         access_x : NetFrameworkBase.System.Security.Permissions.FileIOPermissionAccess.Kind
      )
      return NetFrameworkBase.BSTR_Array;
      
      function AllLocalFiles
      (
         this : in out FileIOPermission.Kind
      )
      return NetFrameworkBase.System.Security.Permissions.FileIOPermissionAccess.Kind;
      
      procedure AllLocalFiles
      (
         this : in out FileIOPermission.Kind;
         value : NetFrameworkBase.System.Security.Permissions.FileIOPermissionAccess.Kind
      );
      
      function AllFiles
      (
         this : in out FileIOPermission.Kind
      )
      return NetFrameworkBase.System.Security.Permissions.FileIOPermissionAccess.Kind;
      
      procedure AllFiles
      (
         this : in out FileIOPermission.Kind;
         value : NetFrameworkBase.System.Security.Permissions.FileIOPermissionAccess.Kind
      );
      
      function IsUnrestricted
      (
         this : in out FileIOPermission.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function IsSubsetOf
      (
         this : in out FileIOPermission.Kind;
         target : NetFrameworkBase.System.Security.IPermission.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      
      function Intersect
      (
         this : in out FileIOPermission.Kind;
         target : NetFrameworkBase.System.Security.IPermission.Kind_Ptr
      )
      return NetFrameworkBase.System.Security.IPermission.Kind_Ptr;
      
      function Union
      (
         this : in out FileIOPermission.Kind;
         other : NetFrameworkBase.System.Security.IPermission.Kind_Ptr
      )
      return NetFrameworkBase.System.Security.IPermission.Kind_Ptr;
      
      function Copy
      (
         this : in out FileIOPermission.Kind
      )
      return NetFrameworkBase.System.Security.IPermission.Kind_Ptr;
      
      function Equals
      (
         this : in out FileIOPermission.Kind;
         obj : NetFrameworkBase.System.Object.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      
      function GetHashCode
      (
         this : in out FileIOPermission.Kind
      )
      return NetFrameworkBase.Int32;
      
      function ToXml
      (
         this : in out FileIOPermission.Kind
      )
      return NetFrameworkBase.System.Security.SecurityElement.Kind_Ptr;
      
      procedure FromXml
      (
         this : in out FileIOPermission.Kind;
         esd : NetFrameworkBase.System.Security.SecurityElement.Kind_Ptr
      );
      
      function Constructor
      (
         state : NetFrameworkBase.System.Security.Permissions.PermissionState.Kind
      )
      return NetFrameworkBase.System.Security.Permissions.FileIOPermission.Kind_Ptr;
      
      function Constructor
      (
         access_x : NetFrameworkBase.System.Security.Permissions.FileIOPermissionAccess.Kind;
         path : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Security.Permissions.FileIOPermission.Kind_Ptr;
      
      function Constructor
      (
         access_x : NetFrameworkBase.System.Security.Permissions.FileIOPermissionAccess.Kind;
         pathList : NetFrameworkBase.BSTR_Array
      )
      return NetFrameworkBase.System.Security.Permissions.FileIOPermission.Kind_Ptr;
      
      function Constructor
      (
         access_x : NetFrameworkBase.System.Security.Permissions.FileIOPermissionAccess.Kind;
         control : NetFrameworkBase.System.Security.AccessControl.AccessControlActions.Kind;
         path : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Security.Permissions.FileIOPermission.Kind_Ptr;
      
      function Constructor
      (
         access_x : NetFrameworkBase.System.Security.Permissions.FileIOPermissionAccess.Kind;
         control : NetFrameworkBase.System.Security.AccessControl.AccessControlActions.Kind;
         pathList : NetFrameworkBase.BSTR_Array
      )
      return NetFrameworkBase.System.Security.Permissions.FileIOPermission.Kind_Ptr;
      
end;