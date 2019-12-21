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
with NetFrameworkBase.System.Runtime.Remoting.Lifetime.ClientSponsor;
with NetFrameworkBase.System.Runtime.Remoting.Lifetime.ILease;
with NetFrameworkBase.System.Runtime.Remoting.Lifetime.ISponsor;
with NetFrameworkBase.System.Runtime.Remoting.Lifetime.LeaseState;
with NetFrameworkBase.System.Runtime.Remoting.Lifetime.LifetimeServices;
with NetFrameworkBase.System.TimeSpan;
--------------------------------------------------------------------------------
package NetFramework.System.Runtime.Remoting.Lifetime is
   
      --------------------------------------------------------------------------
      subtype ClientSponsor is NetFrameworkBase.System.Runtime.Remoting.Lifetime.ClientSponsor.Kind_Ptr;
      subtype ClientSponsor_Array is NetFrameworkBase.System.Runtime.Remoting.Lifetime.ClientSponsor.Kind_Array;
      
         function Constructor return NetFrameworkBase.System.Runtime.Remoting.Lifetime.ClientSponsor.Kind_Ptr renames NetFrameworkBase.System.Runtime.Remoting.Lifetime.ClientSponsor.Constructor;
         
         function Constructor
         (
            renewalTime : NetFrameworkBase.System.TimeSpan.Kind_Ptr
         )
         return NetFrameworkBase.System.Runtime.Remoting.Lifetime.ClientSponsor.Kind_Ptr renames NetFrameworkBase.System.Runtime.Remoting.Lifetime.ClientSponsor.Constructor; 
         
      --------------------------------------------------------------------------
      subtype ILease is NetFrameworkBase.System.Runtime.Remoting.Lifetime.ILease.Kind_Ptr;
      subtype ILease_Array is NetFrameworkBase.System.Runtime.Remoting.Lifetime.ILease.Kind_Array;
      
      --------------------------------------------------------------------------
      subtype ISponsor is NetFrameworkBase.System.Runtime.Remoting.Lifetime.ISponsor.Kind_Ptr;
      subtype ISponsor_Array is NetFrameworkBase.System.Runtime.Remoting.Lifetime.ISponsor.Kind_Array;
      
      --------------------------------------------------------------------------
      subtype LeaseState is NetFrameworkBase.System.Runtime.Remoting.Lifetime.LeaseState.Kind;
      
      --------------------------------------------------------------------------
      subtype LifetimeServices is NetFrameworkBase.System.Runtime.Remoting.Lifetime.LifetimeServices.Kind_Ptr;
      subtype LifetimeServices_Array is NetFrameworkBase.System.Runtime.Remoting.Lifetime.LifetimeServices.Kind_Array;
      
         function Constructor return NetFrameworkBase.System.Runtime.Remoting.Lifetime.LifetimeServices.Kind_Ptr renames NetFrameworkBase.System.Runtime.Remoting.Lifetime.LifetimeServices.Constructor;
         
   
end;