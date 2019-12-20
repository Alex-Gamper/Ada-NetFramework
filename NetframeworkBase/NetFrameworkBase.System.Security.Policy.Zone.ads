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
with NetFrameworkBase.System.Security.Policy.EvidenceBase;
limited with NetFrameworkBase.System.Security.Policy.Evidence;
with NetFrameworkBase.System.Object;
limited with NetFrameworkBase.System.Security.SecurityZone;
limited with NetFrameworkBase.System.Security.IPermission;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Security.Policy.Zone is
   
   type Kind is new NetFrameworkBase.System.Security.Policy.EvidenceBase.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function CreateFromUrl
      (
         url : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Security.Policy.Zone.Kind_Ptr;
      
      function CreateIdentityPermission
      (
         this : in out Zone.Kind;
         evidence : NetFrameworkBase.System.Security.Policy.Evidence.Kind_Ptr
      )
      return NetFrameworkBase.System.Security.IPermission.Kind_Ptr;
      
      function SecurityZone
      (
         this : in out Zone.Kind
      )
      return NetFrameworkBase.System.Security.SecurityZone.Kind;
      
      function Equals
      (
         this : in out Zone.Kind;
         o : NetFrameworkBase.System.Object.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      
      function GetHashCode
      (
         this : in out Zone.Kind
      )
      return NetFrameworkBase.Int32;
      
      function Clone
      (
         this : in out Zone.Kind
      )
      return NetFrameworkBase.System.Security.Policy.EvidenceBase.Kind_Ptr;
      
      function Copy
      (
         this : in out Zone.Kind
      )
      return NetFrameworkBase.System.Object.Kind_Ptr;
      
      function ToString
      (
         this : in out Zone.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function Constructor
      (
         zone : NetFrameworkBase.System.Security.SecurityZone.Kind
      )
      return NetFrameworkBase.System.Security.Policy.Zone.Kind_Ptr;
      
end;
