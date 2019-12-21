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
with NetFrameworkBase.System.Runtime.Remoting.Messaging.InternalMessageWrapper;
with NetFrameworkBase.System.Object;
limited with NetFrameworkBase.System.Exception_x;
limited with NetFrameworkBase.System.Runtime.Remoting.Messaging.IMethodReturnMessage;
limited with NetFrameworkBase.System.Runtime.Remoting.Messaging.LogicalCallContext;
limited with NetFrameworkBase.System.Reflection.MethodBase;
limited with NetFrameworkBase.System.Collections.IDictionary;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Runtime.Remoting.Messaging.MethodReturnMessageWrapper is
   
   type Kind is new NetFrameworkBase.System.Runtime.Remoting.Messaging.InternalMessageWrapper.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function Uri
      (
         this : in out MethodReturnMessageWrapper.Kind
      )
      return NetFrameworkBase.BSTR;
      
      procedure Uri
      (
         this : in out MethodReturnMessageWrapper.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      function MethodName
      (
         this : in out MethodReturnMessageWrapper.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function TypeName
      (
         this : in out MethodReturnMessageWrapper.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function MethodSignature
      (
         this : in out MethodReturnMessageWrapper.Kind
      )
      return NetFrameworkBase.System.Object.Kind_Ptr;
      
      function LogicalCallContext
      (
         this : in out MethodReturnMessageWrapper.Kind
      )
      return NetFrameworkBase.System.Runtime.Remoting.Messaging.LogicalCallContext.Kind_Ptr;
      
      function MethodBase
      (
         this : in out MethodReturnMessageWrapper.Kind
      )
      return NetFrameworkBase.System.Reflection.MethodBase.Kind_Ptr;
      
      function ArgCount
      (
         this : in out MethodReturnMessageWrapper.Kind
      )
      return NetFrameworkBase.Int32;
      
      function GetArgName
      (
         this : in out MethodReturnMessageWrapper.Kind;
         index : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.BSTR;
      
      function GetArg
      (
         this : in out MethodReturnMessageWrapper.Kind;
         argNum : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.Object.Kind_Ptr;
      
      function Args
      (
         this : in out MethodReturnMessageWrapper.Kind
      )
      return NetFrameworkBase.System.Object.Kind_Array;
      
      procedure Args
      (
         this : in out MethodReturnMessageWrapper.Kind;
         value : NetFrameworkBase.System.Object.Kind_Array
      );
      
      function HasVarArgs
      (
         this : in out MethodReturnMessageWrapper.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function OutArgCount
      (
         this : in out MethodReturnMessageWrapper.Kind
      )
      return NetFrameworkBase.Int32;
      
      function GetOutArg
      (
         this : in out MethodReturnMessageWrapper.Kind;
         argNum : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.Object.Kind_Ptr;
      
      function GetOutArgName
      (
         this : in out MethodReturnMessageWrapper.Kind;
         index : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.BSTR;
      
      function OutArgs
      (
         this : in out MethodReturnMessageWrapper.Kind
      )
      return NetFrameworkBase.System.Object.Kind_Array;
      
      function Exception_x
      (
         this : in out MethodReturnMessageWrapper.Kind
      )
      return NetFrameworkBase.System.Exception_x.Kind_Ptr;
      
      procedure Exception_x
      (
         this : in out MethodReturnMessageWrapper.Kind;
         value : NetFrameworkBase.System.Exception_x.Kind_Ptr
      );
      
      function ReturnValue
      (
         this : in out MethodReturnMessageWrapper.Kind
      )
      return NetFrameworkBase.System.Object.Kind_Ptr;
      
      procedure ReturnValue
      (
         this : in out MethodReturnMessageWrapper.Kind;
         value : NetFrameworkBase.System.Object.Kind_Ptr
      );
      
      function Properties
      (
         this : in out MethodReturnMessageWrapper.Kind
      )
      return NetFrameworkBase.System.Collections.IDictionary.Kind_Ptr;
      
      function Constructor
      (
         msg : NetFrameworkBase.System.Runtime.Remoting.Messaging.IMethodReturnMessage.Kind_Ptr
      )
      return NetFrameworkBase.System.Runtime.Remoting.Messaging.MethodReturnMessageWrapper.Kind_Ptr;
      
end;