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
with NetFrameworkBase.System.Runtime.Versioning.ComponentGuaranteesOptions;
with NetFrameworkBase.System.Runtime.Versioning.ComponentGuaranteesAttribute;
with NetFrameworkBase.System.Runtime.Versioning.ResourceConsumptionAttribute;
with NetFrameworkBase.System.Runtime.Versioning.ResourceExposureAttribute;
with NetFrameworkBase.System.Runtime.Versioning.ResourceScope;
with NetFrameworkBase.System.Runtime.Versioning.VersioningHelper;
with NetFrameworkBase.System.Runtime.Versioning.TargetFrameworkAttribute;
with NetFrameworkBase.System.Runtime.Versioning.CompatibilitySwitch;
with NetFrameworkBase.System.Runtime.Versioning.FrameworkName;
with NetFrameworkBase.System.Version;
--------------------------------------------------------------------------------
package NetFramework.System.Runtime.Versioning is
   
      --------------------------------------------------------------------------
      subtype ComponentGuaranteesOptions is NetFrameworkBase.System.Runtime.Versioning.ComponentGuaranteesOptions.Kind;
      
      --------------------------------------------------------------------------
      subtype ComponentGuaranteesAttribute is NetFrameworkBase.System.Runtime.Versioning.ComponentGuaranteesAttribute.Kind_Ptr;
      subtype ComponentGuaranteesAttribute_Array is NetFrameworkBase.System.Runtime.Versioning.ComponentGuaranteesAttribute.Kind_Array;
      
         function Constructor
         (
            guarantees : NetFrameworkBase.System.Runtime.Versioning.ComponentGuaranteesOptions.Kind
         )
         return NetFrameworkBase.System.Runtime.Versioning.ComponentGuaranteesAttribute.Kind_Ptr renames NetFrameworkBase.System.Runtime.Versioning.ComponentGuaranteesAttribute.Constructor; 
         
      --------------------------------------------------------------------------
      subtype ResourceConsumptionAttribute is NetFrameworkBase.System.Runtime.Versioning.ResourceConsumptionAttribute.Kind_Ptr;
      subtype ResourceConsumptionAttribute_Array is NetFrameworkBase.System.Runtime.Versioning.ResourceConsumptionAttribute.Kind_Array;
      
         function Constructor
         (
            resourceScope : NetFrameworkBase.System.Runtime.Versioning.ResourceScope.Kind
         )
         return NetFrameworkBase.System.Runtime.Versioning.ResourceConsumptionAttribute.Kind_Ptr renames NetFrameworkBase.System.Runtime.Versioning.ResourceConsumptionAttribute.Constructor; 
         
         function Constructor
         (
            resourceScope : NetFrameworkBase.System.Runtime.Versioning.ResourceScope.Kind;
            consumptionScope : NetFrameworkBase.System.Runtime.Versioning.ResourceScope.Kind
         )
         return NetFrameworkBase.System.Runtime.Versioning.ResourceConsumptionAttribute.Kind_Ptr renames NetFrameworkBase.System.Runtime.Versioning.ResourceConsumptionAttribute.Constructor; 
         
      --------------------------------------------------------------------------
      subtype ResourceExposureAttribute is NetFrameworkBase.System.Runtime.Versioning.ResourceExposureAttribute.Kind_Ptr;
      subtype ResourceExposureAttribute_Array is NetFrameworkBase.System.Runtime.Versioning.ResourceExposureAttribute.Kind_Array;
      
         function Constructor
         (
            exposureLevel : NetFrameworkBase.System.Runtime.Versioning.ResourceScope.Kind
         )
         return NetFrameworkBase.System.Runtime.Versioning.ResourceExposureAttribute.Kind_Ptr renames NetFrameworkBase.System.Runtime.Versioning.ResourceExposureAttribute.Constructor; 
         
      --------------------------------------------------------------------------
      subtype ResourceScope is NetFrameworkBase.System.Runtime.Versioning.ResourceScope.Kind;
      
      --------------------------------------------------------------------------
      subtype VersioningHelper is NetFrameworkBase.System.Runtime.Versioning.VersioningHelper.Kind_Ptr;
      subtype VersioningHelper_Array is NetFrameworkBase.System.Runtime.Versioning.VersioningHelper.Kind_Array;
      
      --------------------------------------------------------------------------
      subtype TargetFrameworkAttribute is NetFrameworkBase.System.Runtime.Versioning.TargetFrameworkAttribute.Kind_Ptr;
      subtype TargetFrameworkAttribute_Array is NetFrameworkBase.System.Runtime.Versioning.TargetFrameworkAttribute.Kind_Array;
      
         function Constructor
         (
            frameworkName : NetFrameworkBase.BSTR
         )
         return NetFrameworkBase.System.Runtime.Versioning.TargetFrameworkAttribute.Kind_Ptr renames NetFrameworkBase.System.Runtime.Versioning.TargetFrameworkAttribute.Constructor; 
         
      --------------------------------------------------------------------------
      subtype CompatibilitySwitch is NetFrameworkBase.System.Runtime.Versioning.CompatibilitySwitch.Kind_Ptr;
      subtype CompatibilitySwitch_Array is NetFrameworkBase.System.Runtime.Versioning.CompatibilitySwitch.Kind_Array;
      
      --------------------------------------------------------------------------
      subtype FrameworkName is NetFrameworkBase.System.Runtime.Versioning.FrameworkName.Kind_Ptr;
      subtype FrameworkName_Array is NetFrameworkBase.System.Runtime.Versioning.FrameworkName.Kind_Array;
      
         function Constructor
         (
            identifier : NetFrameworkBase.BSTR;
            version : NetFrameworkBase.System.Version.Kind_Ptr
         )
         return NetFrameworkBase.System.Runtime.Versioning.FrameworkName.Kind_Ptr renames NetFrameworkBase.System.Runtime.Versioning.FrameworkName.Constructor; 
         
         function Constructor
         (
            identifier : NetFrameworkBase.BSTR;
            version : NetFrameworkBase.System.Version.Kind_Ptr;
            profile : NetFrameworkBase.BSTR
         )
         return NetFrameworkBase.System.Runtime.Versioning.FrameworkName.Kind_Ptr renames NetFrameworkBase.System.Runtime.Versioning.FrameworkName.Constructor; 
         
         function Constructor
         (
            frameworkName : NetFrameworkBase.BSTR
         )
         return NetFrameworkBase.System.Runtime.Versioning.FrameworkName.Kind_Ptr renames NetFrameworkBase.System.Runtime.Versioning.FrameworkName.Constructor; 
         
   
end;