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
limited with NetFrameworkBase.System.Security.Principal.IdentityReference;
limited with NetFrameworkBase.System.Security.AccessControl.AccessControlSections;
limited with NetFrameworkBase.System.Security.AccessControl.AccessControlModification;
limited with NetFrameworkBase.System.Security.AccessControl.AccessRule;
limited with NetFrameworkBase.System.Security.AccessControl.AuditRule;
limited with NetFrameworkBase.System.Security.AccessControl.InheritanceFlags;
limited with NetFrameworkBase.System.Security.AccessControl.PropagationFlags;
limited with NetFrameworkBase.System.Security.AccessControl.AccessControlType;
limited with NetFrameworkBase.System.Security.AccessControl.AuditFlags;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Security.AccessControl.ObjectSecurity is
   
   type Kind is new NetFrameworkBase.System.Object.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function GetOwner
      (
         this : in out ObjectSecurity.Kind;
         targetType : NetFrameworkBase.System.Type_x.Kind_Ptr
      )
      return NetFrameworkBase.System.Security.Principal.IdentityReference.Kind_Ptr;
      
      procedure SetOwner
      (
         this : in out ObjectSecurity.Kind;
         identity : NetFrameworkBase.System.Security.Principal.IdentityReference.Kind_Ptr
      );
      
      function GetGroup
      (
         this : in out ObjectSecurity.Kind;
         targetType : NetFrameworkBase.System.Type_x.Kind_Ptr
      )
      return NetFrameworkBase.System.Security.Principal.IdentityReference.Kind_Ptr;
      
      procedure SetGroup
      (
         this : in out ObjectSecurity.Kind;
         identity : NetFrameworkBase.System.Security.Principal.IdentityReference.Kind_Ptr
      );
      
      procedure PurgeAccessRules
      (
         this : in out ObjectSecurity.Kind;
         identity : NetFrameworkBase.System.Security.Principal.IdentityReference.Kind_Ptr
      );
      
      procedure PurgeAuditRules
      (
         this : in out ObjectSecurity.Kind;
         identity : NetFrameworkBase.System.Security.Principal.IdentityReference.Kind_Ptr
      );
      
      function AreAccessRulesProtected
      (
         this : in out ObjectSecurity.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure SetAccessRuleProtection
      (
         this : in out ObjectSecurity.Kind;
         isProtected : NetFrameworkBase.Boolean; 
         preserveInheritance : NetFrameworkBase.Boolean
      );
      
      function AreAuditRulesProtected
      (
         this : in out ObjectSecurity.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure SetAuditRuleProtection
      (
         this : in out ObjectSecurity.Kind;
         isProtected : NetFrameworkBase.Boolean; 
         preserveInheritance : NetFrameworkBase.Boolean
      );
      
      function AreAccessRulesCanonical
      (
         this : in out ObjectSecurity.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function AreAuditRulesCanonical
      (
         this : in out ObjectSecurity.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function IsSddlConversionSupported
      return NetFrameworkBase.Boolean;
      
      function GetSecurityDescriptorSddlForm
      (
         this : in out ObjectSecurity.Kind;
         includeSections : NetFrameworkBase.System.Security.AccessControl.AccessControlSections.Kind
      )
      return NetFrameworkBase.BSTR;
      
      procedure SetSecurityDescriptorSddlForm
      (
         this : in out ObjectSecurity.Kind;
         sddlForm : NetFrameworkBase.BSTR
      );
      
      procedure SetSecurityDescriptorSddlForm
      (
         this : in out ObjectSecurity.Kind;
         sddlForm : NetFrameworkBase.BSTR; 
         includeSections : NetFrameworkBase.System.Security.AccessControl.AccessControlSections.Kind
      );
      
      function GetSecurityDescriptorBinaryForm
      (
         this : in out ObjectSecurity.Kind
      )
      return NetFrameworkBase.Byte_Array;
      
      procedure SetSecurityDescriptorBinaryForm
      (
         this : in out ObjectSecurity.Kind;
         binaryForm : NetFrameworkBase.Byte_Array
      );
      
      procedure SetSecurityDescriptorBinaryForm
      (
         this : in out ObjectSecurity.Kind;
         binaryForm : NetFrameworkBase.Byte_Array; 
         includeSections : NetFrameworkBase.System.Security.AccessControl.AccessControlSections.Kind
      );
      
      function ModifyAccessRule
      (
         this : in out ObjectSecurity.Kind;
         modification : NetFrameworkBase.System.Security.AccessControl.AccessControlModification.Kind; 
         rule : NetFrameworkBase.System.Security.AccessControl.AccessRule.Kind_Ptr; 
         modified : out NetFrameworkBase.Boolean
      )
      return NetFrameworkBase.Boolean;
      
      function ModifyAuditRule
      (
         this : in out ObjectSecurity.Kind;
         modification : NetFrameworkBase.System.Security.AccessControl.AccessControlModification.Kind; 
         rule : NetFrameworkBase.System.Security.AccessControl.AuditRule.Kind_Ptr; 
         modified : out NetFrameworkBase.Boolean
      )
      return NetFrameworkBase.Boolean;
      
      function AccessRightType
      (
         this : in out ObjectSecurity.Kind
      )
      return NetFrameworkBase.System.Type_x.Kind_Ptr;
      
      function AccessRuleType
      (
         this : in out ObjectSecurity.Kind
      )
      return NetFrameworkBase.System.Type_x.Kind_Ptr;
      
      function AuditRuleType
      (
         this : in out ObjectSecurity.Kind
      )
      return NetFrameworkBase.System.Type_x.Kind_Ptr;
      
      function AccessRuleFactory
      (
         this : in out ObjectSecurity.Kind;
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
         this : in out ObjectSecurity.Kind;
         identityReference : NetFrameworkBase.System.Security.Principal.IdentityReference.Kind_Ptr; 
         accessMask : NetFrameworkBase.Int32; 
         isInherited : NetFrameworkBase.Boolean; 
         inheritanceFlags : NetFrameworkBase.System.Security.AccessControl.InheritanceFlags.Kind; 
         propagationFlags : NetFrameworkBase.System.Security.AccessControl.PropagationFlags.Kind; 
         flags : NetFrameworkBase.System.Security.AccessControl.AuditFlags.Kind
      )
      return NetFrameworkBase.System.Security.AccessControl.AuditRule.Kind_Ptr;
      
end;
