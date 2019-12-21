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
limited with NetFrameworkBase.System.Uri;
limited with NetFrameworkBase.System.Collections.Specialized.NameValueCollection;
limited with NetFrameworkBase.System.Net.CookieCollection;
limited with NetFrameworkBase.System.Security.Principal.IPrincipal;
limited with NetFrameworkBase.System.Net.WebSockets.WebSocket;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Net.WebSockets.WebSocketContext is
   
   type Kind is new NetFrameworkBase.System.Object.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function RequestUri
      (
         this : in out WebSocketContext.Kind
      )
      return NetFrameworkBase.System.Uri.Kind_Ptr;
      
      function Headers
      (
         this : in out WebSocketContext.Kind
      )
      return NetFrameworkBase.System.Collections.Specialized.NameValueCollection.Kind_Ptr;
      
      function Origin
      (
         this : in out WebSocketContext.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function SecWebSocketVersion
      (
         this : in out WebSocketContext.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function SecWebSocketKey
      (
         this : in out WebSocketContext.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function CookieCollection
      (
         this : in out WebSocketContext.Kind
      )
      return NetFrameworkBase.System.Net.CookieCollection.Kind_Ptr;
      
      function User
      (
         this : in out WebSocketContext.Kind
      )
      return NetFrameworkBase.System.Security.Principal.IPrincipal.Kind_Ptr;
      
      function IsAuthenticated
      (
         this : in out WebSocketContext.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function IsLocal
      (
         this : in out WebSocketContext.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function IsSecureConnection
      (
         this : in out WebSocketContext.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function WebSocket
      (
         this : in out WebSocketContext.Kind
      )
      return NetFrameworkBase.System.Net.WebSockets.WebSocket.Kind_Ptr;
      
end;
