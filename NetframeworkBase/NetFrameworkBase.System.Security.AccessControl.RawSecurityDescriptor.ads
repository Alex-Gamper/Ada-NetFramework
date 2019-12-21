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
with NetFrameworkBase.System.Security.AccessControl.GenericSecurityDescriptor;
limited with NetFrameworkBase.System.Security.Principal.SecurityIdentifier;
limited with NetFrameworkBase.System.Security.AccessControl.RawAcl;
limited with NetFrameworkBase.System.Security.AccessControl.ControlFlags;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Security.AccessControl.RawSecurityDescriptor is
   
   type Kind is new NetFrameworkBase.System.Security.AccessControl.GenericSecurityDescriptor.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function ControlFlags
      (
         this : in out RawSecurityDescriptor.Kind
      )
      return NetFrameworkBase.System.Security.AccessControl.ControlFlags.Kind;
      
      function Owner
      (
         this : in out RawSecurityDescriptor.Kind
      )
      return NetFrameworkBase.System.Security.Principal.SecurityIdentifier.Kind_Ptr;
      
      procedure Owner
      (
         this : in out RawSecurityDescriptor.Kind;
         value : NetFrameworkBase.System.Security.Principal.SecurityIdentifier.Kind_Ptr
      );
      
      function Group
      (
         this : in out RawSecurityDescriptor.Kind
      )
      return NetFrameworkBase.System.Security.Principal.SecurityIdentifier.Kind_Ptr;
      
      procedure Group
      (
         this : in out RawSecurityDescriptor.Kind;
         value : NetFrameworkBase.System.Security.Principal.SecurityIdentifier.Kind_Ptr
      );
      
      function SystemAcl
      (
         this : in out RawSecurityDescriptor.Kind
      )
      return NetFrameworkBase.System.Security.AccessControl.RawAcl.Kind_Ptr;
      
      procedure SystemAcl
      (
         this : in out RawSecurityDescriptor.Kind;
         value : NetFrameworkBase.System.Security.AccessControl.RawAcl.Kind_Ptr
      );
      
      function DiscretionaryAcl
      (
         this : in out RawSecurityDescriptor.Kind
      )
      return NetFrameworkBase.System.Security.AccessControl.RawAcl.Kind_Ptr;
      
      procedure DiscretionaryAcl
      (
         this : in out RawSecurityDescriptor.Kind;
         value : NetFrameworkBase.System.Security.AccessControl.RawAcl.Kind_Ptr
      );
      
      function ResourceManagerControl
      (
         this : in out RawSecurityDescriptor.Kind
      )
      return NetFrameworkBase.Byte;
      
      procedure ResourceManagerControl
      (
         this : in out RawSecurityDescriptor.Kind;
         value : NetFrameworkBase.Byte
      );
      
      procedure SetFlags
      (
         this : in out RawSecurityDescriptor.Kind;
         flags : NetFrameworkBase.System.Security.AccessControl.ControlFlags.Kind
      );
      
      function Constructor
      (
         flags : NetFrameworkBase.System.Security.AccessControl.ControlFlags.Kind;
         owner : NetFrameworkBase.System.Security.Principal.SecurityIdentifier.Kind_Ptr;
         group : NetFrameworkBase.System.Security.Principal.SecurityIdentifier.Kind_Ptr;
         systemAcl : NetFrameworkBase.System.Security.AccessControl.RawAcl.Kind_Ptr;
         discretionaryAcl : NetFrameworkBase.System.Security.AccessControl.RawAcl.Kind_Ptr
      )
      return NetFrameworkBase.System.Security.AccessControl.RawSecurityDescriptor.Kind_Ptr;
      
      function Constructor
      (
         sddlForm : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Security.AccessControl.RawSecurityDescriptor.Kind_Ptr;
      
      function Constructor
      (
         binaryForm : NetFrameworkBase.Byte_Array;
         offset : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.Security.AccessControl.RawSecurityDescriptor.Kind_Ptr;
      
end;