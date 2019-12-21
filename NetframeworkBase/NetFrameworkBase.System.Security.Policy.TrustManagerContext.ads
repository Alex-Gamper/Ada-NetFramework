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
limited with NetFrameworkBase.System.Security.Policy.TrustManagerUIContext;
limited with NetFrameworkBase.System.ApplicationIdentity;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Security.Policy.TrustManagerContext is
   
   type Kind is new NetFrameworkBase.System.Object.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function UIContext
      (
         this : in out TrustManagerContext.Kind
      )
      return NetFrameworkBase.System.Security.Policy.TrustManagerUIContext.Kind;
      
      procedure UIContext
      (
         this : in out TrustManagerContext.Kind;
         value : NetFrameworkBase.System.Security.Policy.TrustManagerUIContext.Kind
      );
      
      function NoPrompt
      (
         this : in out TrustManagerContext.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure NoPrompt
      (
         this : in out TrustManagerContext.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      function IgnorePersistedDecision
      (
         this : in out TrustManagerContext.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure IgnorePersistedDecision
      (
         this : in out TrustManagerContext.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      function KeepAlive
      (
         this : in out TrustManagerContext.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure KeepAlive
      (
         this : in out TrustManagerContext.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      function Persist
      (
         this : in out TrustManagerContext.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure Persist
      (
         this : in out TrustManagerContext.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      function PreviousApplicationIdentity
      (
         this : in out TrustManagerContext.Kind
      )
      return NetFrameworkBase.System.ApplicationIdentity.Kind_Ptr;
      
      procedure PreviousApplicationIdentity
      (
         this : in out TrustManagerContext.Kind;
         value : NetFrameworkBase.System.ApplicationIdentity.Kind_Ptr
      );
      
      function Constructor return NetFrameworkBase.System.Security.Policy.TrustManagerContext.Kind_Ptr;
      
      function Constructor
      (
         uiContext : NetFrameworkBase.System.Security.Policy.TrustManagerUIContext.Kind
      )
      return NetFrameworkBase.System.Security.Policy.TrustManagerContext.Kind_Ptr;
      
end;