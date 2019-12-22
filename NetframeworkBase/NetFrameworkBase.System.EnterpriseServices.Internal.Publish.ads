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
--------------------------------------------------------------------------------
package NetFrameworkBase.System.EnterpriseServices.Internal.Publish is
   
   type Kind is new NetFrameworkBase.System.Object.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      procedure UnRegisterAssembly
      (
         this : in out Publish.Kind;
         AssemblyPath : NetFrameworkBase.BSTR
      );
      
      procedure GetAssemblyNameForCache
      (
         this : in out Publish.Kind;
         TypeLibPath : NetFrameworkBase.BSTR; 
         CachePath : out NetFrameworkBase.BSTR
      );
      
      procedure RegisterAssembly
      (
         this : in out Publish.Kind;
         AssemblyPath : NetFrameworkBase.BSTR
      );
      
      procedure GacInstall
      (
         this : in out Publish.Kind;
         AssemblyPath : NetFrameworkBase.BSTR
      );
      
      procedure GacRemove
      (
         this : in out Publish.Kind;
         AssemblyPath : NetFrameworkBase.BSTR
      );
      
      function GetClientPhysicalPath
      (
         CreateDir : NetFrameworkBase.Boolean
      )
      return NetFrameworkBase.BSTR;
      
      procedure ParseUrl
      (
         FullUrl : NetFrameworkBase.BSTR; 
         BaseUrl : out NetFrameworkBase.BSTR; 
         VirtualRoot : out NetFrameworkBase.BSTR
      )
      ;
      
      procedure CreateVirtualRoot
      (
         this : in out Publish.Kind;
         Operation : NetFrameworkBase.BSTR; 
         FullUrl : NetFrameworkBase.BSTR; 
         BaseUrl : out NetFrameworkBase.BSTR; 
         VirtualRoot : out NetFrameworkBase.BSTR; 
         PhysicalPath : out NetFrameworkBase.BSTR; 
         Error : out NetFrameworkBase.BSTR
      );
      
      procedure DeleteVirtualRoot
      (
         this : in out Publish.Kind;
         RootWebServer : NetFrameworkBase.BSTR; 
         FullUrl : NetFrameworkBase.BSTR; 
         Error : out NetFrameworkBase.BSTR
      );
      
      procedure CreateMailBox
      (
         this : in out Publish.Kind;
         RootMailServer : NetFrameworkBase.BSTR; 
         MailBox : NetFrameworkBase.BSTR; 
         SmtpName : out NetFrameworkBase.BSTR; 
         Domain : out NetFrameworkBase.BSTR; 
         PhysicalPath : out NetFrameworkBase.BSTR; 
         Error : out NetFrameworkBase.BSTR
      );
      
      procedure DeleteMailBox
      (
         this : in out Publish.Kind;
         RootMailServer : NetFrameworkBase.BSTR; 
         MailBox : NetFrameworkBase.BSTR; 
         Error : out NetFrameworkBase.BSTR
      );
      
      procedure ProcessServerTlb
      (
         this : in out Publish.Kind;
         ProgId : NetFrameworkBase.BSTR; 
         SrcTlbPath : NetFrameworkBase.BSTR; 
         PhysicalPath : NetFrameworkBase.BSTR; 
         Operation : NetFrameworkBase.BSTR; 
         strAssemblyName : out NetFrameworkBase.BSTR; 
         TypeName : out NetFrameworkBase.BSTR; 
         Error : out NetFrameworkBase.BSTR
      );
      
      function GetTypeNameFromProgId
      (
         this : in out Publish.Kind;
         AssemblyPath : NetFrameworkBase.BSTR; 
         ProgId : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.BSTR;
      
      procedure ProcessClientTlb
      (
         this : in out Publish.Kind;
         ProgId : NetFrameworkBase.BSTR; 
         SrcTlbPath : NetFrameworkBase.BSTR; 
         PhysicalPath : NetFrameworkBase.BSTR; 
         VRoot : NetFrameworkBase.BSTR; 
         BaseUrl : NetFrameworkBase.BSTR; 
         Mode : NetFrameworkBase.BSTR; 
         Transport : NetFrameworkBase.BSTR; 
         AssemblyName : out NetFrameworkBase.BSTR; 
         TypeName : out NetFrameworkBase.BSTR; 
         Error : out NetFrameworkBase.BSTR
      );
      
      function Constructor return NetFrameworkBase.System.EnterpriseServices.Internal.Publish.Kind_Ptr;
      
end;
