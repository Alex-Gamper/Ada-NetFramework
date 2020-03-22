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
with NetFrameworkBase.System.ComponentModel.AsyncCompletedEventArgs;
limited with NetFrameworkBase.System.ApplicationIdentity;
limited with NetFrameworkBase.System.Version;
limited with NetFrameworkBase.System.Uri;
limited with NetFrameworkBase.System.Xml.XmlReader;
limited with NetFrameworkBase.System.ActivationContext;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Deployment.Application.GetManifestCompletedEventArgs is
   
   type Kind is new NetFrameworkBase.System.ComponentModel.AsyncCompletedEventArgs.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function ApplicationIdentity
      (
         this : in out GetManifestCompletedEventArgs.Kind
      )
      return NetFrameworkBase.System.ApplicationIdentity.Kind_Ptr;
      
      function Version
      (
         this : in out GetManifestCompletedEventArgs.Kind
      )
      return NetFrameworkBase.System.Version.Kind_Ptr;
      
      function IsCached
      (
         this : in out GetManifestCompletedEventArgs.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function ProductName
      (
         this : in out GetManifestCompletedEventArgs.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function SupportUri
      (
         this : in out GetManifestCompletedEventArgs.Kind
      )
      return NetFrameworkBase.System.Uri.Kind_Ptr;
      
      function LogFilePath
      (
         this : in out GetManifestCompletedEventArgs.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function DeploymentManifest
      (
         this : in out GetManifestCompletedEventArgs.Kind
      )
      return NetFrameworkBase.System.Xml.XmlReader.Kind_Ptr;
      
      function ApplicationManifest
      (
         this : in out GetManifestCompletedEventArgs.Kind
      )
      return NetFrameworkBase.System.Xml.XmlReader.Kind_Ptr;
      
      function ActivationContext
      (
         this : in out GetManifestCompletedEventArgs.Kind
      )
      return NetFrameworkBase.System.ActivationContext.Kind_Ptr;
      
      function SubscriptionIdentity
      (
         this : in out GetManifestCompletedEventArgs.Kind
      )
      return NetFrameworkBase.BSTR;
      
end;