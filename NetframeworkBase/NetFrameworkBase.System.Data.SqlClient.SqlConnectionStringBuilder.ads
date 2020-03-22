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
with NetFrameworkBase.System.Data.Common.DbConnectionStringBuilder;
limited with NetFrameworkBase.System.Data.SqlClient.ApplicationIntent;
limited with NetFrameworkBase.System.Data.SqlClient.PoolBlockingPeriod;
limited with NetFrameworkBase.System.Data.SqlClient.SqlConnectionColumnEncryptionSetting;
limited with NetFrameworkBase.System.Data.SqlClient.SqlAuthenticationMethod;
with NetFrameworkBase.System.Object;
limited with NetFrameworkBase.System.Collections.ICollection;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Data.SqlClient.SqlConnectionStringBuilder is
   
   type Kind is new NetFrameworkBase.System.Data.Common.DbConnectionStringBuilder.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function Item
      (
         this : in out SqlConnectionStringBuilder.Kind;
         keyword : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Object.Kind_Ptr;
      
      function ApplicationIntent
      (
         this : in out SqlConnectionStringBuilder.Kind
      )
      return NetFrameworkBase.System.Data.SqlClient.ApplicationIntent.Kind;
      
      procedure ApplicationIntent
      (
         this : in out SqlConnectionStringBuilder.Kind;
         value : NetFrameworkBase.System.Data.SqlClient.ApplicationIntent.Kind
      );
      
      function ApplicationName
      (
         this : in out SqlConnectionStringBuilder.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function AsynchronousProcessing
      (
         this : in out SqlConnectionStringBuilder.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function AttachDBFilename
      (
         this : in out SqlConnectionStringBuilder.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function PoolBlockingPeriod
      (
         this : in out SqlConnectionStringBuilder.Kind
      )
      return NetFrameworkBase.System.Data.SqlClient.PoolBlockingPeriod.Kind;
      
      procedure PoolBlockingPeriod
      (
         this : in out SqlConnectionStringBuilder.Kind;
         value : NetFrameworkBase.System.Data.SqlClient.PoolBlockingPeriod.Kind
      );
      
      function ConnectionReset
      (
         this : in out SqlConnectionStringBuilder.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function ContextConnection
      (
         this : in out SqlConnectionStringBuilder.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function ConnectTimeout
      (
         this : in out SqlConnectionStringBuilder.Kind
      )
      return NetFrameworkBase.Int32;
      
      function CurrentLanguage
      (
         this : in out SqlConnectionStringBuilder.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function DataSource
      (
         this : in out SqlConnectionStringBuilder.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function Encrypt
      (
         this : in out SqlConnectionStringBuilder.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function ColumnEncryptionSetting
      (
         this : in out SqlConnectionStringBuilder.Kind
      )
      return NetFrameworkBase.System.Data.SqlClient.SqlConnectionColumnEncryptionSetting.Kind;
      
      procedure ColumnEncryptionSetting
      (
         this : in out SqlConnectionStringBuilder.Kind;
         value : NetFrameworkBase.System.Data.SqlClient.SqlConnectionColumnEncryptionSetting.Kind
      );
      
      function EnclaveAttestationUrl
      (
         this : in out SqlConnectionStringBuilder.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function TrustServerCertificate
      (
         this : in out SqlConnectionStringBuilder.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function Enlist
      (
         this : in out SqlConnectionStringBuilder.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function FailoverPartner
      (
         this : in out SqlConnectionStringBuilder.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function InitialCatalog
      (
         this : in out SqlConnectionStringBuilder.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function IntegratedSecurity
      (
         this : in out SqlConnectionStringBuilder.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function Authentication
      (
         this : in out SqlConnectionStringBuilder.Kind
      )
      return NetFrameworkBase.System.Data.SqlClient.SqlAuthenticationMethod.Kind;
      
      procedure Authentication
      (
         this : in out SqlConnectionStringBuilder.Kind;
         value : NetFrameworkBase.System.Data.SqlClient.SqlAuthenticationMethod.Kind
      );
      
      function LoadBalanceTimeout
      (
         this : in out SqlConnectionStringBuilder.Kind
      )
      return NetFrameworkBase.Int32;
      
      function MaxPoolSize
      (
         this : in out SqlConnectionStringBuilder.Kind
      )
      return NetFrameworkBase.Int32;
      
      function ConnectRetryCount
      (
         this : in out SqlConnectionStringBuilder.Kind
      )
      return NetFrameworkBase.Int32;
      
      function ConnectRetryInterval
      (
         this : in out SqlConnectionStringBuilder.Kind
      )
      return NetFrameworkBase.Int32;
      
      function MinPoolSize
      (
         this : in out SqlConnectionStringBuilder.Kind
      )
      return NetFrameworkBase.Int32;
      
      function MultipleActiveResultSets
      (
         this : in out SqlConnectionStringBuilder.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function MultiSubnetFailover
      (
         this : in out SqlConnectionStringBuilder.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function TransparentNetworkIPResolution
      (
         this : in out SqlConnectionStringBuilder.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function NetworkLibrary
      (
         this : in out SqlConnectionStringBuilder.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function PacketSize
      (
         this : in out SqlConnectionStringBuilder.Kind
      )
      return NetFrameworkBase.Int32;
      
      function Password
      (
         this : in out SqlConnectionStringBuilder.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function PersistSecurityInfo
      (
         this : in out SqlConnectionStringBuilder.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function Pooling
      (
         this : in out SqlConnectionStringBuilder.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function Replication
      (
         this : in out SqlConnectionStringBuilder.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function TransactionBinding
      (
         this : in out SqlConnectionStringBuilder.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function TypeSystemVersion
      (
         this : in out SqlConnectionStringBuilder.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function UserID
      (
         this : in out SqlConnectionStringBuilder.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function UserInstance
      (
         this : in out SqlConnectionStringBuilder.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function WorkstationID
      (
         this : in out SqlConnectionStringBuilder.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function IsFixedSize
      (
         this : in out SqlConnectionStringBuilder.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure Clear
      (
         this : in out SqlConnectionStringBuilder.Kind
      );
      
      function TryGetValue
      (
         this : in out SqlConnectionStringBuilder.Kind;
         keyword : NetFrameworkBase.BSTR; 
         value : out NetFrameworkBase.System.Object.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      
      procedure Item
      (
         this : in out SqlConnectionStringBuilder.Kind;
         keyword : NetFrameworkBase.BSTR; 
         value : NetFrameworkBase.System.Object.Kind_Ptr
      );
      
      procedure ApplicationName
      (
         this : in out SqlConnectionStringBuilder.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      procedure AsynchronousProcessing
      (
         this : in out SqlConnectionStringBuilder.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      procedure AttachDBFilename
      (
         this : in out SqlConnectionStringBuilder.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      procedure ConnectionReset
      (
         this : in out SqlConnectionStringBuilder.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      procedure ContextConnection
      (
         this : in out SqlConnectionStringBuilder.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      procedure ConnectTimeout
      (
         this : in out SqlConnectionStringBuilder.Kind;
         value : NetFrameworkBase.Int32
      );
      
      procedure CurrentLanguage
      (
         this : in out SqlConnectionStringBuilder.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      procedure DataSource
      (
         this : in out SqlConnectionStringBuilder.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      procedure Encrypt
      (
         this : in out SqlConnectionStringBuilder.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      procedure EnclaveAttestationUrl
      (
         this : in out SqlConnectionStringBuilder.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      procedure TrustServerCertificate
      (
         this : in out SqlConnectionStringBuilder.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      procedure Enlist
      (
         this : in out SqlConnectionStringBuilder.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      procedure FailoverPartner
      (
         this : in out SqlConnectionStringBuilder.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      procedure InitialCatalog
      (
         this : in out SqlConnectionStringBuilder.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      procedure IntegratedSecurity
      (
         this : in out SqlConnectionStringBuilder.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      procedure LoadBalanceTimeout
      (
         this : in out SqlConnectionStringBuilder.Kind;
         value : NetFrameworkBase.Int32
      );
      
      procedure MaxPoolSize
      (
         this : in out SqlConnectionStringBuilder.Kind;
         value : NetFrameworkBase.Int32
      );
      
      procedure ConnectRetryCount
      (
         this : in out SqlConnectionStringBuilder.Kind;
         value : NetFrameworkBase.Int32
      );
      
      procedure ConnectRetryInterval
      (
         this : in out SqlConnectionStringBuilder.Kind;
         value : NetFrameworkBase.Int32
      );
      
      procedure MinPoolSize
      (
         this : in out SqlConnectionStringBuilder.Kind;
         value : NetFrameworkBase.Int32
      );
      
      procedure MultipleActiveResultSets
      (
         this : in out SqlConnectionStringBuilder.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      procedure MultiSubnetFailover
      (
         this : in out SqlConnectionStringBuilder.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      procedure TransparentNetworkIPResolution
      (
         this : in out SqlConnectionStringBuilder.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      procedure NetworkLibrary
      (
         this : in out SqlConnectionStringBuilder.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      procedure PacketSize
      (
         this : in out SqlConnectionStringBuilder.Kind;
         value : NetFrameworkBase.Int32
      );
      
      procedure Password
      (
         this : in out SqlConnectionStringBuilder.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      procedure PersistSecurityInfo
      (
         this : in out SqlConnectionStringBuilder.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      procedure Pooling
      (
         this : in out SqlConnectionStringBuilder.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      procedure Replication
      (
         this : in out SqlConnectionStringBuilder.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      procedure TransactionBinding
      (
         this : in out SqlConnectionStringBuilder.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      procedure TypeSystemVersion
      (
         this : in out SqlConnectionStringBuilder.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      procedure UserID
      (
         this : in out SqlConnectionStringBuilder.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      procedure UserInstance
      (
         this : in out SqlConnectionStringBuilder.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      procedure WorkstationID
      (
         this : in out SqlConnectionStringBuilder.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      function Keys
      (
         this : in out SqlConnectionStringBuilder.Kind
      )
      return NetFrameworkBase.System.Collections.ICollection.Kind_Ptr;
      
      function Values
      (
         this : in out SqlConnectionStringBuilder.Kind
      )
      return NetFrameworkBase.System.Collections.ICollection.Kind_Ptr;
      
      function ContainsKey
      (
         this : in out SqlConnectionStringBuilder.Kind;
         keyword : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.Boolean;
      
      function Remove
      (
         this : in out SqlConnectionStringBuilder.Kind;
         keyword : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.Boolean;
      
      function ShouldSerialize
      (
         this : in out SqlConnectionStringBuilder.Kind;
         keyword : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.Boolean;
      
      function Constructor return NetFrameworkBase.System.Data.SqlClient.SqlConnectionStringBuilder.Kind_Ptr;
      
      function Constructor
      (
         connectionString : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Data.SqlClient.SqlConnectionStringBuilder.Kind_Ptr;
      
end;