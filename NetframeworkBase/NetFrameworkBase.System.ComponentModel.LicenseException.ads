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
with NetFrameworkBase.System.SystemException;
limited with NetFrameworkBase.System.Runtime.Serialization.SerializationInfo;
limited with NetFrameworkBase.System.Runtime.Serialization.StreamingContext;
limited with NetFrameworkBase.System.Type_x;
with NetFrameworkBase.System.Object;
limited with NetFrameworkBase.System.Exception_x;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.ComponentModel.LicenseException is
   
   type Kind is new NetFrameworkBase.System.SystemException.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function LicensedType
      (
         this : in out LicenseException.Kind
      )
      return NetFrameworkBase.System.Type_x.Kind_Ptr;
      
      procedure GetObjectData
      (
         this : in out LicenseException.Kind;
         info : NetFrameworkBase.System.Runtime.Serialization.SerializationInfo.Kind_Ptr; 
         context : NetFrameworkBase.System.Runtime.Serialization.StreamingContext.Kind_Ptr
      );
      
      function Constructor
      (
         type_x : NetFrameworkBase.System.Type_x.Kind_Ptr
      )
      return NetFrameworkBase.System.ComponentModel.LicenseException.Kind_Ptr;
      
      function Constructor
      (
         type_x : NetFrameworkBase.System.Type_x.Kind_Ptr;
         instance_x : NetFrameworkBase.System.Object.Kind_Ptr
      )
      return NetFrameworkBase.System.ComponentModel.LicenseException.Kind_Ptr;
      
      function Constructor
      (
         type_x : NetFrameworkBase.System.Type_x.Kind_Ptr;
         instance_x : NetFrameworkBase.System.Object.Kind_Ptr;
         message : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.ComponentModel.LicenseException.Kind_Ptr;
      
      function Constructor
      (
         type_x : NetFrameworkBase.System.Type_x.Kind_Ptr;
         instance_x : NetFrameworkBase.System.Object.Kind_Ptr;
         message : NetFrameworkBase.BSTR;
         innerException : NetFrameworkBase.System.Exception_x.Kind_Ptr
      )
      return NetFrameworkBase.System.ComponentModel.LicenseException.Kind_Ptr;
      
end;