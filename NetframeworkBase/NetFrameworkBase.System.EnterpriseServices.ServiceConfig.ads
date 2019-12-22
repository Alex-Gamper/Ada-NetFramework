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
limited with NetFrameworkBase.System.EnterpriseServices.ThreadPoolOption;
limited with NetFrameworkBase.System.EnterpriseServices.InheritanceOption;
limited with NetFrameworkBase.System.EnterpriseServices.BindingOption;
limited with NetFrameworkBase.System.EnterpriseServices.TransactionOption;
limited with NetFrameworkBase.System.EnterpriseServices.TransactionIsolationLevel;
limited with NetFrameworkBase.System.EnterpriseServices.ITransaction;
limited with NetFrameworkBase.System.Transactions.Transaction;
limited with NetFrameworkBase.System.EnterpriseServices.SynchronizationOption;
limited with NetFrameworkBase.System.EnterpriseServices.SxsOption;
limited with NetFrameworkBase.System.EnterpriseServices.PartitionOption;
limited with NetFrameworkBase.System.Guid;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.EnterpriseServices.ServiceConfig is
   
   type Kind is new NetFrameworkBase.System.Object.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function ThreadPool
      (
         this : in out ServiceConfig.Kind
      )
      return NetFrameworkBase.System.EnterpriseServices.ThreadPoolOption.Kind;
      
      function Inheritance
      (
         this : in out ServiceConfig.Kind
      )
      return NetFrameworkBase.System.EnterpriseServices.InheritanceOption.Kind;
      
      function Binding
      (
         this : in out ServiceConfig.Kind
      )
      return NetFrameworkBase.System.EnterpriseServices.BindingOption.Kind;
      
      function Transaction
      (
         this : in out ServiceConfig.Kind
      )
      return NetFrameworkBase.System.EnterpriseServices.TransactionOption.Kind;
      
      function IsolationLevel
      (
         this : in out ServiceConfig.Kind
      )
      return NetFrameworkBase.System.EnterpriseServices.TransactionIsolationLevel.Kind;
      
      function TransactionTimeout
      (
         this : in out ServiceConfig.Kind
      )
      return NetFrameworkBase.Int32;
      
      function TipUrl
      (
         this : in out ServiceConfig.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function TransactionDescription
      (
         this : in out ServiceConfig.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function BringYourOwnTransaction
      (
         this : in out ServiceConfig.Kind
      )
      return NetFrameworkBase.System.EnterpriseServices.ITransaction.Kind_Ptr;
      
      function Synchronization
      (
         this : in out ServiceConfig.Kind
      )
      return NetFrameworkBase.System.EnterpriseServices.SynchronizationOption.Kind;
      
      function IISIntrinsicsEnabled
      (
         this : in out ServiceConfig.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function COMTIIntrinsicsEnabled
      (
         this : in out ServiceConfig.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function TrackingEnabled
      (
         this : in out ServiceConfig.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function TrackingAppName
      (
         this : in out ServiceConfig.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function TrackingComponentName
      (
         this : in out ServiceConfig.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function SxsOption
      (
         this : in out ServiceConfig.Kind
      )
      return NetFrameworkBase.System.EnterpriseServices.SxsOption.Kind;
      
      function SxsDirectory
      (
         this : in out ServiceConfig.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function SxsName
      (
         this : in out ServiceConfig.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function PartitionOption
      (
         this : in out ServiceConfig.Kind
      )
      return NetFrameworkBase.System.EnterpriseServices.PartitionOption.Kind;
      
      function PartitionId
      (
         this : in out ServiceConfig.Kind
      )
      return NetFrameworkBase.System.Guid.Kind_Ptr;
      
      procedure ThreadPool
      (
         this : in out ServiceConfig.Kind;
         value : NetFrameworkBase.System.EnterpriseServices.ThreadPoolOption.Kind
      );
      
      procedure Inheritance
      (
         this : in out ServiceConfig.Kind;
         value : NetFrameworkBase.System.EnterpriseServices.InheritanceOption.Kind
      );
      
      procedure Binding
      (
         this : in out ServiceConfig.Kind;
         value : NetFrameworkBase.System.EnterpriseServices.BindingOption.Kind
      );
      
      procedure Transaction
      (
         this : in out ServiceConfig.Kind;
         value : NetFrameworkBase.System.EnterpriseServices.TransactionOption.Kind
      );
      
      procedure IsolationLevel
      (
         this : in out ServiceConfig.Kind;
         value : NetFrameworkBase.System.EnterpriseServices.TransactionIsolationLevel.Kind
      );
      
      procedure TransactionTimeout
      (
         this : in out ServiceConfig.Kind;
         value : NetFrameworkBase.Int32
      );
      
      procedure TipUrl
      (
         this : in out ServiceConfig.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      procedure TransactionDescription
      (
         this : in out ServiceConfig.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      procedure BringYourOwnTransaction
      (
         this : in out ServiceConfig.Kind;
         value : NetFrameworkBase.System.EnterpriseServices.ITransaction.Kind_Ptr
      );
      
      function BringYourOwnSystemTransaction
      (
         this : in out ServiceConfig.Kind
      )
      return NetFrameworkBase.System.Transactions.Transaction.Kind_Ptr;
      
      procedure BringYourOwnSystemTransaction
      (
         this : in out ServiceConfig.Kind;
         value : NetFrameworkBase.System.Transactions.Transaction.Kind_Ptr
      );
      
      procedure Synchronization
      (
         this : in out ServiceConfig.Kind;
         value : NetFrameworkBase.System.EnterpriseServices.SynchronizationOption.Kind
      );
      
      procedure IISIntrinsicsEnabled
      (
         this : in out ServiceConfig.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      procedure COMTIIntrinsicsEnabled
      (
         this : in out ServiceConfig.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      procedure TrackingEnabled
      (
         this : in out ServiceConfig.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      procedure TrackingAppName
      (
         this : in out ServiceConfig.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      procedure TrackingComponentName
      (
         this : in out ServiceConfig.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      procedure SxsOption
      (
         this : in out ServiceConfig.Kind;
         value : NetFrameworkBase.System.EnterpriseServices.SxsOption.Kind
      );
      
      procedure SxsDirectory
      (
         this : in out ServiceConfig.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      procedure SxsName
      (
         this : in out ServiceConfig.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      procedure PartitionOption
      (
         this : in out ServiceConfig.Kind;
         value : NetFrameworkBase.System.EnterpriseServices.PartitionOption.Kind
      );
      
      procedure PartitionId
      (
         this : in out ServiceConfig.Kind;
         value : NetFrameworkBase.System.Guid.Kind_Ptr
      );
      
      function Constructor return NetFrameworkBase.System.EnterpriseServices.ServiceConfig.Kind_Ptr;
      
end;
