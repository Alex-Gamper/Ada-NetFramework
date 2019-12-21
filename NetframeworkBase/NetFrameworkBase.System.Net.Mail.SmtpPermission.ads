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
limited with NetFrameworkBase.System.Net.Mail.SmtpAccess;
limited with NetFrameworkBase.System.Security.IPermission;
limited with NetFrameworkBase.System.Security.SecurityElement;
limited with NetFrameworkBase.System.Security.Permissions.PermissionState;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Net.Mail.SmtpPermission is
   
   type Kind is new NetFrameworkBase.System.Security.CodeAccessPermission.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function Access_x
      (
         this : in out SmtpPermission.Kind
      )
      return NetFrameworkBase.System.Net.Mail.SmtpAccess.Kind;
      
      procedure AddPermission
      (
         this : in out SmtpPermission.Kind;
         access_x : NetFrameworkBase.System.Net.Mail.SmtpAccess.Kind
      );
      
      function IsUnrestricted
      (
         this : in out SmtpPermission.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function Copy
      (
         this : in out SmtpPermission.Kind
      )
      return NetFrameworkBase.System.Security.IPermission.Kind_Ptr;
      
      function Union
      (
         this : in out SmtpPermission.Kind;
         target : NetFrameworkBase.System.Security.IPermission.Kind_Ptr
      )
      return NetFrameworkBase.System.Security.IPermission.Kind_Ptr;
      
      function Intersect
      (
         this : in out SmtpPermission.Kind;
         target : NetFrameworkBase.System.Security.IPermission.Kind_Ptr
      )
      return NetFrameworkBase.System.Security.IPermission.Kind_Ptr;
      
      function IsSubsetOf
      (
         this : in out SmtpPermission.Kind;
         target : NetFrameworkBase.System.Security.IPermission.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      
      procedure FromXml
      (
         this : in out SmtpPermission.Kind;
         securityElement : NetFrameworkBase.System.Security.SecurityElement.Kind_Ptr
      );
      
      function ToXml
      (
         this : in out SmtpPermission.Kind
      )
      return NetFrameworkBase.System.Security.SecurityElement.Kind_Ptr;
      
      function Constructor
      (
         state : NetFrameworkBase.System.Security.Permissions.PermissionState.Kind
      )
      return NetFrameworkBase.System.Net.Mail.SmtpPermission.Kind_Ptr;
      
      function Constructor
      (
         unrestricted : NetFrameworkBase.Boolean
      )
      return NetFrameworkBase.System.Net.Mail.SmtpPermission.Kind_Ptr;
      
      function Constructor
      (
         access_x : NetFrameworkBase.System.Net.Mail.SmtpAccess.Kind
      )
      return NetFrameworkBase.System.Net.Mail.SmtpPermission.Kind_Ptr;
      
end;
