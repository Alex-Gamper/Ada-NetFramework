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
limited with NetFrameworkBase.System.Xml.Xsl.Runtime.XmlQueryRuntime;
limited with NetFrameworkBase.System.Decimal;
limited with NetFrameworkBase.System.Xml.XmlQualifiedName;
limited with NetFrameworkBase.System.TimeSpan;
limited with NetFrameworkBase.System.Xml.Schema.XmlAtomicValue;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Xml.Xsl.Runtime.XmlILStorageConverter is
   
   type Kind is new NetFrameworkBase.System.Object.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function StringToAtomicValue
      (
         value : NetFrameworkBase.BSTR; 
         index : NetFrameworkBase.Int32; 
         runtime : NetFrameworkBase.System.Xml.Xsl.Runtime.XmlQueryRuntime.Kind_Ptr
      )
      return NetFrameworkBase.System.Xml.Schema.XmlAtomicValue.Kind_Ptr;
      
      function DecimalToAtomicValue
      (
         value : NetFrameworkBase.System.Decimal.Kind_Ptr; 
         index : NetFrameworkBase.Int32; 
         runtime : NetFrameworkBase.System.Xml.Xsl.Runtime.XmlQueryRuntime.Kind_Ptr
      )
      return NetFrameworkBase.System.Xml.Schema.XmlAtomicValue.Kind_Ptr;
      
      function Int64ToAtomicValue
      (
         value : NetFrameworkBase.Int64; 
         index : NetFrameworkBase.Int32; 
         runtime : NetFrameworkBase.System.Xml.Xsl.Runtime.XmlQueryRuntime.Kind_Ptr
      )
      return NetFrameworkBase.System.Xml.Schema.XmlAtomicValue.Kind_Ptr;
      
      function Int32ToAtomicValue
      (
         value : NetFrameworkBase.Int32; 
         index : NetFrameworkBase.Int32; 
         runtime : NetFrameworkBase.System.Xml.Xsl.Runtime.XmlQueryRuntime.Kind_Ptr
      )
      return NetFrameworkBase.System.Xml.Schema.XmlAtomicValue.Kind_Ptr;
      
      function BooleanToAtomicValue
      (
         value : NetFrameworkBase.Boolean; 
         index : NetFrameworkBase.Int32; 
         runtime : NetFrameworkBase.System.Xml.Xsl.Runtime.XmlQueryRuntime.Kind_Ptr
      )
      return NetFrameworkBase.System.Xml.Schema.XmlAtomicValue.Kind_Ptr;
      
      function DoubleToAtomicValue
      (
         value : NetFrameworkBase.Double; 
         index : NetFrameworkBase.Int32; 
         runtime : NetFrameworkBase.System.Xml.Xsl.Runtime.XmlQueryRuntime.Kind_Ptr
      )
      return NetFrameworkBase.System.Xml.Schema.XmlAtomicValue.Kind_Ptr;
      
      function SingleToAtomicValue
      (
         value : NetFrameworkBase.Single; 
         index : NetFrameworkBase.Int32; 
         runtime : NetFrameworkBase.System.Xml.Xsl.Runtime.XmlQueryRuntime.Kind_Ptr
      )
      return NetFrameworkBase.System.Xml.Schema.XmlAtomicValue.Kind_Ptr;
      
      function DateTimeToAtomicValue
      (
         value : NetFrameworkBase.Date; 
         index : NetFrameworkBase.Int32; 
         runtime : NetFrameworkBase.System.Xml.Xsl.Runtime.XmlQueryRuntime.Kind_Ptr
      )
      return NetFrameworkBase.System.Xml.Schema.XmlAtomicValue.Kind_Ptr;
      
      function XmlQualifiedNameToAtomicValue
      (
         value : NetFrameworkBase.System.Xml.XmlQualifiedName.Kind_Ptr; 
         index : NetFrameworkBase.Int32; 
         runtime : NetFrameworkBase.System.Xml.Xsl.Runtime.XmlQueryRuntime.Kind_Ptr
      )
      return NetFrameworkBase.System.Xml.Schema.XmlAtomicValue.Kind_Ptr;
      
      function TimeSpanToAtomicValue
      (
         value : NetFrameworkBase.System.TimeSpan.Kind_Ptr; 
         index : NetFrameworkBase.Int32; 
         runtime : NetFrameworkBase.System.Xml.Xsl.Runtime.XmlQueryRuntime.Kind_Ptr
      )
      return NetFrameworkBase.System.Xml.Schema.XmlAtomicValue.Kind_Ptr;
      
      function BytesToAtomicValue
      (
         value : NetFrameworkBase.Byte_Array; 
         index : NetFrameworkBase.Int32; 
         runtime : NetFrameworkBase.System.Xml.Xsl.Runtime.XmlQueryRuntime.Kind_Ptr
      )
      return NetFrameworkBase.System.Xml.Schema.XmlAtomicValue.Kind_Ptr;
      
end;