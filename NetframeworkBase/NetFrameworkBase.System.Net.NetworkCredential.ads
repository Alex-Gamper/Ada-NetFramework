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
limited with NetFrameworkBase.System.Security.SecureString;
limited with NetFrameworkBase.System.Uri;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Net.NetworkCredential is
   
   type Kind is new NetFrameworkBase.System.Object.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function UserName
      (
         this : in out NetworkCredential.Kind
      )
      return NetFrameworkBase.BSTR;
      
      procedure UserName
      (
         this : in out NetworkCredential.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      function Password
      (
         this : in out NetworkCredential.Kind
      )
      return NetFrameworkBase.BSTR;
      
      procedure Password
      (
         this : in out NetworkCredential.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      function SecurePassword
      (
         this : in out NetworkCredential.Kind
      )
      return NetFrameworkBase.System.Security.SecureString.Kind_Ptr;
      
      procedure SecurePassword
      (
         this : in out NetworkCredential.Kind;
         value : NetFrameworkBase.System.Security.SecureString.Kind_Ptr
      );
      
      function Domain
      (
         this : in out NetworkCredential.Kind
      )
      return NetFrameworkBase.BSTR;
      
      procedure Domain
      (
         this : in out NetworkCredential.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      function GetCredential
      (
         this : in out NetworkCredential.Kind;
         uri : NetFrameworkBase.System.Uri.Kind_Ptr; 
         authType : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Net.NetworkCredential.Kind_Ptr;
      
      function GetCredential
      (
         this : in out NetworkCredential.Kind;
         host : NetFrameworkBase.BSTR; 
         port : NetFrameworkBase.Int32; 
         authenticationType : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Net.NetworkCredential.Kind_Ptr;
      
      function Constructor return NetFrameworkBase.System.Net.NetworkCredential.Kind_Ptr;
      
      function Constructor
      (
         userName : NetFrameworkBase.BSTR;
         password : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Net.NetworkCredential.Kind_Ptr;
      
      function Constructor
      (
         userName : NetFrameworkBase.BSTR;
         password : NetFrameworkBase.System.Security.SecureString.Kind_Ptr
      )
      return NetFrameworkBase.System.Net.NetworkCredential.Kind_Ptr;
      
      function Constructor
      (
         userName : NetFrameworkBase.BSTR;
         password : NetFrameworkBase.BSTR;
         domain : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Net.NetworkCredential.Kind_Ptr;
      
      function Constructor
      (
         userName : NetFrameworkBase.BSTR;
         password : NetFrameworkBase.System.Security.SecureString.Kind_Ptr;
         domain : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Net.NetworkCredential.Kind_Ptr;
      
end;