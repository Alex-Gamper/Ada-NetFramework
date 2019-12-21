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
with NetFrameworkBase.System.Management.Instrumentation.ManagementEntityAttribute;
with NetFrameworkBase.System.Management.Instrumentation.ManagementHostingModel;
with NetFrameworkBase.System.Management.Instrumentation.WmiConfigurationAttribute;
with NetFrameworkBase.System.Management.Instrumentation.ManagementMemberAttribute;
with NetFrameworkBase.System.Management.Instrumentation.ManagementNewInstanceAttribute;
with NetFrameworkBase.System.Management.Instrumentation.ManagementBindAttribute;
with NetFrameworkBase.System.Management.Instrumentation.ManagementCreateAttribute;
with NetFrameworkBase.System.Management.Instrumentation.ManagementRemoveAttribute;
with NetFrameworkBase.System.Management.Instrumentation.ManagementEnumeratorAttribute;
with NetFrameworkBase.System.Management.Instrumentation.ManagementProbeAttribute;
with NetFrameworkBase.System.Management.Instrumentation.ManagementTaskAttribute;
with NetFrameworkBase.System.Management.Instrumentation.ManagementKeyAttribute;
with NetFrameworkBase.System.Management.Instrumentation.ManagementReferenceAttribute;
with NetFrameworkBase.System.Management.Instrumentation.ManagementConfigurationType;
with NetFrameworkBase.System.Management.Instrumentation.ManagementConfigurationAttribute;
with NetFrameworkBase.System.Management.Instrumentation.ManagementCommitAttribute;
with NetFrameworkBase.System.Management.Instrumentation.ManagementNameAttribute;
with NetFrameworkBase.System.Management.Instrumentation.InstrumentationBaseException;
with NetFrameworkBase.System.Management.Instrumentation.InstrumentationException;
with NetFrameworkBase.System.Management.Instrumentation.InstanceNotFoundException;
with NetFrameworkBase.System.Exception_x;
--------------------------------------------------------------------------------
package NetFramework.System.Management.Instrumentation is
   
      --------------------------------------------------------------------------
      subtype ManagementEntityAttribute is NetFrameworkBase.System.Management.Instrumentation.ManagementEntityAttribute.Kind_Ptr;
      subtype ManagementEntityAttribute_Array is NetFrameworkBase.System.Management.Instrumentation.ManagementEntityAttribute.Kind_Array;
      
         function Constructor return NetFrameworkBase.System.Management.Instrumentation.ManagementEntityAttribute.Kind_Ptr renames NetFrameworkBase.System.Management.Instrumentation.ManagementEntityAttribute.Constructor;
         
      --------------------------------------------------------------------------
      subtype ManagementHostingModel is NetFrameworkBase.System.Management.Instrumentation.ManagementHostingModel.Kind;
      
      --------------------------------------------------------------------------
      subtype WmiConfigurationAttribute is NetFrameworkBase.System.Management.Instrumentation.WmiConfigurationAttribute.Kind_Ptr;
      subtype WmiConfigurationAttribute_Array is NetFrameworkBase.System.Management.Instrumentation.WmiConfigurationAttribute.Kind_Array;
      
         function Constructor
         (
            scope : NetFrameworkBase.BSTR
         )
         return NetFrameworkBase.System.Management.Instrumentation.WmiConfigurationAttribute.Kind_Ptr renames NetFrameworkBase.System.Management.Instrumentation.WmiConfigurationAttribute.Constructor; 
         
      --------------------------------------------------------------------------
      subtype ManagementMemberAttribute is NetFrameworkBase.System.Management.Instrumentation.ManagementMemberAttribute.Kind_Ptr;
      subtype ManagementMemberAttribute_Array is NetFrameworkBase.System.Management.Instrumentation.ManagementMemberAttribute.Kind_Array;
      
      --------------------------------------------------------------------------
      subtype ManagementNewInstanceAttribute is NetFrameworkBase.System.Management.Instrumentation.ManagementNewInstanceAttribute.Kind_Ptr;
      subtype ManagementNewInstanceAttribute_Array is NetFrameworkBase.System.Management.Instrumentation.ManagementNewInstanceAttribute.Kind_Array;
      
      --------------------------------------------------------------------------
      subtype ManagementBindAttribute is NetFrameworkBase.System.Management.Instrumentation.ManagementBindAttribute.Kind_Ptr;
      subtype ManagementBindAttribute_Array is NetFrameworkBase.System.Management.Instrumentation.ManagementBindAttribute.Kind_Array;
      
         function Constructor return NetFrameworkBase.System.Management.Instrumentation.ManagementBindAttribute.Kind_Ptr renames NetFrameworkBase.System.Management.Instrumentation.ManagementBindAttribute.Constructor;
         
      --------------------------------------------------------------------------
      subtype ManagementCreateAttribute is NetFrameworkBase.System.Management.Instrumentation.ManagementCreateAttribute.Kind_Ptr;
      subtype ManagementCreateAttribute_Array is NetFrameworkBase.System.Management.Instrumentation.ManagementCreateAttribute.Kind_Array;
      
         function Constructor return NetFrameworkBase.System.Management.Instrumentation.ManagementCreateAttribute.Kind_Ptr renames NetFrameworkBase.System.Management.Instrumentation.ManagementCreateAttribute.Constructor;
         
      --------------------------------------------------------------------------
      subtype ManagementRemoveAttribute is NetFrameworkBase.System.Management.Instrumentation.ManagementRemoveAttribute.Kind_Ptr;
      subtype ManagementRemoveAttribute_Array is NetFrameworkBase.System.Management.Instrumentation.ManagementRemoveAttribute.Kind_Array;
      
         function Constructor return NetFrameworkBase.System.Management.Instrumentation.ManagementRemoveAttribute.Kind_Ptr renames NetFrameworkBase.System.Management.Instrumentation.ManagementRemoveAttribute.Constructor;
         
      --------------------------------------------------------------------------
      subtype ManagementEnumeratorAttribute is NetFrameworkBase.System.Management.Instrumentation.ManagementEnumeratorAttribute.Kind_Ptr;
      subtype ManagementEnumeratorAttribute_Array is NetFrameworkBase.System.Management.Instrumentation.ManagementEnumeratorAttribute.Kind_Array;
      
         function Constructor return NetFrameworkBase.System.Management.Instrumentation.ManagementEnumeratorAttribute.Kind_Ptr renames NetFrameworkBase.System.Management.Instrumentation.ManagementEnumeratorAttribute.Constructor;
         
      --------------------------------------------------------------------------
      subtype ManagementProbeAttribute is NetFrameworkBase.System.Management.Instrumentation.ManagementProbeAttribute.Kind_Ptr;
      subtype ManagementProbeAttribute_Array is NetFrameworkBase.System.Management.Instrumentation.ManagementProbeAttribute.Kind_Array;
      
         function Constructor return NetFrameworkBase.System.Management.Instrumentation.ManagementProbeAttribute.Kind_Ptr renames NetFrameworkBase.System.Management.Instrumentation.ManagementProbeAttribute.Constructor;
         
      --------------------------------------------------------------------------
      subtype ManagementTaskAttribute is NetFrameworkBase.System.Management.Instrumentation.ManagementTaskAttribute.Kind_Ptr;
      subtype ManagementTaskAttribute_Array is NetFrameworkBase.System.Management.Instrumentation.ManagementTaskAttribute.Kind_Array;
      
         function Constructor return NetFrameworkBase.System.Management.Instrumentation.ManagementTaskAttribute.Kind_Ptr renames NetFrameworkBase.System.Management.Instrumentation.ManagementTaskAttribute.Constructor;
         
      --------------------------------------------------------------------------
      subtype ManagementKeyAttribute is NetFrameworkBase.System.Management.Instrumentation.ManagementKeyAttribute.Kind_Ptr;
      subtype ManagementKeyAttribute_Array is NetFrameworkBase.System.Management.Instrumentation.ManagementKeyAttribute.Kind_Array;
      
         function Constructor return NetFrameworkBase.System.Management.Instrumentation.ManagementKeyAttribute.Kind_Ptr renames NetFrameworkBase.System.Management.Instrumentation.ManagementKeyAttribute.Constructor;
         
      --------------------------------------------------------------------------
      subtype ManagementReferenceAttribute is NetFrameworkBase.System.Management.Instrumentation.ManagementReferenceAttribute.Kind_Ptr;
      subtype ManagementReferenceAttribute_Array is NetFrameworkBase.System.Management.Instrumentation.ManagementReferenceAttribute.Kind_Array;
      
         function Constructor return NetFrameworkBase.System.Management.Instrumentation.ManagementReferenceAttribute.Kind_Ptr renames NetFrameworkBase.System.Management.Instrumentation.ManagementReferenceAttribute.Constructor;
         
      --------------------------------------------------------------------------
      subtype ManagementConfigurationType is NetFrameworkBase.System.Management.Instrumentation.ManagementConfigurationType.Kind;
      
      --------------------------------------------------------------------------
      subtype ManagementConfigurationAttribute is NetFrameworkBase.System.Management.Instrumentation.ManagementConfigurationAttribute.Kind_Ptr;
      subtype ManagementConfigurationAttribute_Array is NetFrameworkBase.System.Management.Instrumentation.ManagementConfigurationAttribute.Kind_Array;
      
         function Constructor return NetFrameworkBase.System.Management.Instrumentation.ManagementConfigurationAttribute.Kind_Ptr renames NetFrameworkBase.System.Management.Instrumentation.ManagementConfigurationAttribute.Constructor;
         
      --------------------------------------------------------------------------
      subtype ManagementCommitAttribute is NetFrameworkBase.System.Management.Instrumentation.ManagementCommitAttribute.Kind_Ptr;
      subtype ManagementCommitAttribute_Array is NetFrameworkBase.System.Management.Instrumentation.ManagementCommitAttribute.Kind_Array;
      
         function Constructor return NetFrameworkBase.System.Management.Instrumentation.ManagementCommitAttribute.Kind_Ptr renames NetFrameworkBase.System.Management.Instrumentation.ManagementCommitAttribute.Constructor;
         
      --------------------------------------------------------------------------
      subtype ManagementNameAttribute is NetFrameworkBase.System.Management.Instrumentation.ManagementNameAttribute.Kind_Ptr;
      subtype ManagementNameAttribute_Array is NetFrameworkBase.System.Management.Instrumentation.ManagementNameAttribute.Kind_Array;
      
         function Constructor
         (
            name : NetFrameworkBase.BSTR
         )
         return NetFrameworkBase.System.Management.Instrumentation.ManagementNameAttribute.Kind_Ptr renames NetFrameworkBase.System.Management.Instrumentation.ManagementNameAttribute.Constructor; 
         
      --------------------------------------------------------------------------
      subtype InstrumentationBaseException is NetFrameworkBase.System.Management.Instrumentation.InstrumentationBaseException.Kind_Ptr;
      subtype InstrumentationBaseException_Array is NetFrameworkBase.System.Management.Instrumentation.InstrumentationBaseException.Kind_Array;
      
         function Constructor return NetFrameworkBase.System.Management.Instrumentation.InstrumentationBaseException.Kind_Ptr renames NetFrameworkBase.System.Management.Instrumentation.InstrumentationBaseException.Constructor;
         
         function Constructor
         (
            message : NetFrameworkBase.BSTR
         )
         return NetFrameworkBase.System.Management.Instrumentation.InstrumentationBaseException.Kind_Ptr renames NetFrameworkBase.System.Management.Instrumentation.InstrumentationBaseException.Constructor; 
         
         function Constructor
         (
            message : NetFrameworkBase.BSTR;
            innerException : NetFrameworkBase.System.Exception_x.Kind_Ptr
         )
         return NetFrameworkBase.System.Management.Instrumentation.InstrumentationBaseException.Kind_Ptr renames NetFrameworkBase.System.Management.Instrumentation.InstrumentationBaseException.Constructor; 
         
      --------------------------------------------------------------------------
      subtype InstrumentationException is NetFrameworkBase.System.Management.Instrumentation.InstrumentationException.Kind_Ptr;
      subtype InstrumentationException_Array is NetFrameworkBase.System.Management.Instrumentation.InstrumentationException.Kind_Array;
      
         function Constructor return NetFrameworkBase.System.Management.Instrumentation.InstrumentationException.Kind_Ptr renames NetFrameworkBase.System.Management.Instrumentation.InstrumentationException.Constructor;
         
         function Constructor
         (
            message : NetFrameworkBase.BSTR
         )
         return NetFrameworkBase.System.Management.Instrumentation.InstrumentationException.Kind_Ptr renames NetFrameworkBase.System.Management.Instrumentation.InstrumentationException.Constructor; 
         
         function Constructor
         (
            innerException : NetFrameworkBase.System.Exception_x.Kind_Ptr
         )
         return NetFrameworkBase.System.Management.Instrumentation.InstrumentationException.Kind_Ptr renames NetFrameworkBase.System.Management.Instrumentation.InstrumentationException.Constructor; 
         
         function Constructor
         (
            message : NetFrameworkBase.BSTR;
            innerException : NetFrameworkBase.System.Exception_x.Kind_Ptr
         )
         return NetFrameworkBase.System.Management.Instrumentation.InstrumentationException.Kind_Ptr renames NetFrameworkBase.System.Management.Instrumentation.InstrumentationException.Constructor; 
         
      --------------------------------------------------------------------------
      subtype InstanceNotFoundException is NetFrameworkBase.System.Management.Instrumentation.InstanceNotFoundException.Kind_Ptr;
      subtype InstanceNotFoundException_Array is NetFrameworkBase.System.Management.Instrumentation.InstanceNotFoundException.Kind_Array;
      
         function Constructor return NetFrameworkBase.System.Management.Instrumentation.InstanceNotFoundException.Kind_Ptr renames NetFrameworkBase.System.Management.Instrumentation.InstanceNotFoundException.Constructor;
         
         function Constructor
         (
            message : NetFrameworkBase.BSTR
         )
         return NetFrameworkBase.System.Management.Instrumentation.InstanceNotFoundException.Kind_Ptr renames NetFrameworkBase.System.Management.Instrumentation.InstanceNotFoundException.Constructor; 
         
         function Constructor
         (
            message : NetFrameworkBase.BSTR;
            innerException : NetFrameworkBase.System.Exception_x.Kind_Ptr
         )
         return NetFrameworkBase.System.Management.Instrumentation.InstanceNotFoundException.Kind_Ptr renames NetFrameworkBase.System.Management.Instrumentation.InstanceNotFoundException.Constructor; 
         
   
end;
