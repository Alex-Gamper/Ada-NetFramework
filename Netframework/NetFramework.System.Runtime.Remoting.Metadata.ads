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
with NetFrameworkBase.System.Runtime.Remoting.Metadata.SoapOption;
with NetFrameworkBase.System.Runtime.Remoting.Metadata.XmlFieldOrderOption;
with NetFrameworkBase.System.Runtime.Remoting.Metadata.SoapTypeAttribute;
with NetFrameworkBase.System.Runtime.Remoting.Metadata.SoapMethodAttribute;
with NetFrameworkBase.System.Runtime.Remoting.Metadata.SoapFieldAttribute;
with NetFrameworkBase.System.Runtime.Remoting.Metadata.SoapParameterAttribute;
with NetFrameworkBase.System.Runtime.Remoting.Metadata.SoapAttribute;
--------------------------------------------------------------------------------
package NetFramework.System.Runtime.Remoting.Metadata is
   
      subtype SoapOption is NetFrameworkBase.System.Runtime.Remoting.Metadata.SoapOption.Kind;
      
      subtype XmlFieldOrderOption is NetFrameworkBase.System.Runtime.Remoting.Metadata.XmlFieldOrderOption.Kind;
      
      subtype SoapTypeAttribute is NetFrameworkBase.System.Runtime.Remoting.Metadata.SoapTypeAttribute.Kind_Ptr;
      subtype SoapTypeAttribute_Array is NetFrameworkBase.System.Runtime.Remoting.Metadata.SoapTypeAttribute.Kind_Array;
      
         function Constructor return NetFrameworkBase.System.Runtime.Remoting.Metadata.SoapTypeAttribute.Kind_Ptr renames NetFrameworkBase.System.Runtime.Remoting.Metadata.SoapTypeAttribute.Constructor;
         
      subtype SoapMethodAttribute is NetFrameworkBase.System.Runtime.Remoting.Metadata.SoapMethodAttribute.Kind_Ptr;
      subtype SoapMethodAttribute_Array is NetFrameworkBase.System.Runtime.Remoting.Metadata.SoapMethodAttribute.Kind_Array;
      
         function Constructor return NetFrameworkBase.System.Runtime.Remoting.Metadata.SoapMethodAttribute.Kind_Ptr renames NetFrameworkBase.System.Runtime.Remoting.Metadata.SoapMethodAttribute.Constructor;
         
      subtype SoapFieldAttribute is NetFrameworkBase.System.Runtime.Remoting.Metadata.SoapFieldAttribute.Kind_Ptr;
      subtype SoapFieldAttribute_Array is NetFrameworkBase.System.Runtime.Remoting.Metadata.SoapFieldAttribute.Kind_Array;
      
         function Constructor return NetFrameworkBase.System.Runtime.Remoting.Metadata.SoapFieldAttribute.Kind_Ptr renames NetFrameworkBase.System.Runtime.Remoting.Metadata.SoapFieldAttribute.Constructor;
         
      subtype SoapParameterAttribute is NetFrameworkBase.System.Runtime.Remoting.Metadata.SoapParameterAttribute.Kind_Ptr;
      subtype SoapParameterAttribute_Array is NetFrameworkBase.System.Runtime.Remoting.Metadata.SoapParameterAttribute.Kind_Array;
      
         function Constructor return NetFrameworkBase.System.Runtime.Remoting.Metadata.SoapParameterAttribute.Kind_Ptr renames NetFrameworkBase.System.Runtime.Remoting.Metadata.SoapParameterAttribute.Constructor;
         
      subtype SoapAttribute is NetFrameworkBase.System.Runtime.Remoting.Metadata.SoapAttribute.Kind_Ptr;
      subtype SoapAttribute_Array is NetFrameworkBase.System.Runtime.Remoting.Metadata.SoapAttribute.Kind_Array;
      
         function Constructor return NetFrameworkBase.System.Runtime.Remoting.Metadata.SoapAttribute.Kind_Ptr renames NetFrameworkBase.System.Runtime.Remoting.Metadata.SoapAttribute.Constructor;
         
   
end;
