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
with NetFrameworkBase.System.Attribute;
limited with NetFrameworkBase.System.Type_x;
limited with NetFrameworkBase.System.Runtime.Remoting.ObjRef;
with NetFrameworkBase.System.Object;
limited with NetFrameworkBase.System.Runtime.Remoting.Contexts.Context;
limited with NetFrameworkBase.System.Runtime.Remoting.Activation.IConstructionCallMessage;
limited with NetFrameworkBase.System.MarshalByRefObject;
limited with NetFrameworkBase.System.Runtime.Remoting.Proxies.RealProxy;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Runtime.Remoting.Proxies.ProxyAttribute is
   
   type Kind is new NetFrameworkBase.System.Attribute.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function CreateInstance
      (
         this : in out ProxyAttribute.Kind;
         serverType : NetFrameworkBase.System.Type_x.Kind_Ptr
      )
      return NetFrameworkBase.System.MarshalByRefObject.Kind_Ptr;
      
      function CreateProxy
      (
         this : in out ProxyAttribute.Kind;
         objRef : NetFrameworkBase.System.Runtime.Remoting.ObjRef.Kind_Ptr; 
         serverType : NetFrameworkBase.System.Type_x.Kind_Ptr; 
         serverObject : NetFrameworkBase.System.Object.Kind_Ptr; 
         serverContext : NetFrameworkBase.System.Runtime.Remoting.Contexts.Context.Kind_Ptr
      )
      return NetFrameworkBase.System.Runtime.Remoting.Proxies.RealProxy.Kind_Ptr;
      
      function IsContextOK
      (
         this : in out ProxyAttribute.Kind;
         ctx : NetFrameworkBase.System.Runtime.Remoting.Contexts.Context.Kind_Ptr; 
         msg : NetFrameworkBase.System.Runtime.Remoting.Activation.IConstructionCallMessage.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      
      procedure GetPropertiesForNewContext
      (
         this : in out ProxyAttribute.Kind;
         msg : NetFrameworkBase.System.Runtime.Remoting.Activation.IConstructionCallMessage.Kind_Ptr
      );
      
      function Constructor return NetFrameworkBase.System.Runtime.Remoting.Proxies.ProxyAttribute.Kind_Ptr;
      
end;
