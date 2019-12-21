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
limited with NetFrameworkBase.System.Net.NetworkAccess;
limited with NetFrameworkBase.System.Net.TransportType;
limited with NetFrameworkBase.System.Security.IPermission;
limited with NetFrameworkBase.System.Security.SecurityElement;
limited with NetFrameworkBase.System.Security.Permissions.PermissionState;
limited with NetFrameworkBase.System.Collections.IEnumerator;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Net.SocketPermission is
   
   type Kind is new NetFrameworkBase.System.Security.CodeAccessPermission.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function ConnectList
      (
         this : in out SocketPermission.Kind
      )
      return NetFrameworkBase.System.Collections.IEnumerator.Kind_Ptr;
      
      function AcceptList
      (
         this : in out SocketPermission.Kind
      )
      return NetFrameworkBase.System.Collections.IEnumerator.Kind_Ptr;
      
      procedure AddPermission
      (
         this : in out SocketPermission.Kind;
         access_x : NetFrameworkBase.System.Net.NetworkAccess.Kind; 
         transport : NetFrameworkBase.System.Net.TransportType.Kind; 
         hostName : NetFrameworkBase.BSTR; 
         portNumber : NetFrameworkBase.Int32
      );
      
      function IsUnrestricted
      (
         this : in out SocketPermission.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function Copy
      (
         this : in out SocketPermission.Kind
      )
      return NetFrameworkBase.System.Security.IPermission.Kind_Ptr;
      
      function Union
      (
         this : in out SocketPermission.Kind;
         target : NetFrameworkBase.System.Security.IPermission.Kind_Ptr
      )
      return NetFrameworkBase.System.Security.IPermission.Kind_Ptr;
      
      function Intersect
      (
         this : in out SocketPermission.Kind;
         target : NetFrameworkBase.System.Security.IPermission.Kind_Ptr
      )
      return NetFrameworkBase.System.Security.IPermission.Kind_Ptr;
      
      function IsSubsetOf
      (
         this : in out SocketPermission.Kind;
         target : NetFrameworkBase.System.Security.IPermission.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      
      procedure FromXml
      (
         this : in out SocketPermission.Kind;
         securityElement : NetFrameworkBase.System.Security.SecurityElement.Kind_Ptr
      );
      
      function ToXml
      (
         this : in out SocketPermission.Kind
      )
      return NetFrameworkBase.System.Security.SecurityElement.Kind_Ptr;
      
      function Constructor
      (
         state : NetFrameworkBase.System.Security.Permissions.PermissionState.Kind
      )
      return NetFrameworkBase.System.Net.SocketPermission.Kind_Ptr;
      
      function Constructor
      (
         access_x : NetFrameworkBase.System.Net.NetworkAccess.Kind;
         transport : NetFrameworkBase.System.Net.TransportType.Kind;
         hostName : NetFrameworkBase.BSTR;
         portNumber : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.Net.SocketPermission.Kind_Ptr;
      
end;
