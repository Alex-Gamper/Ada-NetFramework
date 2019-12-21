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
with NetFrameworkBase.System.Security.AccessControl.NativeObjectSecurity;
limited with NetFrameworkBase.System.Security.Principal.IdentityReference;
limited with NetFrameworkBase.System.Security.AccessControl.InheritanceFlags;
limited with NetFrameworkBase.System.Security.AccessControl.PropagationFlags;
limited with NetFrameworkBase.System.Security.AccessControl.AccessControlType;
limited with NetFrameworkBase.System.Security.AccessControl.AuditFlags;
limited with NetFrameworkBase.System.Security.AccessControl.SemaphoreAccessRule;
limited with NetFrameworkBase.System.Security.AccessControl.SemaphoreAuditRule;
limited with NetFrameworkBase.System.Security.AccessControl.AccessControlSections;
limited with NetFrameworkBase.System.Security.AccessControl.AccessRule;
limited with NetFrameworkBase.System.Security.AccessControl.AuditRule;
limited with NetFrameworkBase.System.Type_x;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Security.AccessControl.SemaphoreSecurity is
   
   type Kind is new NetFrameworkBase.System.Security.AccessControl.NativeObjectSecurity.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function AccessRuleFactory
      (
         this : in out SemaphoreSecurity.Kind;
         identityReference : NetFrameworkBase.System.Security.Principal.IdentityReference.Kind_Ptr; 
         accessMask : NetFrameworkBase.Int32; 
         isInherited : NetFrameworkBase.Boolean; 
         inheritanceFlags : NetFrameworkBase.System.Security.AccessControl.InheritanceFlags.Kind; 
         propagationFlags : NetFrameworkBase.System.Security.AccessControl.PropagationFlags.Kind; 
         type_x : NetFrameworkBase.System.Security.AccessControl.AccessControlType.Kind
      )
      return NetFrameworkBase.System.Security.AccessControl.AccessRule.Kind_Ptr;
      
      function AuditRuleFactory
      (
         this : in out SemaphoreSecurity.Kind;
         identityReference : NetFrameworkBase.System.Security.Principal.IdentityReference.Kind_Ptr; 
         accessMask : NetFrameworkBase.Int32; 
         isInherited : NetFrameworkBase.Boolean; 
         inheritanceFlags : NetFrameworkBase.System.Security.AccessControl.InheritanceFlags.Kind; 
         propagationFlags : NetFrameworkBase.System.Security.AccessControl.PropagationFlags.Kind; 
         flags : NetFrameworkBase.System.Security.AccessControl.AuditFlags.Kind
      )
      return NetFrameworkBase.System.Security.AccessControl.AuditRule.Kind_Ptr;
      
      procedure AddAccessRule
      (
         this : in out SemaphoreSecurity.Kind;
         rule : NetFrameworkBase.System.Security.AccessControl.SemaphoreAccessRule.Kind_Ptr
      );
      
      procedure SetAccessRule
      (
         this : in out SemaphoreSecurity.Kind;
         rule : NetFrameworkBase.System.Security.AccessControl.SemaphoreAccessRule.Kind_Ptr
      );
      
      procedure ResetAccessRule
      (
         this : in out SemaphoreSecurity.Kind;
         rule : NetFrameworkBase.System.Security.AccessControl.SemaphoreAccessRule.Kind_Ptr
      );
      
      function RemoveAccessRule
      (
         this : in out SemaphoreSecurity.Kind;
         rule : NetFrameworkBase.System.Security.AccessControl.SemaphoreAccessRule.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      
      procedure RemoveAccessRuleAll
      (
         this : in out SemaphoreSecurity.Kind;
         rule : NetFrameworkBase.System.Security.AccessControl.SemaphoreAccessRule.Kind_Ptr
      );
      
      procedure RemoveAccessRuleSpecific
      (
         this : in out SemaphoreSecurity.Kind;
         rule : NetFrameworkBase.System.Security.AccessControl.SemaphoreAccessRule.Kind_Ptr
      );
      
      procedure AddAuditRule
      (
         this : in out SemaphoreSecurity.Kind;
         rule : NetFrameworkBase.System.Security.AccessControl.SemaphoreAuditRule.Kind_Ptr
      );
      
      procedure SetAuditRule
      (
         this : in out SemaphoreSecurity.Kind;
         rule : NetFrameworkBase.System.Security.AccessControl.SemaphoreAuditRule.Kind_Ptr
      );
      
      function RemoveAuditRule
      (
         this : in out SemaphoreSecurity.Kind;
         rule : NetFrameworkBase.System.Security.AccessControl.SemaphoreAuditRule.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      
      procedure RemoveAuditRuleAll
      (
         this : in out SemaphoreSecurity.Kind;
         rule : NetFrameworkBase.System.Security.AccessControl.SemaphoreAuditRule.Kind_Ptr
      );
      
      procedure RemoveAuditRuleSpecific
      (
         this : in out SemaphoreSecurity.Kind;
         rule : NetFrameworkBase.System.Security.AccessControl.SemaphoreAuditRule.Kind_Ptr
      );
      
      function AccessRightType
      (
         this : in out SemaphoreSecurity.Kind
      )
      return NetFrameworkBase.System.Type_x.Kind_Ptr;
      
      function AccessRuleType
      (
         this : in out SemaphoreSecurity.Kind
      )
      return NetFrameworkBase.System.Type_x.Kind_Ptr;
      
      function AuditRuleType
      (
         this : in out SemaphoreSecurity.Kind
      )
      return NetFrameworkBase.System.Type_x.Kind_Ptr;
      
      function Constructor return NetFrameworkBase.System.Security.AccessControl.SemaphoreSecurity.Kind_Ptr;
      
      function Constructor
      (
         name : NetFrameworkBase.BSTR;
         includeSections : NetFrameworkBase.System.Security.AccessControl.AccessControlSections.Kind
      )
      return NetFrameworkBase.System.Security.AccessControl.SemaphoreSecurity.Kind_Ptr;
      
end;
