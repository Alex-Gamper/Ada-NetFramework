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
limited with NetFrameworkBase.System.Transactions.TransactionStartedEventHandler;
limited with NetFrameworkBase.System.Transactions.HostCurrentTransactionCallback;
limited with NetFrameworkBase.System.Guid;
limited with NetFrameworkBase.System.Transactions.IEnlistmentNotification;
limited with NetFrameworkBase.System.Transactions.Enlistment;
limited with NetFrameworkBase.System.TimeSpan;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Transactions.TransactionManager is
   
   type Kind is new NetFrameworkBase.System.Object.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      procedure add_DistributedTransactionStarted
      (
         value : NetFrameworkBase.System.Transactions.TransactionStartedEventHandler.Kind_Ptr
      )
      ;
      
      procedure remove_DistributedTransactionStarted
      (
         value : NetFrameworkBase.System.Transactions.TransactionStartedEventHandler.Kind_Ptr
      )
      ;
      
      function HostCurrentCallback
      return NetFrameworkBase.System.Transactions.HostCurrentTransactionCallback.Kind_Ptr;
      
      procedure HostCurrentCallback
      (
         value : NetFrameworkBase.System.Transactions.HostCurrentTransactionCallback.Kind_Ptr
      )
      ;
      
      function Reenlist
      (
         resourceManagerIdentifier : NetFrameworkBase.System.Guid.Kind_Ptr; 
         recoveryInformation : NetFrameworkBase.Byte_Array; 
         enlistmentNotification : NetFrameworkBase.System.Transactions.IEnlistmentNotification.Kind_Ptr
      )
      return NetFrameworkBase.System.Transactions.Enlistment.Kind_Ptr;
      
      procedure RecoveryComplete
      (
         resourceManagerIdentifier : NetFrameworkBase.System.Guid.Kind_Ptr
      )
      ;
      
      function DefaultTimeout
      return NetFrameworkBase.System.TimeSpan.Kind_Ptr;
      
      function MaximumTimeout
      return NetFrameworkBase.System.TimeSpan.Kind_Ptr;
      
end;
