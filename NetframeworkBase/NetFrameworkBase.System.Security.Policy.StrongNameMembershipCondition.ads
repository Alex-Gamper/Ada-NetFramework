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
limited with NetFrameworkBase.System.Security.Permissions.StrongNamePublicKeyBlob;
limited with NetFrameworkBase.System.Version;
limited with NetFrameworkBase.System.Security.Policy.Evidence;
limited with NetFrameworkBase.System.Security.SecurityElement;
limited with NetFrameworkBase.System.Security.Policy.PolicyLevel;
limited with NetFrameworkBase.System.Security.Policy.IMembershipCondition;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Security.Policy.StrongNameMembershipCondition is
   
   type Kind is new NetFrameworkBase.System.Object.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      procedure PublicKey
      (
         this : in out StrongNameMembershipCondition.Kind;
         value : NetFrameworkBase.System.Security.Permissions.StrongNamePublicKeyBlob.Kind_Ptr
      );
      
      function PublicKey
      (
         this : in out StrongNameMembershipCondition.Kind
      )
      return NetFrameworkBase.System.Security.Permissions.StrongNamePublicKeyBlob.Kind_Ptr;
      
      procedure Name
      (
         this : in out StrongNameMembershipCondition.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      function Name
      (
         this : in out StrongNameMembershipCondition.Kind
      )
      return NetFrameworkBase.BSTR;
      
      procedure Version
      (
         this : in out StrongNameMembershipCondition.Kind;
         value : NetFrameworkBase.System.Version.Kind_Ptr
      );
      
      function Version
      (
         this : in out StrongNameMembershipCondition.Kind
      )
      return NetFrameworkBase.System.Version.Kind_Ptr;
      
      function Check
      (
         this : in out StrongNameMembershipCondition.Kind;
         evidence : NetFrameworkBase.System.Security.Policy.Evidence.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      
      function Copy
      (
         this : in out StrongNameMembershipCondition.Kind
      )
      return NetFrameworkBase.System.Security.Policy.IMembershipCondition.Kind_Ptr;
      
      function ToXml
      (
         this : in out StrongNameMembershipCondition.Kind
      )
      return NetFrameworkBase.System.Security.SecurityElement.Kind_Ptr;
      
      procedure FromXml
      (
         this : in out StrongNameMembershipCondition.Kind;
         e : NetFrameworkBase.System.Security.SecurityElement.Kind_Ptr
      );
      
      function Equals
      (
         this : in out StrongNameMembershipCondition.Kind;
         o : NetFrameworkBase.System.Object.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      
      function GetHashCode
      (
         this : in out StrongNameMembershipCondition.Kind
      )
      return NetFrameworkBase.Int32;
      
      function ToXml
      (
         this : in out StrongNameMembershipCondition.Kind;
         level : NetFrameworkBase.System.Security.Policy.PolicyLevel.Kind_Ptr
      )
      return NetFrameworkBase.System.Security.SecurityElement.Kind_Ptr;
      
      procedure FromXml
      (
         this : in out StrongNameMembershipCondition.Kind;
         e : NetFrameworkBase.System.Security.SecurityElement.Kind_Ptr; 
         level : NetFrameworkBase.System.Security.Policy.PolicyLevel.Kind_Ptr
      );
      
      function ToString
      (
         this : in out StrongNameMembershipCondition.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function Constructor
      (
         blob : NetFrameworkBase.System.Security.Permissions.StrongNamePublicKeyBlob.Kind_Ptr;
         name : NetFrameworkBase.BSTR;
         version : NetFrameworkBase.System.Version.Kind_Ptr
      )
      return NetFrameworkBase.System.Security.Policy.StrongNameMembershipCondition.Kind_Ptr;
      
end;
