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
limited with NetFrameworkBase.System.Xml.XmlResolver;
limited with NetFrameworkBase.System.Security.Cryptography.HashAlgorithm;
limited with NetFrameworkBase.System.Xml.XmlElement;
limited with NetFrameworkBase.System.Xml.XmlNodeList;
limited with NetFrameworkBase.System.Type_x;
limited with NetFrameworkBase.System.Collections.Hashtable;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Security.Cryptography.Xml.Transform is
   
   type Kind is new NetFrameworkBase.System.Object.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function Algorithm
      (
         this : in out Transform.Kind
      )
      return NetFrameworkBase.BSTR;
      
      procedure Algorithm
      (
         this : in out Transform.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      procedure Resolver
      (
         this : in out Transform.Kind;
         value : NetFrameworkBase.System.Xml.XmlResolver.Kind_Ptr
      );
      
      function GetDigestedOutput
      (
         this : in out Transform.Kind;
         hash : NetFrameworkBase.System.Security.Cryptography.HashAlgorithm.Kind_Ptr
      )
      return NetFrameworkBase.Byte_Array;
      
      function Context
      (
         this : in out Transform.Kind
      )
      return NetFrameworkBase.System.Xml.XmlElement.Kind_Ptr;
      
      procedure Context
      (
         this : in out Transform.Kind;
         value : NetFrameworkBase.System.Xml.XmlElement.Kind_Ptr
      );
      
      function InputTypes
      (
         this : in out Transform.Kind
      )
      return NetFrameworkBase.System.Type_x.Kind_Array;
      
      function OutputTypes
      (
         this : in out Transform.Kind
      )
      return NetFrameworkBase.System.Type_x.Kind_Array;
      
      function GetXml
      (
         this : in out Transform.Kind
      )
      return NetFrameworkBase.System.Xml.XmlElement.Kind_Ptr;
      
      procedure LoadInnerXml
      (
         this : in out Transform.Kind;
         nodeList : NetFrameworkBase.System.Xml.XmlNodeList.Kind_Ptr
      );
      
      procedure LoadInput
      (
         this : in out Transform.Kind;
         obj : NetFrameworkBase.System.Object.Kind_Ptr
      );
      
      function GetOutput
      (
         this : in out Transform.Kind
      )
      return NetFrameworkBase.System.Object.Kind_Ptr;
      
      function GetOutput
      (
         this : in out Transform.Kind;
         type_x : NetFrameworkBase.System.Type_x.Kind_Ptr
      )
      return NetFrameworkBase.System.Object.Kind_Ptr;
      
      function PropagatedNamespaces
      (
         this : in out Transform.Kind
      )
      return NetFrameworkBase.System.Collections.Hashtable.Kind_Ptr;
      
end;