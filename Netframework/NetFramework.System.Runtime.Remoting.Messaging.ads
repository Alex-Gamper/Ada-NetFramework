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
with NetFrameworkBase.System.Runtime.Remoting.Messaging.AsyncResult;
with NetFrameworkBase.System.Runtime.Remoting.Messaging.IMessage;
with NetFrameworkBase.System.Runtime.Remoting.Messaging.IMessageCtrl;
with NetFrameworkBase.System.Runtime.Remoting.Messaging.IMessageSink;
with NetFrameworkBase.System.Runtime.Remoting.Messaging.IMethodMessage;
with NetFrameworkBase.System.Runtime.Remoting.Messaging.IMethodCallMessage;
with NetFrameworkBase.System.Runtime.Remoting.Messaging.IMethodReturnMessage;
with NetFrameworkBase.System.Runtime.Remoting.Messaging.IRemotingFormatter;
with NetFrameworkBase.System.Runtime.Remoting.Messaging.ReturnMessage;
with NetFrameworkBase.System.Runtime.Remoting.Messaging.MethodCall;
with NetFrameworkBase.System.Runtime.Remoting.Messaging.ConstructionCall;
with NetFrameworkBase.System.Runtime.Remoting.Messaging.MethodResponse;
with NetFrameworkBase.System.Runtime.Remoting.Messaging.ConstructionResponse;
with NetFrameworkBase.System.Runtime.Remoting.Messaging.InternalMessageWrapper;
with NetFrameworkBase.System.Runtime.Remoting.Messaging.MethodCallMessageWrapper;
with NetFrameworkBase.System.Runtime.Remoting.Messaging.MethodReturnMessageWrapper;
with NetFrameworkBase.System.Runtime.Remoting.Messaging.OneWayAttribute;
with NetFrameworkBase.System.Runtime.Remoting.Messaging.MessageSurrogateFilter;
with NetFrameworkBase.System.Runtime.Remoting.Messaging.RemotingSurrogateSelector;
with NetFrameworkBase.System.Runtime.Remoting.Messaging.Header;
with NetFrameworkBase.System.Runtime.Remoting.Messaging.HeaderHandler;
with NetFrameworkBase.System.Runtime.Remoting.Messaging.CallContext;
with NetFrameworkBase.System.Runtime.Remoting.Messaging.ILogicalThreadAffinative;
with NetFrameworkBase.System.Runtime.Remoting.Messaging.LogicalCallContext;
with NetFrameworkBase.System.Object;
with NetFrameworkBase.System.Exception_x;
--------------------------------------------------------------------------------
package NetFramework.System.Runtime.Remoting.Messaging is
   
      --------------------------------------------------------------------------
      subtype AsyncResult is NetFrameworkBase.System.Runtime.Remoting.Messaging.AsyncResult.Kind_Ptr;
      subtype AsyncResult_Array is NetFrameworkBase.System.Runtime.Remoting.Messaging.AsyncResult.Kind_Array;
      
      --------------------------------------------------------------------------
      subtype IMessage is NetFrameworkBase.System.Runtime.Remoting.Messaging.IMessage.Kind_Ptr;
      subtype IMessage_Array is NetFrameworkBase.System.Runtime.Remoting.Messaging.IMessage.Kind_Array;
      
      --------------------------------------------------------------------------
      subtype IMessageCtrl is NetFrameworkBase.System.Runtime.Remoting.Messaging.IMessageCtrl.Kind_Ptr;
      subtype IMessageCtrl_Array is NetFrameworkBase.System.Runtime.Remoting.Messaging.IMessageCtrl.Kind_Array;
      
      --------------------------------------------------------------------------
      subtype IMessageSink is NetFrameworkBase.System.Runtime.Remoting.Messaging.IMessageSink.Kind_Ptr;
      subtype IMessageSink_Array is NetFrameworkBase.System.Runtime.Remoting.Messaging.IMessageSink.Kind_Array;
      
      --------------------------------------------------------------------------
      subtype IMethodMessage is NetFrameworkBase.System.Runtime.Remoting.Messaging.IMethodMessage.Kind_Ptr;
      subtype IMethodMessage_Array is NetFrameworkBase.System.Runtime.Remoting.Messaging.IMethodMessage.Kind_Array;
      
      --------------------------------------------------------------------------
      subtype IMethodCallMessage is NetFrameworkBase.System.Runtime.Remoting.Messaging.IMethodCallMessage.Kind_Ptr;
      subtype IMethodCallMessage_Array is NetFrameworkBase.System.Runtime.Remoting.Messaging.IMethodCallMessage.Kind_Array;
      
      --------------------------------------------------------------------------
      subtype IMethodReturnMessage is NetFrameworkBase.System.Runtime.Remoting.Messaging.IMethodReturnMessage.Kind_Ptr;
      subtype IMethodReturnMessage_Array is NetFrameworkBase.System.Runtime.Remoting.Messaging.IMethodReturnMessage.Kind_Array;
      
      --------------------------------------------------------------------------
      subtype IRemotingFormatter is NetFrameworkBase.System.Runtime.Remoting.Messaging.IRemotingFormatter.Kind_Ptr;
      subtype IRemotingFormatter_Array is NetFrameworkBase.System.Runtime.Remoting.Messaging.IRemotingFormatter.Kind_Array;
      
      --------------------------------------------------------------------------
      subtype ReturnMessage is NetFrameworkBase.System.Runtime.Remoting.Messaging.ReturnMessage.Kind_Ptr;
      subtype ReturnMessage_Array is NetFrameworkBase.System.Runtime.Remoting.Messaging.ReturnMessage.Kind_Array;
      
         function Constructor
         (
            ret : NetFrameworkBase.System.Object.Kind_Ptr;
            outArgs : NetFrameworkBase.System.Object.Kind_Array;
            outArgsCount : NetFrameworkBase.Int32;
            callCtx : NetFrameworkBase.System.Runtime.Remoting.Messaging.LogicalCallContext.Kind_Ptr;
            mcm : NetFrameworkBase.System.Runtime.Remoting.Messaging.IMethodCallMessage.Kind_Ptr
         )
         return NetFrameworkBase.System.Runtime.Remoting.Messaging.ReturnMessage.Kind_Ptr renames NetFrameworkBase.System.Runtime.Remoting.Messaging.ReturnMessage.Constructor; 
         
         function Constructor
         (
            e : NetFrameworkBase.System.Exception_x.Kind_Ptr;
            mcm : NetFrameworkBase.System.Runtime.Remoting.Messaging.IMethodCallMessage.Kind_Ptr
         )
         return NetFrameworkBase.System.Runtime.Remoting.Messaging.ReturnMessage.Kind_Ptr renames NetFrameworkBase.System.Runtime.Remoting.Messaging.ReturnMessage.Constructor; 
         
      --------------------------------------------------------------------------
      subtype MethodCall is NetFrameworkBase.System.Runtime.Remoting.Messaging.MethodCall.Kind_Ptr;
      subtype MethodCall_Array is NetFrameworkBase.System.Runtime.Remoting.Messaging.MethodCall.Kind_Array;
      
         function Constructor
         (
            h1 : NetFrameworkBase.System.Runtime.Remoting.Messaging.Header.Kind_Array
         )
         return NetFrameworkBase.System.Runtime.Remoting.Messaging.MethodCall.Kind_Ptr renames NetFrameworkBase.System.Runtime.Remoting.Messaging.MethodCall.Constructor; 
         
         function Constructor
         (
            msg : NetFrameworkBase.System.Runtime.Remoting.Messaging.IMessage.Kind_Ptr
         )
         return NetFrameworkBase.System.Runtime.Remoting.Messaging.MethodCall.Kind_Ptr renames NetFrameworkBase.System.Runtime.Remoting.Messaging.MethodCall.Constructor; 
         
      --------------------------------------------------------------------------
      subtype ConstructionCall is NetFrameworkBase.System.Runtime.Remoting.Messaging.ConstructionCall.Kind_Ptr;
      subtype ConstructionCall_Array is NetFrameworkBase.System.Runtime.Remoting.Messaging.ConstructionCall.Kind_Array;
      
         function Constructor
         (
            headers : NetFrameworkBase.System.Runtime.Remoting.Messaging.Header.Kind_Array
         )
         return NetFrameworkBase.System.Runtime.Remoting.Messaging.ConstructionCall.Kind_Ptr renames NetFrameworkBase.System.Runtime.Remoting.Messaging.ConstructionCall.Constructor; 
         
         function Constructor
         (
            m : NetFrameworkBase.System.Runtime.Remoting.Messaging.IMessage.Kind_Ptr
         )
         return NetFrameworkBase.System.Runtime.Remoting.Messaging.ConstructionCall.Kind_Ptr renames NetFrameworkBase.System.Runtime.Remoting.Messaging.ConstructionCall.Constructor; 
         
      --------------------------------------------------------------------------
      subtype MethodResponse is NetFrameworkBase.System.Runtime.Remoting.Messaging.MethodResponse.Kind_Ptr;
      subtype MethodResponse_Array is NetFrameworkBase.System.Runtime.Remoting.Messaging.MethodResponse.Kind_Array;
      
         function Constructor
         (
            h1 : NetFrameworkBase.System.Runtime.Remoting.Messaging.Header.Kind_Array;
            mcm : NetFrameworkBase.System.Runtime.Remoting.Messaging.IMethodCallMessage.Kind_Ptr
         )
         return NetFrameworkBase.System.Runtime.Remoting.Messaging.MethodResponse.Kind_Ptr renames NetFrameworkBase.System.Runtime.Remoting.Messaging.MethodResponse.Constructor; 
         
      --------------------------------------------------------------------------
      subtype ConstructionResponse is NetFrameworkBase.System.Runtime.Remoting.Messaging.ConstructionResponse.Kind_Ptr;
      subtype ConstructionResponse_Array is NetFrameworkBase.System.Runtime.Remoting.Messaging.ConstructionResponse.Kind_Array;
      
         function Constructor
         (
            h : NetFrameworkBase.System.Runtime.Remoting.Messaging.Header.Kind_Array;
            mcm : NetFrameworkBase.System.Runtime.Remoting.Messaging.IMethodCallMessage.Kind_Ptr
         )
         return NetFrameworkBase.System.Runtime.Remoting.Messaging.ConstructionResponse.Kind_Ptr renames NetFrameworkBase.System.Runtime.Remoting.Messaging.ConstructionResponse.Constructor; 
         
      --------------------------------------------------------------------------
      subtype InternalMessageWrapper is NetFrameworkBase.System.Runtime.Remoting.Messaging.InternalMessageWrapper.Kind_Ptr;
      subtype InternalMessageWrapper_Array is NetFrameworkBase.System.Runtime.Remoting.Messaging.InternalMessageWrapper.Kind_Array;
      
         function Constructor
         (
            msg : NetFrameworkBase.System.Runtime.Remoting.Messaging.IMessage.Kind_Ptr
         )
         return NetFrameworkBase.System.Runtime.Remoting.Messaging.InternalMessageWrapper.Kind_Ptr renames NetFrameworkBase.System.Runtime.Remoting.Messaging.InternalMessageWrapper.Constructor; 
         
      --------------------------------------------------------------------------
      subtype MethodCallMessageWrapper is NetFrameworkBase.System.Runtime.Remoting.Messaging.MethodCallMessageWrapper.Kind_Ptr;
      subtype MethodCallMessageWrapper_Array is NetFrameworkBase.System.Runtime.Remoting.Messaging.MethodCallMessageWrapper.Kind_Array;
      
         function Constructor
         (
            msg : NetFrameworkBase.System.Runtime.Remoting.Messaging.IMethodCallMessage.Kind_Ptr
         )
         return NetFrameworkBase.System.Runtime.Remoting.Messaging.MethodCallMessageWrapper.Kind_Ptr renames NetFrameworkBase.System.Runtime.Remoting.Messaging.MethodCallMessageWrapper.Constructor; 
         
      --------------------------------------------------------------------------
      subtype MethodReturnMessageWrapper is NetFrameworkBase.System.Runtime.Remoting.Messaging.MethodReturnMessageWrapper.Kind_Ptr;
      subtype MethodReturnMessageWrapper_Array is NetFrameworkBase.System.Runtime.Remoting.Messaging.MethodReturnMessageWrapper.Kind_Array;
      
         function Constructor
         (
            msg : NetFrameworkBase.System.Runtime.Remoting.Messaging.IMethodReturnMessage.Kind_Ptr
         )
         return NetFrameworkBase.System.Runtime.Remoting.Messaging.MethodReturnMessageWrapper.Kind_Ptr renames NetFrameworkBase.System.Runtime.Remoting.Messaging.MethodReturnMessageWrapper.Constructor; 
         
      --------------------------------------------------------------------------
      subtype OneWayAttribute is NetFrameworkBase.System.Runtime.Remoting.Messaging.OneWayAttribute.Kind_Ptr;
      subtype OneWayAttribute_Array is NetFrameworkBase.System.Runtime.Remoting.Messaging.OneWayAttribute.Kind_Array;
      
         function Constructor return NetFrameworkBase.System.Runtime.Remoting.Messaging.OneWayAttribute.Kind_Ptr renames NetFrameworkBase.System.Runtime.Remoting.Messaging.OneWayAttribute.Constructor;
         
      --------------------------------------------------------------------------
      subtype MessageSurrogateFilter is NetFrameworkBase.System.Runtime.Remoting.Messaging.MessageSurrogateFilter.Kind_Ptr;
      subtype MessageSurrogateFilter_Array is NetFrameworkBase.System.Runtime.Remoting.Messaging.MessageSurrogateFilter.Kind_Array;
      
         function Constructor (Callback : NetFrameworkBase.System.Runtime.Remoting.Messaging.MessageSurrogateFilter.Kind_Callback) return NetFrameworkBase.System.Runtime.Remoting.Messaging.MessageSurrogateFilter.Kind_Ptr renames NetFrameworkBase.System.Runtime.Remoting.Messaging.MessageSurrogateFilter.Constructor;
      
      --------------------------------------------------------------------------
      subtype RemotingSurrogateSelector is NetFrameworkBase.System.Runtime.Remoting.Messaging.RemotingSurrogateSelector.Kind_Ptr;
      subtype RemotingSurrogateSelector_Array is NetFrameworkBase.System.Runtime.Remoting.Messaging.RemotingSurrogateSelector.Kind_Array;
      
         function Constructor return NetFrameworkBase.System.Runtime.Remoting.Messaging.RemotingSurrogateSelector.Kind_Ptr renames NetFrameworkBase.System.Runtime.Remoting.Messaging.RemotingSurrogateSelector.Constructor;
         
      --------------------------------------------------------------------------
      subtype Header is NetFrameworkBase.System.Runtime.Remoting.Messaging.Header.Kind_Ptr;
      subtype Header_Array is NetFrameworkBase.System.Runtime.Remoting.Messaging.Header.Kind_Array;
      
         function Constructor
         (
            Name : NetFrameworkBase.BSTR;
            Value : NetFrameworkBase.System.Object.Kind_Ptr
         )
         return NetFrameworkBase.System.Runtime.Remoting.Messaging.Header.Kind_Ptr renames NetFrameworkBase.System.Runtime.Remoting.Messaging.Header.Constructor; 
         
         function Constructor
         (
            Name : NetFrameworkBase.BSTR;
            Value : NetFrameworkBase.System.Object.Kind_Ptr;
            MustUnderstand : NetFrameworkBase.Boolean
         )
         return NetFrameworkBase.System.Runtime.Remoting.Messaging.Header.Kind_Ptr renames NetFrameworkBase.System.Runtime.Remoting.Messaging.Header.Constructor; 
         
         function Constructor
         (
            Name : NetFrameworkBase.BSTR;
            Value : NetFrameworkBase.System.Object.Kind_Ptr;
            MustUnderstand : NetFrameworkBase.Boolean;
            HeaderNamespace : NetFrameworkBase.BSTR
         )
         return NetFrameworkBase.System.Runtime.Remoting.Messaging.Header.Kind_Ptr renames NetFrameworkBase.System.Runtime.Remoting.Messaging.Header.Constructor; 
         
      --------------------------------------------------------------------------
      subtype HeaderHandler is NetFrameworkBase.System.Runtime.Remoting.Messaging.HeaderHandler.Kind_Ptr;
      subtype HeaderHandler_Array is NetFrameworkBase.System.Runtime.Remoting.Messaging.HeaderHandler.Kind_Array;
      
         function Constructor (Callback : NetFrameworkBase.System.Runtime.Remoting.Messaging.HeaderHandler.Kind_Callback) return NetFrameworkBase.System.Runtime.Remoting.Messaging.HeaderHandler.Kind_Ptr renames NetFrameworkBase.System.Runtime.Remoting.Messaging.HeaderHandler.Constructor;
      
      --------------------------------------------------------------------------
      subtype CallContext is NetFrameworkBase.System.Runtime.Remoting.Messaging.CallContext.Kind_Ptr;
      subtype CallContext_Array is NetFrameworkBase.System.Runtime.Remoting.Messaging.CallContext.Kind_Array;
      
      --------------------------------------------------------------------------
      subtype ILogicalThreadAffinative is NetFrameworkBase.System.Runtime.Remoting.Messaging.ILogicalThreadAffinative.Kind_Ptr;
      subtype ILogicalThreadAffinative_Array is NetFrameworkBase.System.Runtime.Remoting.Messaging.ILogicalThreadAffinative.Kind_Array;
      
      --------------------------------------------------------------------------
      subtype LogicalCallContext is NetFrameworkBase.System.Runtime.Remoting.Messaging.LogicalCallContext.Kind_Ptr;
      subtype LogicalCallContext_Array is NetFrameworkBase.System.Runtime.Remoting.Messaging.LogicalCallContext.Kind_Array;
      
   
end;
