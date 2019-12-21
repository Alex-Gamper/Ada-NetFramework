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
limited with NetFrameworkBase.System.Runtime.Remoting.Channels.IServerChannelSink;
limited with NetFrameworkBase.System.Runtime.Remoting.Messaging.IMessage;
limited with NetFrameworkBase.System.Runtime.Remoting.Channels.ITransportHeaders;
limited with NetFrameworkBase.System.IO.Stream;
limited with NetFrameworkBase.System.IAsyncResult;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Runtime.Remoting.Channels.ServerChannelSinkStack is
   
   type Kind is new NetFrameworkBase.System.Object.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      procedure Push
      (
         this : in out ServerChannelSinkStack.Kind;
         sink : NetFrameworkBase.System.Runtime.Remoting.Channels.IServerChannelSink.Kind_Ptr; 
         state : NetFrameworkBase.System.Object.Kind_Ptr
      );
      
      function Pop
      (
         this : in out ServerChannelSinkStack.Kind;
         sink : NetFrameworkBase.System.Runtime.Remoting.Channels.IServerChannelSink.Kind_Ptr
      )
      return NetFrameworkBase.System.Object.Kind_Ptr;
      
      procedure Store_x
      (
         this : in out ServerChannelSinkStack.Kind;
         sink : NetFrameworkBase.System.Runtime.Remoting.Channels.IServerChannelSink.Kind_Ptr; 
         state : NetFrameworkBase.System.Object.Kind_Ptr
      );
      
      procedure StoreAndDispatch
      (
         this : in out ServerChannelSinkStack.Kind;
         sink : NetFrameworkBase.System.Runtime.Remoting.Channels.IServerChannelSink.Kind_Ptr; 
         state : NetFrameworkBase.System.Object.Kind_Ptr
      );
      
      procedure AsyncProcessResponse
      (
         this : in out ServerChannelSinkStack.Kind;
         msg : NetFrameworkBase.System.Runtime.Remoting.Messaging.IMessage.Kind_Ptr; 
         headers : NetFrameworkBase.System.Runtime.Remoting.Channels.ITransportHeaders.Kind_Ptr; 
         stream : NetFrameworkBase.System.IO.Stream.Kind_Ptr
      );
      
      function GetResponseStream
      (
         this : in out ServerChannelSinkStack.Kind;
         msg : NetFrameworkBase.System.Runtime.Remoting.Messaging.IMessage.Kind_Ptr; 
         headers : NetFrameworkBase.System.Runtime.Remoting.Channels.ITransportHeaders.Kind_Ptr
      )
      return NetFrameworkBase.System.IO.Stream.Kind_Ptr;
      
      procedure ServerCallback
      (
         this : in out ServerChannelSinkStack.Kind;
         ar : NetFrameworkBase.System.IAsyncResult.Kind_Ptr
      );
      
      function Constructor return NetFrameworkBase.System.Runtime.Remoting.Channels.ServerChannelSinkStack.Kind_Ptr;
      
end;