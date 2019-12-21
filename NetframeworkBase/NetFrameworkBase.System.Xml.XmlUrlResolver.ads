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
with NetFrameworkBase.System.Xml.XmlResolver;
limited with NetFrameworkBase.System.Net.ICredentials;
limited with NetFrameworkBase.System.Net.IWebProxy;
limited with NetFrameworkBase.System.Net.Cache.RequestCachePolicy;
limited with NetFrameworkBase.System.Uri;
limited with NetFrameworkBase.System.Type_x;
with NetFrameworkBase.System.Object;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Xml.XmlUrlResolver is
   
   type Kind is new NetFrameworkBase.System.Xml.XmlResolver.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      procedure Credentials
      (
         this : in out XmlUrlResolver.Kind;
         value : NetFrameworkBase.System.Net.ICredentials.Kind_Ptr
      );
      
      procedure Proxy
      (
         this : in out XmlUrlResolver.Kind;
         value : NetFrameworkBase.System.Net.IWebProxy.Kind_Ptr
      );
      
      procedure CachePolicy
      (
         this : in out XmlUrlResolver.Kind;
         value : NetFrameworkBase.System.Net.Cache.RequestCachePolicy.Kind_Ptr
      );
      
      function GetEntity
      (
         this : in out XmlUrlResolver.Kind;
         absoluteUri : NetFrameworkBase.System.Uri.Kind_Ptr; 
         role : NetFrameworkBase.BSTR; 
         ofObjectToReturn : NetFrameworkBase.System.Type_x.Kind_Ptr
      )
      return NetFrameworkBase.System.Object.Kind_Ptr;
      
      function ResolveUri
      (
         this : in out XmlUrlResolver.Kind;
         baseUri : NetFrameworkBase.System.Uri.Kind_Ptr; 
         relativeUri : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Uri.Kind_Ptr;
      
      function Constructor return NetFrameworkBase.System.Xml.XmlUrlResolver.Kind_Ptr;
      
end;
