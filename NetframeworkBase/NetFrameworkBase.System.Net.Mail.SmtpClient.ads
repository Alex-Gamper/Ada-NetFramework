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
limited with NetFrameworkBase.System.Net.ICredentialsByHost;
limited with NetFrameworkBase.System.Net.Mail.SmtpDeliveryMethod;
limited with NetFrameworkBase.System.Net.Mail.SmtpDeliveryFormat;
limited with NetFrameworkBase.System.Net.Mail.SendCompletedEventHandler;
limited with NetFrameworkBase.System.Net.Mail.MailMessage;
limited with NetFrameworkBase.System.Net.ServicePoint;
limited with NetFrameworkBase.System.Security.Cryptography.X509Certificates.X509CertificateCollection;
limited with NetFrameworkBase.System.Threading.Tasks.Task_x;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Net.Mail.SmtpClient is
   
   type Kind is new NetFrameworkBase.System.Object.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function Host
      (
         this : in out SmtpClient.Kind
      )
      return NetFrameworkBase.BSTR;
      
      procedure Host
      (
         this : in out SmtpClient.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      function Port
      (
         this : in out SmtpClient.Kind
      )
      return NetFrameworkBase.Int32;
      
      procedure Port
      (
         this : in out SmtpClient.Kind;
         value : NetFrameworkBase.Int32
      );
      
      function UseDefaultCredentials
      (
         this : in out SmtpClient.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure UseDefaultCredentials
      (
         this : in out SmtpClient.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      function Credentials
      (
         this : in out SmtpClient.Kind
      )
      return NetFrameworkBase.System.Net.ICredentialsByHost.Kind_Ptr;
      
      procedure Credentials
      (
         this : in out SmtpClient.Kind;
         value : NetFrameworkBase.System.Net.ICredentialsByHost.Kind_Ptr
      );
      
      function Timeout
      (
         this : in out SmtpClient.Kind
      )
      return NetFrameworkBase.Int32;
      
      procedure Timeout
      (
         this : in out SmtpClient.Kind;
         value : NetFrameworkBase.Int32
      );
      
      function ServicePoint
      (
         this : in out SmtpClient.Kind
      )
      return NetFrameworkBase.System.Net.ServicePoint.Kind_Ptr;
      
      function DeliveryMethod
      (
         this : in out SmtpClient.Kind
      )
      return NetFrameworkBase.System.Net.Mail.SmtpDeliveryMethod.Kind;
      
      procedure DeliveryMethod
      (
         this : in out SmtpClient.Kind;
         value : NetFrameworkBase.System.Net.Mail.SmtpDeliveryMethod.Kind
      );
      
      function DeliveryFormat
      (
         this : in out SmtpClient.Kind
      )
      return NetFrameworkBase.System.Net.Mail.SmtpDeliveryFormat.Kind;
      
      procedure DeliveryFormat
      (
         this : in out SmtpClient.Kind;
         value : NetFrameworkBase.System.Net.Mail.SmtpDeliveryFormat.Kind
      );
      
      function PickupDirectoryLocation
      (
         this : in out SmtpClient.Kind
      )
      return NetFrameworkBase.BSTR;
      
      procedure PickupDirectoryLocation
      (
         this : in out SmtpClient.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      function EnableSsl
      (
         this : in out SmtpClient.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure EnableSsl
      (
         this : in out SmtpClient.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      function ClientCertificates
      (
         this : in out SmtpClient.Kind
      )
      return NetFrameworkBase.System.Security.Cryptography.X509Certificates.X509CertificateCollection.Kind_Ptr;
      
      procedure TargetName
      (
         this : in out SmtpClient.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      function TargetName
      (
         this : in out SmtpClient.Kind
      )
      return NetFrameworkBase.BSTR;
      
      procedure Send
      (
         this : in out SmtpClient.Kind;
         from : NetFrameworkBase.BSTR; 
         recipients : NetFrameworkBase.BSTR; 
         subject : NetFrameworkBase.BSTR; 
         body_x : NetFrameworkBase.BSTR
      );
      
      procedure SendAsync
      (
         this : in out SmtpClient.Kind;
         from : NetFrameworkBase.BSTR; 
         recipients : NetFrameworkBase.BSTR; 
         subject : NetFrameworkBase.BSTR; 
         body_x : NetFrameworkBase.BSTR; 
         userToken : NetFrameworkBase.System.Object.Kind_Ptr
      );
      
      function SendMailAsync
      (
         this : in out SmtpClient.Kind;
         from : NetFrameworkBase.BSTR; 
         recipients : NetFrameworkBase.BSTR; 
         subject : NetFrameworkBase.BSTR; 
         body_x : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Threading.Tasks.Task_x.Kind_Ptr;
      
      procedure Dispose
      (
         this : in out SmtpClient.Kind
      );
      
      procedure add_SendCompleted
      (
         this : in out SmtpClient.Kind;
         value : NetFrameworkBase.System.Net.Mail.SendCompletedEventHandler.Kind_Ptr
      );
      
      procedure remove_SendCompleted
      (
         this : in out SmtpClient.Kind;
         value : NetFrameworkBase.System.Net.Mail.SendCompletedEventHandler.Kind_Ptr
      );
      
      procedure Send
      (
         this : in out SmtpClient.Kind;
         message : NetFrameworkBase.System.Net.Mail.MailMessage.Kind_Ptr
      );
      
      procedure SendAsync
      (
         this : in out SmtpClient.Kind;
         message : NetFrameworkBase.System.Net.Mail.MailMessage.Kind_Ptr; 
         userToken : NetFrameworkBase.System.Object.Kind_Ptr
      );
      
      procedure SendAsyncCancel
      (
         this : in out SmtpClient.Kind
      );
      
      function SendMailAsync
      (
         this : in out SmtpClient.Kind;
         message : NetFrameworkBase.System.Net.Mail.MailMessage.Kind_Ptr
      )
      return NetFrameworkBase.System.Threading.Tasks.Task_x.Kind_Ptr;
      
      function Constructor return NetFrameworkBase.System.Net.Mail.SmtpClient.Kind_Ptr;
      
      function Constructor
      (
         host : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Net.Mail.SmtpClient.Kind_Ptr;
      
      function Constructor
      (
         host : NetFrameworkBase.BSTR;
         port : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.Net.Mail.SmtpClient.Kind_Ptr;
      
end;