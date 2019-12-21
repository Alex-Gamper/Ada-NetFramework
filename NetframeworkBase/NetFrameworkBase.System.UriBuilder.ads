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
limited with NetFrameworkBase.System.Uri;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.UriBuilder is
   
   type Kind is new NetFrameworkBase.System.Object.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function Fragment
      (
         this : in out UriBuilder.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function Host
      (
         this : in out UriBuilder.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function Password
      (
         this : in out UriBuilder.Kind
      )
      return NetFrameworkBase.BSTR;
      
      procedure Password
      (
         this : in out UriBuilder.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      function Path
      (
         this : in out UriBuilder.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function Port
      (
         this : in out UriBuilder.Kind
      )
      return NetFrameworkBase.Int32;
      
      procedure Port
      (
         this : in out UriBuilder.Kind;
         value : NetFrameworkBase.Int32
      );
      
      function Query
      (
         this : in out UriBuilder.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function Scheme
      (
         this : in out UriBuilder.Kind
      )
      return NetFrameworkBase.BSTR;
      
      procedure Scheme
      (
         this : in out UriBuilder.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      function Uri
      (
         this : in out UriBuilder.Kind
      )
      return NetFrameworkBase.System.Uri.Kind_Ptr;
      
      function UserName
      (
         this : in out UriBuilder.Kind
      )
      return NetFrameworkBase.BSTR;
      
      procedure UserName
      (
         this : in out UriBuilder.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      function Equals
      (
         this : in out UriBuilder.Kind;
         rparam : NetFrameworkBase.System.Object.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      
      function GetHashCode
      (
         this : in out UriBuilder.Kind
      )
      return NetFrameworkBase.Int32;
      
      procedure Fragment
      (
         this : in out UriBuilder.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      function ToString
      (
         this : in out UriBuilder.Kind
      )
      return NetFrameworkBase.BSTR;
      
      procedure Host
      (
         this : in out UriBuilder.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      procedure Path
      (
         this : in out UriBuilder.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      procedure Query
      (
         this : in out UriBuilder.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      function Constructor return NetFrameworkBase.System.UriBuilder.Kind_Ptr;
      
      function Constructor
      (
         uri : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.UriBuilder.Kind_Ptr;
      
      function Constructor
      (
         uri : NetFrameworkBase.System.Uri.Kind_Ptr
      )
      return NetFrameworkBase.System.UriBuilder.Kind_Ptr;
      
      function Constructor
      (
         schemeName : NetFrameworkBase.BSTR;
         hostName : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.UriBuilder.Kind_Ptr;
      
      function Constructor
      (
         scheme : NetFrameworkBase.BSTR;
         host : NetFrameworkBase.BSTR;
         portNumber : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.UriBuilder.Kind_Ptr;
      
      function Constructor
      (
         scheme : NetFrameworkBase.BSTR;
         host : NetFrameworkBase.BSTR;
         port : NetFrameworkBase.Int32;
         pathValue : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.UriBuilder.Kind_Ptr;
      
      function Constructor
      (
         scheme : NetFrameworkBase.BSTR;
         host : NetFrameworkBase.BSTR;
         port : NetFrameworkBase.Int32;
         path : NetFrameworkBase.BSTR;
         extraValue : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.UriBuilder.Kind_Ptr;
      
end;
