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
limited with NetFrameworkBase.System.EventHandler;
limited with NetFrameworkBase.System.ComponentModel.Design.DesignerTransactionCloseEventHandler;
limited with NetFrameworkBase.System.ComponentModel.IComponent;
limited with NetFrameworkBase.System.Type_x;
limited with NetFrameworkBase.System.ComponentModel.Design.IDesigner;
limited with NetFrameworkBase.System.ComponentModel.IContainer;
limited with NetFrameworkBase.System.ComponentModel.Design.DesignerTransaction;
with NetFrameworkWin32;
with NetFrameworkAdaRuntime;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.ComponentModel.Design.IDesignerHost is
   
   type Kind is interface and NetFrameworkWin32.IUnknown;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array (Natural range <>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function get_Loading
      (
         this : in out IDesignerHost.Kind;
         RetVal : access NetFrameworkBase.Boolean
      ) return HResult is abstract;
      
      function get_InTransaction
      (
         this : in out IDesignerHost.Kind;
         RetVal : access NetFrameworkBase.Boolean
      ) return HResult is abstract;
      
      function get_RootComponent
      (
         this : in out IDesignerHost.Kind;
         RetVal : access NetFrameworkBase.System.ComponentModel.IComponent.Kind_Ptr
      ) return HResult is abstract;
      
      function add_LoadComplete
      (
         this : in out IDesignerHost.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      ) return HResult is abstract;
      
      function add_TransactionClosed
      (
         this : in out IDesignerHost.Kind;
         value : NetFrameworkBase.System.ComponentModel.Design.DesignerTransactionCloseEventHandler.Kind_Ptr
      ) return HResult is abstract;
      
      function remove_TransactionClosing
      (
         this : in out IDesignerHost.Kind;
         value : NetFrameworkBase.System.ComponentModel.Design.DesignerTransactionCloseEventHandler.Kind_Ptr
      ) return HResult is abstract;
      
      function add_TransactionOpened
      (
         this : in out IDesignerHost.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      ) return HResult is abstract;
      
      function GetDesigner
      (
         this : in out IDesignerHost.Kind;
         component : NetFrameworkBase.System.ComponentModel.IComponent.Kind_Ptr;
         RetVal : access NetFrameworkBase.System.ComponentModel.Design.IDesigner.Kind_Ptr
      ) return HResult is abstract;
      
      function get_Container
      (
         this : in out IDesignerHost.Kind;
         RetVal : access NetFrameworkBase.System.ComponentModel.IContainer.Kind_Ptr
      ) return HResult is abstract;
      
      function get_RootComponentClassName
      (
         this : in out IDesignerHost.Kind;
         RetVal : access NetFrameworkBase.BSTR
      ) return HResult is abstract;
      
      function get_TransactionDescription
      (
         this : in out IDesignerHost.Kind;
         RetVal : access NetFrameworkBase.BSTR
      ) return HResult is abstract;
      
      function add_Activated
      (
         this : in out IDesignerHost.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      ) return HResult is abstract;
      
      function remove_Activated
      (
         this : in out IDesignerHost.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      ) return HResult is abstract;
      
      function add_Deactivated
      (
         this : in out IDesignerHost.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      ) return HResult is abstract;
      
      function remove_Deactivated
      (
         this : in out IDesignerHost.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      ) return HResult is abstract;
      
      function remove_LoadComplete
      (
         this : in out IDesignerHost.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      ) return HResult is abstract;
      
      function remove_TransactionClosed
      (
         this : in out IDesignerHost.Kind;
         value : NetFrameworkBase.System.ComponentModel.Design.DesignerTransactionCloseEventHandler.Kind_Ptr
      ) return HResult is abstract;
      
      function add_TransactionClosing
      (
         this : in out IDesignerHost.Kind;
         value : NetFrameworkBase.System.ComponentModel.Design.DesignerTransactionCloseEventHandler.Kind_Ptr
      ) return HResult is abstract;
      
      function remove_TransactionOpened
      (
         this : in out IDesignerHost.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      ) return HResult is abstract;
      
      function add_TransactionOpening
      (
         this : in out IDesignerHost.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      ) return HResult is abstract;
      
      function remove_TransactionOpening
      (
         this : in out IDesignerHost.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      ) return HResult is abstract;
      
      function Activate
      (
         this : in out IDesignerHost.Kind
      ) return HResult is abstract;
      
      function CreateComponent
      (
         this : in out IDesignerHost.Kind;
         componentClass : NetFrameworkBase.System.Type_x.Kind_Ptr;
         RetVal : access NetFrameworkBase.System.ComponentModel.IComponent.Kind_Ptr
      ) return HResult is abstract;
      
      function CreateComponent
      (
         this : in out IDesignerHost.Kind;
         componentClass : NetFrameworkBase.System.Type_x.Kind_Ptr;
         name : NetFrameworkBase.BSTR;
         RetVal : access NetFrameworkBase.System.ComponentModel.IComponent.Kind_Ptr
      ) return HResult is abstract;
      
      function CreateTransaction
      (
         this : in out IDesignerHost.Kind;
         RetVal : access NetFrameworkBase.System.ComponentModel.Design.DesignerTransaction.Kind_Ptr
      ) return HResult is abstract;
      
      function CreateTransaction
      (
         this : in out IDesignerHost.Kind;
         description : NetFrameworkBase.BSTR;
         RetVal : access NetFrameworkBase.System.ComponentModel.Design.DesignerTransaction.Kind_Ptr
      ) return HResult is abstract;
      
      function DestroyComponent
      (
         this : in out IDesignerHost.Kind;
         component : NetFrameworkBase.System.ComponentModel.IComponent.Kind_Ptr
      ) return HResult is abstract;
      
      function GetType
      (
         this : in out IDesignerHost.Kind;
         typeName : NetFrameworkBase.BSTR;
         RetVal : access NetFrameworkBase.System.Type_x.Kind_Ptr
      ) return HResult is abstract;
      
   private
   
      This_AssemblyFile : constant Standard.Wide_String := "C:\Windows\Microsoft.NET\Framework64\v4.0.30319\System.dll";
      This_AssemblyName : constant Standard.Wide_String := "System, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089";
      This_TypeName     : constant Standard.Wide_String := "System.ComponentModel.Design.IDesignerHost";
   
end;
