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
with NetFrameworkBase.System.Net.Mail.AlternateView;
with NetFrameworkBase.System.Net.Mail.AlternateViewCollection;
with NetFrameworkBase.System.Net.Mail.AttachmentBase;
with NetFrameworkBase.System.Net.Mail.Attachment;
with NetFrameworkBase.System.Net.Mail.AttachmentCollection;
with NetFrameworkBase.System.Net.Mail.LinkedResource;
with NetFrameworkBase.System.Net.Mail.LinkedResourceCollection;
with NetFrameworkBase.System.Net.Mail.MailAddress;
with NetFrameworkBase.System.Net.Mail.MailAddressCollection;
with NetFrameworkBase.System.Net.Mail.DeliveryNotificationOptions;
with NetFrameworkBase.System.Net.Mail.MailMessage;
with NetFrameworkBase.System.Net.Mail.MailPriority;
with NetFrameworkBase.System.Net.Mail.SendCompletedEventHandler;
with NetFrameworkBase.System.Net.Mail.SmtpDeliveryMethod;
with NetFrameworkBase.System.Net.Mail.SmtpDeliveryFormat;
with NetFrameworkBase.System.Net.Mail.SmtpClient;
with NetFrameworkBase.System.Net.Mail.SmtpException;
with NetFrameworkBase.System.Net.Mail.SmtpFailedRecipientException;
with NetFrameworkBase.System.Net.Mail.SmtpFailedRecipientsException;
with NetFrameworkBase.System.Net.Mail.SmtpAccess;
with NetFrameworkBase.System.Net.Mail.SmtpPermissionAttribute;
with NetFrameworkBase.System.Net.Mail.SmtpPermission;
with NetFrameworkBase.System.Net.Mail.SmtpStatusCode;
with NetFrameworkBase.System.Net.Mime.ContentType;
with NetFrameworkBase.System.IO.Stream;
with NetFrameworkBase.System.Text.Encoding;
with NetFrameworkBase.System.Object;
with NetFrameworkBase.System.Exception_x;
with NetFrameworkBase.System.Security.Permissions.SecurityAction;
with NetFrameworkBase.System.Security.Permissions.PermissionState;
--------------------------------------------------------------------------------
package NetFramework.System.Net.Mail is
   
      --------------------------------------------------------------------------
      subtype AlternateView is NetFrameworkBase.System.Net.Mail.AlternateView.Kind_Ptr;
      subtype AlternateView_Array is NetFrameworkBase.System.Net.Mail.AlternateView.Kind_Array;
      
         function Constructor
         (
            fileName : NetFrameworkBase.BSTR
         )
         return NetFrameworkBase.System.Net.Mail.AlternateView.Kind_Ptr renames NetFrameworkBase.System.Net.Mail.AlternateView.Constructor; 
         
         function Constructor
         (
            fileName : NetFrameworkBase.BSTR;
            mediaType : NetFrameworkBase.BSTR
         )
         return NetFrameworkBase.System.Net.Mail.AlternateView.Kind_Ptr renames NetFrameworkBase.System.Net.Mail.AlternateView.Constructor; 
         
         function Constructor
         (
            fileName : NetFrameworkBase.BSTR;
            contentType : NetFrameworkBase.System.Net.Mime.ContentType.Kind_Ptr
         )
         return NetFrameworkBase.System.Net.Mail.AlternateView.Kind_Ptr renames NetFrameworkBase.System.Net.Mail.AlternateView.Constructor; 
         
         function Constructor
         (
            contentStream : NetFrameworkBase.System.IO.Stream.Kind_Ptr
         )
         return NetFrameworkBase.System.Net.Mail.AlternateView.Kind_Ptr renames NetFrameworkBase.System.Net.Mail.AlternateView.Constructor; 
         
         function Constructor
         (
            contentStream : NetFrameworkBase.System.IO.Stream.Kind_Ptr;
            mediaType : NetFrameworkBase.BSTR
         )
         return NetFrameworkBase.System.Net.Mail.AlternateView.Kind_Ptr renames NetFrameworkBase.System.Net.Mail.AlternateView.Constructor; 
         
         function Constructor
         (
            contentStream : NetFrameworkBase.System.IO.Stream.Kind_Ptr;
            contentType : NetFrameworkBase.System.Net.Mime.ContentType.Kind_Ptr
         )
         return NetFrameworkBase.System.Net.Mail.AlternateView.Kind_Ptr renames NetFrameworkBase.System.Net.Mail.AlternateView.Constructor; 
         
      --------------------------------------------------------------------------
      subtype AlternateViewCollection is NetFrameworkBase.System.Net.Mail.AlternateViewCollection.Kind_Ptr;
      subtype AlternateViewCollection_Array is NetFrameworkBase.System.Net.Mail.AlternateViewCollection.Kind_Array;
      
      --------------------------------------------------------------------------
      subtype AttachmentBase is NetFrameworkBase.System.Net.Mail.AttachmentBase.Kind_Ptr;
      subtype AttachmentBase_Array is NetFrameworkBase.System.Net.Mail.AttachmentBase.Kind_Array;
      
      --------------------------------------------------------------------------
      subtype Attachment is NetFrameworkBase.System.Net.Mail.Attachment.Kind_Ptr;
      subtype Attachment_Array is NetFrameworkBase.System.Net.Mail.Attachment.Kind_Array;
      
         function Constructor
         (
            fileName : NetFrameworkBase.BSTR
         )
         return NetFrameworkBase.System.Net.Mail.Attachment.Kind_Ptr renames NetFrameworkBase.System.Net.Mail.Attachment.Constructor; 
         
         function Constructor
         (
            fileName : NetFrameworkBase.BSTR;
            mediaType : NetFrameworkBase.BSTR
         )
         return NetFrameworkBase.System.Net.Mail.Attachment.Kind_Ptr renames NetFrameworkBase.System.Net.Mail.Attachment.Constructor; 
         
         function Constructor
         (
            fileName : NetFrameworkBase.BSTR;
            contentType : NetFrameworkBase.System.Net.Mime.ContentType.Kind_Ptr
         )
         return NetFrameworkBase.System.Net.Mail.Attachment.Kind_Ptr renames NetFrameworkBase.System.Net.Mail.Attachment.Constructor; 
         
         function Constructor
         (
            contentStream : NetFrameworkBase.System.IO.Stream.Kind_Ptr;
            name : NetFrameworkBase.BSTR
         )
         return NetFrameworkBase.System.Net.Mail.Attachment.Kind_Ptr renames NetFrameworkBase.System.Net.Mail.Attachment.Constructor; 
         
         function Constructor
         (
            contentStream : NetFrameworkBase.System.IO.Stream.Kind_Ptr;
            name : NetFrameworkBase.BSTR;
            mediaType : NetFrameworkBase.BSTR
         )
         return NetFrameworkBase.System.Net.Mail.Attachment.Kind_Ptr renames NetFrameworkBase.System.Net.Mail.Attachment.Constructor; 
         
         function Constructor
         (
            contentStream : NetFrameworkBase.System.IO.Stream.Kind_Ptr;
            contentType : NetFrameworkBase.System.Net.Mime.ContentType.Kind_Ptr
         )
         return NetFrameworkBase.System.Net.Mail.Attachment.Kind_Ptr renames NetFrameworkBase.System.Net.Mail.Attachment.Constructor; 
         
      --------------------------------------------------------------------------
      subtype AttachmentCollection is NetFrameworkBase.System.Net.Mail.AttachmentCollection.Kind_Ptr;
      subtype AttachmentCollection_Array is NetFrameworkBase.System.Net.Mail.AttachmentCollection.Kind_Array;
      
      --------------------------------------------------------------------------
      subtype LinkedResource is NetFrameworkBase.System.Net.Mail.LinkedResource.Kind_Ptr;
      subtype LinkedResource_Array is NetFrameworkBase.System.Net.Mail.LinkedResource.Kind_Array;
      
         function Constructor
         (
            fileName : NetFrameworkBase.BSTR
         )
         return NetFrameworkBase.System.Net.Mail.LinkedResource.Kind_Ptr renames NetFrameworkBase.System.Net.Mail.LinkedResource.Constructor; 
         
         function Constructor
         (
            fileName : NetFrameworkBase.BSTR;
            mediaType : NetFrameworkBase.BSTR
         )
         return NetFrameworkBase.System.Net.Mail.LinkedResource.Kind_Ptr renames NetFrameworkBase.System.Net.Mail.LinkedResource.Constructor; 
         
         function Constructor
         (
            fileName : NetFrameworkBase.BSTR;
            contentType : NetFrameworkBase.System.Net.Mime.ContentType.Kind_Ptr
         )
         return NetFrameworkBase.System.Net.Mail.LinkedResource.Kind_Ptr renames NetFrameworkBase.System.Net.Mail.LinkedResource.Constructor; 
         
         function Constructor
         (
            contentStream : NetFrameworkBase.System.IO.Stream.Kind_Ptr
         )
         return NetFrameworkBase.System.Net.Mail.LinkedResource.Kind_Ptr renames NetFrameworkBase.System.Net.Mail.LinkedResource.Constructor; 
         
         function Constructor
         (
            contentStream : NetFrameworkBase.System.IO.Stream.Kind_Ptr;
            mediaType : NetFrameworkBase.BSTR
         )
         return NetFrameworkBase.System.Net.Mail.LinkedResource.Kind_Ptr renames NetFrameworkBase.System.Net.Mail.LinkedResource.Constructor; 
         
         function Constructor
         (
            contentStream : NetFrameworkBase.System.IO.Stream.Kind_Ptr;
            contentType : NetFrameworkBase.System.Net.Mime.ContentType.Kind_Ptr
         )
         return NetFrameworkBase.System.Net.Mail.LinkedResource.Kind_Ptr renames NetFrameworkBase.System.Net.Mail.LinkedResource.Constructor; 
         
      --------------------------------------------------------------------------
      subtype LinkedResourceCollection is NetFrameworkBase.System.Net.Mail.LinkedResourceCollection.Kind_Ptr;
      subtype LinkedResourceCollection_Array is NetFrameworkBase.System.Net.Mail.LinkedResourceCollection.Kind_Array;
      
      --------------------------------------------------------------------------
      subtype MailAddress is NetFrameworkBase.System.Net.Mail.MailAddress.Kind_Ptr;
      subtype MailAddress_Array is NetFrameworkBase.System.Net.Mail.MailAddress.Kind_Array;
      
         function Constructor
         (
            address : NetFrameworkBase.BSTR
         )
         return NetFrameworkBase.System.Net.Mail.MailAddress.Kind_Ptr renames NetFrameworkBase.System.Net.Mail.MailAddress.Constructor; 
         
         function Constructor
         (
            address : NetFrameworkBase.BSTR;
            displayName : NetFrameworkBase.BSTR
         )
         return NetFrameworkBase.System.Net.Mail.MailAddress.Kind_Ptr renames NetFrameworkBase.System.Net.Mail.MailAddress.Constructor; 
         
         function Constructor
         (
            address : NetFrameworkBase.BSTR;
            displayName : NetFrameworkBase.BSTR;
            displayNameEncoding : NetFrameworkBase.System.Text.Encoding.Kind_Ptr
         )
         return NetFrameworkBase.System.Net.Mail.MailAddress.Kind_Ptr renames NetFrameworkBase.System.Net.Mail.MailAddress.Constructor; 
         
      --------------------------------------------------------------------------
      subtype MailAddressCollection is NetFrameworkBase.System.Net.Mail.MailAddressCollection.Kind_Ptr;
      subtype MailAddressCollection_Array is NetFrameworkBase.System.Net.Mail.MailAddressCollection.Kind_Array;
      
         function Constructor return NetFrameworkBase.System.Net.Mail.MailAddressCollection.Kind_Ptr renames NetFrameworkBase.System.Net.Mail.MailAddressCollection.Constructor;
         
      --------------------------------------------------------------------------
      subtype DeliveryNotificationOptions is NetFrameworkBase.System.Net.Mail.DeliveryNotificationOptions.Kind;
      
      --------------------------------------------------------------------------
      subtype MailMessage is NetFrameworkBase.System.Net.Mail.MailMessage.Kind_Ptr;
      subtype MailMessage_Array is NetFrameworkBase.System.Net.Mail.MailMessage.Kind_Array;
      
         function Constructor return NetFrameworkBase.System.Net.Mail.MailMessage.Kind_Ptr renames NetFrameworkBase.System.Net.Mail.MailMessage.Constructor;
         
         function Constructor
         (
            from : NetFrameworkBase.BSTR;
            to : NetFrameworkBase.BSTR
         )
         return NetFrameworkBase.System.Net.Mail.MailMessage.Kind_Ptr renames NetFrameworkBase.System.Net.Mail.MailMessage.Constructor; 
         
         function Constructor
         (
            from : NetFrameworkBase.BSTR;
            to : NetFrameworkBase.BSTR;
            subject : NetFrameworkBase.BSTR;
            body_x : NetFrameworkBase.BSTR
         )
         return NetFrameworkBase.System.Net.Mail.MailMessage.Kind_Ptr renames NetFrameworkBase.System.Net.Mail.MailMessage.Constructor; 
         
         function Constructor
         (
            from : NetFrameworkBase.System.Net.Mail.MailAddress.Kind_Ptr;
            to : NetFrameworkBase.System.Net.Mail.MailAddress.Kind_Ptr
         )
         return NetFrameworkBase.System.Net.Mail.MailMessage.Kind_Ptr renames NetFrameworkBase.System.Net.Mail.MailMessage.Constructor; 
         
      --------------------------------------------------------------------------
      subtype MailPriority is NetFrameworkBase.System.Net.Mail.MailPriority.Kind;
      
      --------------------------------------------------------------------------
      subtype SendCompletedEventHandler is NetFrameworkBase.System.Net.Mail.SendCompletedEventHandler.Kind_Ptr;
      subtype SendCompletedEventHandler_Array is NetFrameworkBase.System.Net.Mail.SendCompletedEventHandler.Kind_Array;
      
         function Constructor (Callback : NetFrameworkBase.System.Net.Mail.SendCompletedEventHandler.Kind_Callback) return NetFrameworkBase.System.Net.Mail.SendCompletedEventHandler.Kind_Ptr renames NetFrameworkBase.System.Net.Mail.SendCompletedEventHandler.Constructor;
      
      --------------------------------------------------------------------------
      subtype SmtpDeliveryMethod is NetFrameworkBase.System.Net.Mail.SmtpDeliveryMethod.Kind;
      
      --------------------------------------------------------------------------
      subtype SmtpDeliveryFormat is NetFrameworkBase.System.Net.Mail.SmtpDeliveryFormat.Kind;
      
      --------------------------------------------------------------------------
      subtype SmtpClient is NetFrameworkBase.System.Net.Mail.SmtpClient.Kind_Ptr;
      subtype SmtpClient_Array is NetFrameworkBase.System.Net.Mail.SmtpClient.Kind_Array;
      
         function Constructor return NetFrameworkBase.System.Net.Mail.SmtpClient.Kind_Ptr renames NetFrameworkBase.System.Net.Mail.SmtpClient.Constructor;
         
         function Constructor
         (
            host : NetFrameworkBase.BSTR
         )
         return NetFrameworkBase.System.Net.Mail.SmtpClient.Kind_Ptr renames NetFrameworkBase.System.Net.Mail.SmtpClient.Constructor; 
         
         function Constructor
         (
            host : NetFrameworkBase.BSTR;
            port : NetFrameworkBase.Int32
         )
         return NetFrameworkBase.System.Net.Mail.SmtpClient.Kind_Ptr renames NetFrameworkBase.System.Net.Mail.SmtpClient.Constructor; 
         
      --------------------------------------------------------------------------
      subtype SmtpException is NetFrameworkBase.System.Net.Mail.SmtpException.Kind_Ptr;
      subtype SmtpException_Array is NetFrameworkBase.System.Net.Mail.SmtpException.Kind_Array;
      
         function Constructor
         (
            statusCode : NetFrameworkBase.System.Net.Mail.SmtpStatusCode.Kind
         )
         return NetFrameworkBase.System.Net.Mail.SmtpException.Kind_Ptr renames NetFrameworkBase.System.Net.Mail.SmtpException.Constructor; 
         
         function Constructor
         (
            statusCode : NetFrameworkBase.System.Net.Mail.SmtpStatusCode.Kind;
            message : NetFrameworkBase.BSTR
         )
         return NetFrameworkBase.System.Net.Mail.SmtpException.Kind_Ptr renames NetFrameworkBase.System.Net.Mail.SmtpException.Constructor; 
         
         function Constructor return NetFrameworkBase.System.Net.Mail.SmtpException.Kind_Ptr renames NetFrameworkBase.System.Net.Mail.SmtpException.Constructor;
         
         function Constructor
         (
            message : NetFrameworkBase.BSTR
         )
         return NetFrameworkBase.System.Net.Mail.SmtpException.Kind_Ptr renames NetFrameworkBase.System.Net.Mail.SmtpException.Constructor; 
         
         function Constructor
         (
            message : NetFrameworkBase.BSTR;
            innerException : NetFrameworkBase.System.Exception_x.Kind_Ptr
         )
         return NetFrameworkBase.System.Net.Mail.SmtpException.Kind_Ptr renames NetFrameworkBase.System.Net.Mail.SmtpException.Constructor; 
         
      --------------------------------------------------------------------------
      subtype SmtpFailedRecipientException is NetFrameworkBase.System.Net.Mail.SmtpFailedRecipientException.Kind_Ptr;
      subtype SmtpFailedRecipientException_Array is NetFrameworkBase.System.Net.Mail.SmtpFailedRecipientException.Kind_Array;
      
         function Constructor return NetFrameworkBase.System.Net.Mail.SmtpFailedRecipientException.Kind_Ptr renames NetFrameworkBase.System.Net.Mail.SmtpFailedRecipientException.Constructor;
         
         function Constructor
         (
            message : NetFrameworkBase.BSTR
         )
         return NetFrameworkBase.System.Net.Mail.SmtpFailedRecipientException.Kind_Ptr renames NetFrameworkBase.System.Net.Mail.SmtpFailedRecipientException.Constructor; 
         
         function Constructor
         (
            message : NetFrameworkBase.BSTR;
            innerException : NetFrameworkBase.System.Exception_x.Kind_Ptr
         )
         return NetFrameworkBase.System.Net.Mail.SmtpFailedRecipientException.Kind_Ptr renames NetFrameworkBase.System.Net.Mail.SmtpFailedRecipientException.Constructor; 
         
         function Constructor
         (
            statusCode : NetFrameworkBase.System.Net.Mail.SmtpStatusCode.Kind;
            failedRecipient : NetFrameworkBase.BSTR
         )
         return NetFrameworkBase.System.Net.Mail.SmtpFailedRecipientException.Kind_Ptr renames NetFrameworkBase.System.Net.Mail.SmtpFailedRecipientException.Constructor; 
         
         function Constructor
         (
            statusCode : NetFrameworkBase.System.Net.Mail.SmtpStatusCode.Kind;
            failedRecipient : NetFrameworkBase.BSTR;
            serverResponse : NetFrameworkBase.BSTR
         )
         return NetFrameworkBase.System.Net.Mail.SmtpFailedRecipientException.Kind_Ptr renames NetFrameworkBase.System.Net.Mail.SmtpFailedRecipientException.Constructor; 
         
         function Constructor
         (
            message : NetFrameworkBase.BSTR;
            failedRecipient : NetFrameworkBase.BSTR;
            innerException : NetFrameworkBase.System.Exception_x.Kind_Ptr
         )
         return NetFrameworkBase.System.Net.Mail.SmtpFailedRecipientException.Kind_Ptr renames NetFrameworkBase.System.Net.Mail.SmtpFailedRecipientException.Constructor; 
         
      --------------------------------------------------------------------------
      subtype SmtpFailedRecipientsException is NetFrameworkBase.System.Net.Mail.SmtpFailedRecipientsException.Kind_Ptr;
      subtype SmtpFailedRecipientsException_Array is NetFrameworkBase.System.Net.Mail.SmtpFailedRecipientsException.Kind_Array;
      
         function Constructor return NetFrameworkBase.System.Net.Mail.SmtpFailedRecipientsException.Kind_Ptr renames NetFrameworkBase.System.Net.Mail.SmtpFailedRecipientsException.Constructor;
         
         function Constructor
         (
            message : NetFrameworkBase.BSTR
         )
         return NetFrameworkBase.System.Net.Mail.SmtpFailedRecipientsException.Kind_Ptr renames NetFrameworkBase.System.Net.Mail.SmtpFailedRecipientsException.Constructor; 
         
         function Constructor
         (
            message : NetFrameworkBase.BSTR;
            innerException : NetFrameworkBase.System.Exception_x.Kind_Ptr
         )
         return NetFrameworkBase.System.Net.Mail.SmtpFailedRecipientsException.Kind_Ptr renames NetFrameworkBase.System.Net.Mail.SmtpFailedRecipientsException.Constructor; 
         
         function Constructor
         (
            message : NetFrameworkBase.BSTR;
            innerExceptions : NetFrameworkBase.System.Net.Mail.SmtpFailedRecipientException.Kind_Array
         )
         return NetFrameworkBase.System.Net.Mail.SmtpFailedRecipientsException.Kind_Ptr renames NetFrameworkBase.System.Net.Mail.SmtpFailedRecipientsException.Constructor; 
         
      --------------------------------------------------------------------------
      subtype SmtpAccess is NetFrameworkBase.System.Net.Mail.SmtpAccess.Kind;
      
      --------------------------------------------------------------------------
      subtype SmtpPermissionAttribute is NetFrameworkBase.System.Net.Mail.SmtpPermissionAttribute.Kind_Ptr;
      subtype SmtpPermissionAttribute_Array is NetFrameworkBase.System.Net.Mail.SmtpPermissionAttribute.Kind_Array;
      
         function Constructor
         (
            action : NetFrameworkBase.System.Security.Permissions.SecurityAction.Kind
         )
         return NetFrameworkBase.System.Net.Mail.SmtpPermissionAttribute.Kind_Ptr renames NetFrameworkBase.System.Net.Mail.SmtpPermissionAttribute.Constructor; 
         
      --------------------------------------------------------------------------
      subtype SmtpPermission is NetFrameworkBase.System.Net.Mail.SmtpPermission.Kind_Ptr;
      subtype SmtpPermission_Array is NetFrameworkBase.System.Net.Mail.SmtpPermission.Kind_Array;
      
         function Constructor
         (
            state : NetFrameworkBase.System.Security.Permissions.PermissionState.Kind
         )
         return NetFrameworkBase.System.Net.Mail.SmtpPermission.Kind_Ptr renames NetFrameworkBase.System.Net.Mail.SmtpPermission.Constructor; 
         
         function Constructor
         (
            unrestricted : NetFrameworkBase.Boolean
         )
         return NetFrameworkBase.System.Net.Mail.SmtpPermission.Kind_Ptr renames NetFrameworkBase.System.Net.Mail.SmtpPermission.Constructor; 
         
         function Constructor
         (
            access_x : NetFrameworkBase.System.Net.Mail.SmtpAccess.Kind
         )
         return NetFrameworkBase.System.Net.Mail.SmtpPermission.Kind_Ptr renames NetFrameworkBase.System.Net.Mail.SmtpPermission.Constructor; 
         
      --------------------------------------------------------------------------
      subtype SmtpStatusCode is NetFrameworkBase.System.Net.Mail.SmtpStatusCode.Kind;
      
   
end;
