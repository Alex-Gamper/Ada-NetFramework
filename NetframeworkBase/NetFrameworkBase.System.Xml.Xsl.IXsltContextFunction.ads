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
limited with NetFrameworkBase.System.Xml.Xsl.XsltContext;
limited with NetFrameworkBase.System.Object;
limited with NetFrameworkBase.System.Xml.XPath.XPathNavigator;
limited with NetFrameworkBase.System.Xml.XPath.XPathResultType;
with NetFrameworkWin32;
with NetFrameworkAdaRuntime;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Xml.Xsl.IXsltContextFunction is
   
   type Kind is interface and NetFrameworkWin32.IUnknown;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array (Natural range <>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function get_Minargs
      (
         this : in out IXsltContextFunction.Kind;
         RetVal : access NetFrameworkBase.Int32
      ) return HResult is abstract;
      
      function get_Maxargs
      (
         this : in out IXsltContextFunction.Kind;
         RetVal : access NetFrameworkBase.Int32
      ) return HResult is abstract;
      
      function get_ReturnType
      (
         this : in out IXsltContextFunction.Kind;
         RetVal : access NetFrameworkBase.System.Xml.XPath.XPathResultType.Kind
      ) return HResult is abstract;
      
      function get_ArgTypes
      (
         this : in out IXsltContextFunction.Kind;
         RetVal : access NetFrameworkBase.System.Xml.XPath.XPathResultType.Kind_Array
      ) return HResult is abstract;
      
      function Invoke
      (
         this : in out IXsltContextFunction.Kind;
         xsltContext : NetFrameworkBase.System.Xml.Xsl.XsltContext.Kind_Ptr;
         args : NetFrameworkBase.System.Object.Kind_Array;
         docContext : NetFrameworkBase.System.Xml.XPath.XPathNavigator.Kind_Ptr;
         RetVal : access NetFrameworkBase.System.Object.Kind_Ptr
      ) return HResult is abstract;
      
   private
   
      This_AssemblyFile : constant Standard.Wide_String := "C:\Windows\Microsoft.NET\Framework64\v4.0.30319\System.Xml.dll";
      This_AssemblyName : constant Standard.Wide_String := "System.Xml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089";
      This_TypeName     : constant Standard.Wide_String := "System.Xml.Xsl.IXsltContextFunction";
   
end;