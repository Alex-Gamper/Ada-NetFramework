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
limited with NetFrameworkBase.System.Runtime.Remoting.Activation.IConstructionCallMessage;
limited with NetFrameworkBase.System.Type_x;
limited with NetFrameworkBase.System.Runtime.Serialization.SerializationInfo;
limited with NetFrameworkBase.System.Runtime.Serialization.StreamingContext;
limited with NetFrameworkBase.System.Guid;
limited with NetFrameworkBase.System.Runtime.Remoting.Messaging.IMessage;
limited with NetFrameworkBase.System.Runtime.Remoting.Activation.IConstructionReturnMessage;
limited with NetFrameworkBase.System.Runtime.Remoting.ObjRef;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Runtime.Remoting.Proxies.RealProxy is
   
   type Kind is new NetFrameworkBase.System.Object.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function GetCOMIUnknown
      (
         this : in out RealProxy.Kind;
         fIsMarshalled : NetFrameworkBase.Boolean
      )
      return NetFrameworkBase.IntPtr;
      
      function InitializeServerObject
      (
         this : in out RealProxy.Kind;
         ctorMsg : NetFrameworkBase.System.Runtime.Remoting.Activation.IConstructionCallMessage.Kind_Ptr
      )
      return NetFrameworkBase.System.Runtime.Remoting.Activation.IConstructionReturnMessage.Kind_Ptr;
      
      function CreateObjRef
      (
         this : in out RealProxy.Kind;
         requestedType : NetFrameworkBase.System.Type_x.Kind_Ptr
      )
      return NetFrameworkBase.System.Runtime.Remoting.ObjRef.Kind_Ptr;
      
      procedure GetObjectData
      (
         this : in out RealProxy.Kind;
         info : NetFrameworkBase.System.Runtime.Serialization.SerializationInfo.Kind_Ptr; 
         context : NetFrameworkBase.System.Runtime.Serialization.StreamingContext.Kind_Ptr
      );
      
      procedure SetCOMIUnknown
      (
         this : in out RealProxy.Kind;
         i : NetFrameworkBase.IntPtr
      );
      
      function SupportsInterface
      (
         this : in out RealProxy.Kind;
         iid : NetFrameworkBase.System.Guid.Kind_Ptr
      )
      return NetFrameworkBase.IntPtr;
      
      function GetTransparentProxy
      (
         this : in out RealProxy.Kind
      )
      return NetFrameworkBase.System.Object.Kind_Ptr;
      
      procedure SetStubData
      (
         rp : NetFrameworkBase.System.Runtime.Remoting.Proxies.RealProxy.Kind_Ptr; 
         stubData : NetFrameworkBase.System.Object.Kind_Ptr
      )
      ;
      
      function GetStubData
      (
         rp : NetFrameworkBase.System.Runtime.Remoting.Proxies.RealProxy.Kind_Ptr
      )
      return NetFrameworkBase.System.Object.Kind_Ptr;
      
      function GetProxiedType
      (
         this : in out RealProxy.Kind
      )
      return NetFrameworkBase.System.Type_x.Kind_Ptr;
      
      function Invoke
      (
         this : in out RealProxy.Kind;
         msg : NetFrameworkBase.System.Runtime.Remoting.Messaging.IMessage.Kind_Ptr
      )
      return NetFrameworkBase.System.Runtime.Remoting.Messaging.IMessage.Kind_Ptr;
      
end;
