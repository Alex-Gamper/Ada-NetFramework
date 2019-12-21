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
with NetFrameworkBase.System.Xml.XPath.IXPathNavigable;
with NetFrameworkBase.System.Xml.XPath.XPathDocument;
with NetFrameworkBase.System.Xml.XPath.XPathException;
with NetFrameworkBase.System.Xml.XPath.XmlSortOrder;
with NetFrameworkBase.System.Xml.XPath.XmlCaseOrder;
with NetFrameworkBase.System.Xml.XPath.XmlDataType;
with NetFrameworkBase.System.Xml.XPath.XPathResultType;
with NetFrameworkBase.System.Xml.XPath.XPathExpression;
with NetFrameworkBase.System.Xml.XPath.XPathItem;
with NetFrameworkBase.System.Xml.XPath.XPathNamespaceScope;
with NetFrameworkBase.System.Xml.XPath.XPathNavigator;
with NetFrameworkBase.System.Xml.XPath.XPathNodeIterator;
with NetFrameworkBase.System.Xml.XPath.XPathNodeType;
with NetFrameworkBase.System.Xml.XmlReader;
with NetFrameworkBase.System.Xml.XmlSpace;
with NetFrameworkBase.System.IO.TextReader;
with NetFrameworkBase.System.IO.Stream;
with NetFrameworkBase.System.Exception_x;
--------------------------------------------------------------------------------
package NetFramework.System.Xml.XPath is
   
      --------------------------------------------------------------------------
      subtype IXPathNavigable is NetFrameworkBase.System.Xml.XPath.IXPathNavigable.Kind_Ptr;
      subtype IXPathNavigable_Array is NetFrameworkBase.System.Xml.XPath.IXPathNavigable.Kind_Array;
      
      --------------------------------------------------------------------------
      subtype XPathDocument is NetFrameworkBase.System.Xml.XPath.XPathDocument.Kind_Ptr;
      subtype XPathDocument_Array is NetFrameworkBase.System.Xml.XPath.XPathDocument.Kind_Array;
      
         function Constructor
         (
            reader : NetFrameworkBase.System.Xml.XmlReader.Kind_Ptr
         )
         return NetFrameworkBase.System.Xml.XPath.XPathDocument.Kind_Ptr renames NetFrameworkBase.System.Xml.XPath.XPathDocument.Constructor; 
         
         function Constructor
         (
            reader : NetFrameworkBase.System.Xml.XmlReader.Kind_Ptr;
            space : NetFrameworkBase.System.Xml.XmlSpace.Kind
         )
         return NetFrameworkBase.System.Xml.XPath.XPathDocument.Kind_Ptr renames NetFrameworkBase.System.Xml.XPath.XPathDocument.Constructor; 
         
         function Constructor
         (
            textReader : NetFrameworkBase.System.IO.TextReader.Kind_Ptr
         )
         return NetFrameworkBase.System.Xml.XPath.XPathDocument.Kind_Ptr renames NetFrameworkBase.System.Xml.XPath.XPathDocument.Constructor; 
         
         function Constructor
         (
            stream : NetFrameworkBase.System.IO.Stream.Kind_Ptr
         )
         return NetFrameworkBase.System.Xml.XPath.XPathDocument.Kind_Ptr renames NetFrameworkBase.System.Xml.XPath.XPathDocument.Constructor; 
         
         function Constructor
         (
            uri : NetFrameworkBase.BSTR
         )
         return NetFrameworkBase.System.Xml.XPath.XPathDocument.Kind_Ptr renames NetFrameworkBase.System.Xml.XPath.XPathDocument.Constructor; 
         
         function Constructor
         (
            uri : NetFrameworkBase.BSTR;
            space : NetFrameworkBase.System.Xml.XmlSpace.Kind
         )
         return NetFrameworkBase.System.Xml.XPath.XPathDocument.Kind_Ptr renames NetFrameworkBase.System.Xml.XPath.XPathDocument.Constructor; 
         
      --------------------------------------------------------------------------
      subtype XPathException is NetFrameworkBase.System.Xml.XPath.XPathException.Kind_Ptr;
      subtype XPathException_Array is NetFrameworkBase.System.Xml.XPath.XPathException.Kind_Array;
      
         function Constructor return NetFrameworkBase.System.Xml.XPath.XPathException.Kind_Ptr renames NetFrameworkBase.System.Xml.XPath.XPathException.Constructor;
         
         function Constructor
         (
            message : NetFrameworkBase.BSTR
         )
         return NetFrameworkBase.System.Xml.XPath.XPathException.Kind_Ptr renames NetFrameworkBase.System.Xml.XPath.XPathException.Constructor; 
         
         function Constructor
         (
            message : NetFrameworkBase.BSTR;
            innerException : NetFrameworkBase.System.Exception_x.Kind_Ptr
         )
         return NetFrameworkBase.System.Xml.XPath.XPathException.Kind_Ptr renames NetFrameworkBase.System.Xml.XPath.XPathException.Constructor; 
         
      --------------------------------------------------------------------------
      subtype XmlSortOrder is NetFrameworkBase.System.Xml.XPath.XmlSortOrder.Kind;
      
      --------------------------------------------------------------------------
      subtype XmlCaseOrder is NetFrameworkBase.System.Xml.XPath.XmlCaseOrder.Kind;
      
      --------------------------------------------------------------------------
      subtype XmlDataType is NetFrameworkBase.System.Xml.XPath.XmlDataType.Kind;
      
      --------------------------------------------------------------------------
      subtype XPathResultType is NetFrameworkBase.System.Xml.XPath.XPathResultType.Kind;
      
      --------------------------------------------------------------------------
      subtype XPathExpression is NetFrameworkBase.System.Xml.XPath.XPathExpression.Kind_Ptr;
      subtype XPathExpression_Array is NetFrameworkBase.System.Xml.XPath.XPathExpression.Kind_Array;
      
      --------------------------------------------------------------------------
      subtype XPathItem is NetFrameworkBase.System.Xml.XPath.XPathItem.Kind_Ptr;
      subtype XPathItem_Array is NetFrameworkBase.System.Xml.XPath.XPathItem.Kind_Array;
      
      --------------------------------------------------------------------------
      subtype XPathNamespaceScope is NetFrameworkBase.System.Xml.XPath.XPathNamespaceScope.Kind;
      
      --------------------------------------------------------------------------
      subtype XPathNavigator is NetFrameworkBase.System.Xml.XPath.XPathNavigator.Kind_Ptr;
      subtype XPathNavigator_Array is NetFrameworkBase.System.Xml.XPath.XPathNavigator.Kind_Array;
      
      --------------------------------------------------------------------------
      subtype XPathNodeIterator is NetFrameworkBase.System.Xml.XPath.XPathNodeIterator.Kind_Ptr;
      subtype XPathNodeIterator_Array is NetFrameworkBase.System.Xml.XPath.XPathNodeIterator.Kind_Array;
      
      --------------------------------------------------------------------------
      subtype XPathNodeType is NetFrameworkBase.System.Xml.XPath.XPathNodeType.Kind;
      
   
end;