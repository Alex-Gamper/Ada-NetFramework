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
with NetFrameworkBase.System.Transactions.Transaction;
limited with NetFrameworkBase.System.AsyncCallback;
with NetFrameworkBase.System.Object;
limited with NetFrameworkBase.System.IAsyncResult;
limited with NetFrameworkBase.System.TimeSpan;
limited with NetFrameworkBase.System.Transactions.TransactionOptions;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Transactions.CommittableTransaction is
   
   type Kind is new NetFrameworkBase.System.Transactions.Transaction.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function BeginCommit
      (
         this : in out CommittableTransaction.Kind;
         asyncCallback : NetFrameworkBase.System.AsyncCallback.Kind_Ptr; 
         asyncState : NetFrameworkBase.System.Object.Kind_Ptr
      )
      return NetFrameworkBase.System.IAsyncResult.Kind_Ptr;
      
      procedure Commit
      (
         this : in out CommittableTransaction.Kind
      );
      
      procedure EndCommit
      (
         this : in out CommittableTransaction.Kind;
         asyncResult : NetFrameworkBase.System.IAsyncResult.Kind_Ptr
      );
      
      function Constructor return NetFrameworkBase.System.Transactions.CommittableTransaction.Kind_Ptr;
      
      function Constructor
      (
         timeout : NetFrameworkBase.System.TimeSpan.Kind_Ptr
      )
      return NetFrameworkBase.System.Transactions.CommittableTransaction.Kind_Ptr;
      
      function Constructor
      (
         options : NetFrameworkBase.System.Transactions.TransactionOptions.Kind_Ptr
      )
      return NetFrameworkBase.System.Transactions.CommittableTransaction.Kind_Ptr;
      
end;