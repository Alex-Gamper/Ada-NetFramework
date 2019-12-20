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
limited with NetFrameworkBase.System.Reflection.Assembly;
limited with NetFrameworkBase.System.Type_x;
limited with NetFrameworkBase.System.Reflection.MethodBase;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Runtime.Remoting.SoapServices is
   
   type Kind is new NetFrameworkBase.System.Object.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      procedure PreLoad
      (
         assembly : NetFrameworkBase.System.Reflection.Assembly.Kind_Ptr
      )
      ;
      
      procedure GetInteropFieldTypeAndNameFromXmlElement
      (
         containingType : NetFrameworkBase.System.Type_x.Kind_Ptr; 
         xmlElement : NetFrameworkBase.BSTR; 
         xmlNamespace : NetFrameworkBase.BSTR; 
         type_x : out NetFrameworkBase.System.Type_x.Kind_Ptr; 
         name : out NetFrameworkBase.BSTR
      )
      ;
      
      procedure GetInteropFieldTypeAndNameFromXmlAttribute
      (
         containingType : NetFrameworkBase.System.Type_x.Kind_Ptr; 
         xmlAttribute : NetFrameworkBase.BSTR; 
         xmlNamespace : NetFrameworkBase.BSTR; 
         type_x : out NetFrameworkBase.System.Type_x.Kind_Ptr; 
         name : out NetFrameworkBase.BSTR
      )
      ;
      
      function GetXmlElementForInteropType
      (
         type_x : NetFrameworkBase.System.Type_x.Kind_Ptr; 
         xmlElement : out NetFrameworkBase.BSTR; 
         xmlNamespace : out NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.Boolean;
      
      function GetXmlTypeForInteropType
      (
         type_x : NetFrameworkBase.System.Type_x.Kind_Ptr; 
         xmlType : out NetFrameworkBase.BSTR; 
         xmlTypeNamespace : out NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.Boolean;
      
      function GetXmlNamespaceForMethodCall
      (
         mb : NetFrameworkBase.System.Reflection.MethodBase.Kind_Ptr
      )
      return NetFrameworkBase.BSTR;
      
      function GetXmlNamespaceForMethodResponse
      (
         mb : NetFrameworkBase.System.Reflection.MethodBase.Kind_Ptr
      )
      return NetFrameworkBase.BSTR;
      
      procedure RegisterSoapActionForMethodBase
      (
         mb : NetFrameworkBase.System.Reflection.MethodBase.Kind_Ptr
      )
      ;
      
      procedure RegisterSoapActionForMethodBase
      (
         mb : NetFrameworkBase.System.Reflection.MethodBase.Kind_Ptr; 
         soapAction : NetFrameworkBase.BSTR
      )
      ;
      
      function GetSoapActionFromMethodBase
      (
         mb : NetFrameworkBase.System.Reflection.MethodBase.Kind_Ptr
      )
      return NetFrameworkBase.BSTR;
      
      function XmlNsForClrType
      return NetFrameworkBase.BSTR;
      
      function XmlNsForClrTypeWithAssembly
      return NetFrameworkBase.BSTR;
      
      function XmlNsForClrTypeWithNs
      return NetFrameworkBase.BSTR;
      
      function XmlNsForClrTypeWithNsAndAssembly
      return NetFrameworkBase.BSTR;
      
      function IsClrTypeNamespace
      (
         namespaceString : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.Boolean;
      
      function CodeXmlNamespaceForClrTypeNamespace
      (
         typeNamespace : NetFrameworkBase.BSTR; 
         assemblyName : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.BSTR;
      
      procedure RegisterInteropXmlElement
      (
         xmlElement : NetFrameworkBase.BSTR; 
         xmlNamespace : NetFrameworkBase.BSTR; 
         type_x : NetFrameworkBase.System.Type_x.Kind_Ptr
      )
      ;
      
      procedure RegisterInteropXmlType
      (
         xmlType : NetFrameworkBase.BSTR; 
         xmlTypeNamespace : NetFrameworkBase.BSTR; 
         type_x : NetFrameworkBase.System.Type_x.Kind_Ptr
      )
      ;
      
      procedure PreLoad
      (
         type_x : NetFrameworkBase.System.Type_x.Kind_Ptr
      )
      ;
      
      function GetInteropTypeFromXmlElement
      (
         xmlElement : NetFrameworkBase.BSTR; 
         xmlNamespace : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Type_x.Kind_Ptr;
      
      function GetInteropTypeFromXmlType
      (
         xmlType : NetFrameworkBase.BSTR; 
         xmlTypeNamespace : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Type_x.Kind_Ptr;
      
      function IsSoapActionValidForMethodBase
      (
         soapAction : NetFrameworkBase.BSTR; 
         mb : NetFrameworkBase.System.Reflection.MethodBase.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      
      function GetTypeAndMethodNameFromSoapAction
      (
         soapAction : NetFrameworkBase.BSTR; 
         typeName : out NetFrameworkBase.BSTR; 
         methodName : out NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.Boolean;
      
      function DecodeXmlNamespaceForClrTypeNamespace
      (
         inNamespace : NetFrameworkBase.BSTR; 
         typeNamespace : out NetFrameworkBase.BSTR; 
         assemblyName : out NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.Boolean;
      
end;
