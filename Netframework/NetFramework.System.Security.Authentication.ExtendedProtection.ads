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
with NetFrameworkBase.System.Security.Authentication.ExtendedProtection.ChannelBinding;
with NetFrameworkBase.System.Security.Authentication.ExtendedProtection.ChannelBindingKind;
with NetFrameworkBase.System.Security.Authentication.ExtendedProtection.ExtendedProtectionPolicy;
with NetFrameworkBase.System.Security.Authentication.ExtendedProtection.ExtendedProtectionPolicyTypeConverter;
with NetFrameworkBase.System.Security.Authentication.ExtendedProtection.PolicyEnforcement;
with NetFrameworkBase.System.Security.Authentication.ExtendedProtection.ProtectionScenario;
with NetFrameworkBase.System.Security.Authentication.ExtendedProtection.ServiceNameCollection;
with NetFrameworkBase.System.Security.Authentication.ExtendedProtection.TokenBindingType;
with NetFrameworkBase.System.Security.Authentication.ExtendedProtection.TokenBinding;
with NetFrameworkBase.System.Collections.ICollection;
--------------------------------------------------------------------------------
package NetFramework.System.Security.Authentication.ExtendedProtection is
   
      --------------------------------------------------------------------------
      subtype ChannelBinding is NetFrameworkBase.System.Security.Authentication.ExtendedProtection.ChannelBinding.Kind_Ptr;
      subtype ChannelBinding_Array is NetFrameworkBase.System.Security.Authentication.ExtendedProtection.ChannelBinding.Kind_Array;
      
      --------------------------------------------------------------------------
      subtype ChannelBindingKind is NetFrameworkBase.System.Security.Authentication.ExtendedProtection.ChannelBindingKind.Kind;
      
      --------------------------------------------------------------------------
      subtype ExtendedProtectionPolicy is NetFrameworkBase.System.Security.Authentication.ExtendedProtection.ExtendedProtectionPolicy.Kind_Ptr;
      subtype ExtendedProtectionPolicy_Array is NetFrameworkBase.System.Security.Authentication.ExtendedProtection.ExtendedProtectionPolicy.Kind_Array;
      
         function Constructor
         (
            policyEnforcement : NetFrameworkBase.System.Security.Authentication.ExtendedProtection.PolicyEnforcement.Kind;
            protectionScenario : NetFrameworkBase.System.Security.Authentication.ExtendedProtection.ProtectionScenario.Kind;
            customServiceNames : NetFrameworkBase.System.Security.Authentication.ExtendedProtection.ServiceNameCollection.Kind_Ptr
         )
         return NetFrameworkBase.System.Security.Authentication.ExtendedProtection.ExtendedProtectionPolicy.Kind_Ptr renames NetFrameworkBase.System.Security.Authentication.ExtendedProtection.ExtendedProtectionPolicy.Constructor; 
         
         function Constructor
         (
            policyEnforcement : NetFrameworkBase.System.Security.Authentication.ExtendedProtection.PolicyEnforcement.Kind;
            protectionScenario : NetFrameworkBase.System.Security.Authentication.ExtendedProtection.ProtectionScenario.Kind;
            customServiceNames : NetFrameworkBase.System.Collections.ICollection.Kind_Ptr
         )
         return NetFrameworkBase.System.Security.Authentication.ExtendedProtection.ExtendedProtectionPolicy.Kind_Ptr renames NetFrameworkBase.System.Security.Authentication.ExtendedProtection.ExtendedProtectionPolicy.Constructor; 
         
         function Constructor
         (
            policyEnforcement : NetFrameworkBase.System.Security.Authentication.ExtendedProtection.PolicyEnforcement.Kind;
            customChannelBinding : NetFrameworkBase.System.Security.Authentication.ExtendedProtection.ChannelBinding.Kind_Ptr
         )
         return NetFrameworkBase.System.Security.Authentication.ExtendedProtection.ExtendedProtectionPolicy.Kind_Ptr renames NetFrameworkBase.System.Security.Authentication.ExtendedProtection.ExtendedProtectionPolicy.Constructor; 
         
         function Constructor
         (
            policyEnforcement : NetFrameworkBase.System.Security.Authentication.ExtendedProtection.PolicyEnforcement.Kind
         )
         return NetFrameworkBase.System.Security.Authentication.ExtendedProtection.ExtendedProtectionPolicy.Kind_Ptr renames NetFrameworkBase.System.Security.Authentication.ExtendedProtection.ExtendedProtectionPolicy.Constructor; 
         
      --------------------------------------------------------------------------
      subtype ExtendedProtectionPolicyTypeConverter is NetFrameworkBase.System.Security.Authentication.ExtendedProtection.ExtendedProtectionPolicyTypeConverter.Kind_Ptr;
      subtype ExtendedProtectionPolicyTypeConverter_Array is NetFrameworkBase.System.Security.Authentication.ExtendedProtection.ExtendedProtectionPolicyTypeConverter.Kind_Array;
      
         function Constructor return NetFrameworkBase.System.Security.Authentication.ExtendedProtection.ExtendedProtectionPolicyTypeConverter.Kind_Ptr renames NetFrameworkBase.System.Security.Authentication.ExtendedProtection.ExtendedProtectionPolicyTypeConverter.Constructor;
         
      --------------------------------------------------------------------------
      subtype PolicyEnforcement is NetFrameworkBase.System.Security.Authentication.ExtendedProtection.PolicyEnforcement.Kind;
      
      --------------------------------------------------------------------------
      subtype ProtectionScenario is NetFrameworkBase.System.Security.Authentication.ExtendedProtection.ProtectionScenario.Kind;
      
      --------------------------------------------------------------------------
      subtype ServiceNameCollection is NetFrameworkBase.System.Security.Authentication.ExtendedProtection.ServiceNameCollection.Kind_Ptr;
      subtype ServiceNameCollection_Array is NetFrameworkBase.System.Security.Authentication.ExtendedProtection.ServiceNameCollection.Kind_Array;
      
         function Constructor
         (
            items : NetFrameworkBase.System.Collections.ICollection.Kind_Ptr
         )
         return NetFrameworkBase.System.Security.Authentication.ExtendedProtection.ServiceNameCollection.Kind_Ptr renames NetFrameworkBase.System.Security.Authentication.ExtendedProtection.ServiceNameCollection.Constructor; 
         
      --------------------------------------------------------------------------
      subtype TokenBindingType is NetFrameworkBase.System.Security.Authentication.ExtendedProtection.TokenBindingType.Kind;
      
      --------------------------------------------------------------------------
      subtype TokenBinding is NetFrameworkBase.System.Security.Authentication.ExtendedProtection.TokenBinding.Kind_Ptr;
      subtype TokenBinding_Array is NetFrameworkBase.System.Security.Authentication.ExtendedProtection.TokenBinding.Kind_Array;
      
   
end;