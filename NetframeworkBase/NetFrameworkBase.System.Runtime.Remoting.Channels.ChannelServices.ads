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
limited with NetFrameworkBase.System.Runtime.Remoting.Channels.IChannel;
limited with NetFrameworkBase.System.MarshalByRefObject;
limited with NetFrameworkBase.System.Runtime.Remoting.Channels.IServerChannelSinkStack;
limited with NetFrameworkBase.System.Runtime.Remoting.Messaging.IMessage;
limited with NetFrameworkBase.System.Runtime.Remoting.Messaging.IMessageSink;
limited with NetFrameworkBase.System.Runtime.Remoting.Channels.IServerChannelSinkProvider;
limited with NetFrameworkBase.System.Runtime.Remoting.Channels.IChannelReceiver;
limited with NetFrameworkBase.System.Collections.IDictionary;
limited with NetFrameworkBase.System.Runtime.Remoting.Channels.ServerProcessing;
limited with NetFrameworkBase.System.Runtime.Remoting.Messaging.IMessageCtrl;
limited with NetFrameworkBase.System.Runtime.Remoting.Channels.IServerChannelSink;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Runtime.Remoting.Channels.ChannelServices is
   
   type Kind is new NetFrameworkBase.System.Object.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      procedure RegisterChannel
      (
         chnl : NetFrameworkBase.System.Runtime.Remoting.Channels.IChannel.Kind_Ptr; 
         ensureSecurity : NetFrameworkBase.Boolean
      )
      ;
      
      procedure RegisterChannel
      (
         chnl : NetFrameworkBase.System.Runtime.Remoting.Channels.IChannel.Kind_Ptr
      )
      ;
      
      function RegisteredChannels
      return NetFrameworkBase.System.Runtime.Remoting.Channels.IChannel.Kind_Array;
      
      function GetChannel
      (
         name : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Runtime.Remoting.Channels.IChannel.Kind_Ptr;
      
      function GetUrlsForObject
      (
         obj : NetFrameworkBase.System.MarshalByRefObject.Kind_Ptr
      )
      return NetFrameworkBase.BSTR_Array;
      
      function GetChannelSinkProperties
      (
         obj : NetFrameworkBase.System.Object.Kind_Ptr
      )
      return NetFrameworkBase.System.Collections.IDictionary.Kind_Ptr;
      
      function DispatchMessage
      (
         sinkStack : NetFrameworkBase.System.Runtime.Remoting.Channels.IServerChannelSinkStack.Kind_Ptr; 
         msg : NetFrameworkBase.System.Runtime.Remoting.Messaging.IMessage.Kind_Ptr; 
         replyMsg : out NetFrameworkBase.System.Runtime.Remoting.Messaging.IMessage.Kind_Ptr
      )
      return NetFrameworkBase.System.Runtime.Remoting.Channels.ServerProcessing.Kind;
      
      function SyncDispatchMessage
      (
         msg : NetFrameworkBase.System.Runtime.Remoting.Messaging.IMessage.Kind_Ptr
      )
      return NetFrameworkBase.System.Runtime.Remoting.Messaging.IMessage.Kind_Ptr;
      
      function AsyncDispatchMessage
      (
         msg : NetFrameworkBase.System.Runtime.Remoting.Messaging.IMessage.Kind_Ptr; 
         replySink : NetFrameworkBase.System.Runtime.Remoting.Messaging.IMessageSink.Kind_Ptr
      )
      return NetFrameworkBase.System.Runtime.Remoting.Messaging.IMessageCtrl.Kind_Ptr;
      
      function CreateServerChannelSinkChain
      (
         provider : NetFrameworkBase.System.Runtime.Remoting.Channels.IServerChannelSinkProvider.Kind_Ptr; 
         channel : NetFrameworkBase.System.Runtime.Remoting.Channels.IChannelReceiver.Kind_Ptr
      )
      return NetFrameworkBase.System.Runtime.Remoting.Channels.IServerChannelSink.Kind_Ptr;
      
      procedure UnregisterChannel
      (
         chnl : NetFrameworkBase.System.Runtime.Remoting.Channels.IChannel.Kind_Ptr
      )
      ;
      
end;
