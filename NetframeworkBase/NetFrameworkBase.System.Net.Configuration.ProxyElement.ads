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
with NetFrameworkBase.System.Configuration.ConfigurationElement;
limited with NetFrameworkBase.System.Net.Configuration.ProxyElement.AutoDetectValues;
limited with NetFrameworkBase.System.Uri;
limited with NetFrameworkBase.System.Net.Configuration.ProxyElement.BypassOnLocalValues;
limited with NetFrameworkBase.System.Net.Configuration.ProxyElement.UseSystemDefaultValues;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Net.Configuration.ProxyElement is
   
   type Kind is new NetFrameworkBase.System.Configuration.ConfigurationElement.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function AutoDetect
      (
         this : in out ProxyElement.Kind
      )
      return NetFrameworkBase.System.Net.Configuration.ProxyElement.AutoDetectValues.Kind;
      
      function ScriptLocation
      (
         this : in out ProxyElement.Kind
      )
      return NetFrameworkBase.System.Uri.Kind_Ptr;
      
      function BypassOnLocal
      (
         this : in out ProxyElement.Kind
      )
      return NetFrameworkBase.System.Net.Configuration.ProxyElement.BypassOnLocalValues.Kind;
      
      function ProxyAddress
      (
         this : in out ProxyElement.Kind
      )
      return NetFrameworkBase.System.Uri.Kind_Ptr;
      
      function UseSystemDefault
      (
         this : in out ProxyElement.Kind
      )
      return NetFrameworkBase.System.Net.Configuration.ProxyElement.UseSystemDefaultValues.Kind;
      
      procedure AutoDetect
      (
         this : in out ProxyElement.Kind;
         value : NetFrameworkBase.System.Net.Configuration.ProxyElement.AutoDetectValues.Kind
      );
      
      procedure ScriptLocation
      (
         this : in out ProxyElement.Kind;
         value : NetFrameworkBase.System.Uri.Kind_Ptr
      );
      
      procedure BypassOnLocal
      (
         this : in out ProxyElement.Kind;
         value : NetFrameworkBase.System.Net.Configuration.ProxyElement.BypassOnLocalValues.Kind
      );
      
      procedure ProxyAddress
      (
         this : in out ProxyElement.Kind;
         value : NetFrameworkBase.System.Uri.Kind_Ptr
      );
      
      procedure UseSystemDefault
      (
         this : in out ProxyElement.Kind;
         value : NetFrameworkBase.System.Net.Configuration.ProxyElement.UseSystemDefaultValues.Kind
      );
      
      function Constructor return NetFrameworkBase.System.Net.Configuration.ProxyElement.Kind_Ptr;
      
end;
