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
with NetFrameworkBase.System.CodeDom.CodeExpression;
limited with NetFrameworkBase.System.CodeDom.CodeAttributeDeclarationCollection;
limited with NetFrameworkBase.System.CodeDom.FieldDirection;
limited with NetFrameworkBase.System.CodeDom.CodeTypeReference;
limited with NetFrameworkBase.System.Type_x;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.CodeDom.CodeParameterDeclarationExpression is
   
   type Kind is new NetFrameworkBase.System.CodeDom.CodeExpression.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function CustomAttributes
      (
         this : in out CodeParameterDeclarationExpression.Kind
      )
      return NetFrameworkBase.System.CodeDom.CodeAttributeDeclarationCollection.Kind_Ptr;
      
      procedure CustomAttributes
      (
         this : in out CodeParameterDeclarationExpression.Kind;
         value : NetFrameworkBase.System.CodeDom.CodeAttributeDeclarationCollection.Kind_Ptr
      );
      
      function Direction
      (
         this : in out CodeParameterDeclarationExpression.Kind
      )
      return NetFrameworkBase.System.CodeDom.FieldDirection.Kind;
      
      procedure Direction
      (
         this : in out CodeParameterDeclarationExpression.Kind;
         value : NetFrameworkBase.System.CodeDom.FieldDirection.Kind
      );
      
      function Type_x
      (
         this : in out CodeParameterDeclarationExpression.Kind
      )
      return NetFrameworkBase.System.CodeDom.CodeTypeReference.Kind_Ptr;
      
      procedure Type_x
      (
         this : in out CodeParameterDeclarationExpression.Kind;
         value : NetFrameworkBase.System.CodeDom.CodeTypeReference.Kind_Ptr
      );
      
      function Name
      (
         this : in out CodeParameterDeclarationExpression.Kind
      )
      return NetFrameworkBase.BSTR;
      
      procedure Name
      (
         this : in out CodeParameterDeclarationExpression.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      function Constructor return NetFrameworkBase.System.CodeDom.CodeParameterDeclarationExpression.Kind_Ptr;
      
      function Constructor
      (
         type_x : NetFrameworkBase.System.CodeDom.CodeTypeReference.Kind_Ptr;
         name : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.CodeDom.CodeParameterDeclarationExpression.Kind_Ptr;
      
      function Constructor
      (
         type_x : NetFrameworkBase.BSTR;
         name : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.CodeDom.CodeParameterDeclarationExpression.Kind_Ptr;
      
      function Constructor
      (
         type_x : NetFrameworkBase.System.Type_x.Kind_Ptr;
         name : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.CodeDom.CodeParameterDeclarationExpression.Kind_Ptr;
      
end;
