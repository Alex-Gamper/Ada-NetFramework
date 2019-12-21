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
with NetFrameworkBase.System.CodeDom.CodeObject;
limited with NetFrameworkBase.System.CodeDom.CodeTypeReferenceCollection;
limited with NetFrameworkBase.System.CodeDom.CodeAttributeDeclarationCollection;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.CodeDom.CodeTypeParameter is
   
   type Kind is new NetFrameworkBase.System.CodeDom.CodeObject.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function Name
      (
         this : in out CodeTypeParameter.Kind
      )
      return NetFrameworkBase.BSTR;
      
      procedure Name
      (
         this : in out CodeTypeParameter.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      function Constraints
      (
         this : in out CodeTypeParameter.Kind
      )
      return NetFrameworkBase.System.CodeDom.CodeTypeReferenceCollection.Kind_Ptr;
      
      function CustomAttributes
      (
         this : in out CodeTypeParameter.Kind
      )
      return NetFrameworkBase.System.CodeDom.CodeAttributeDeclarationCollection.Kind_Ptr;
      
      function HasConstructorConstraint
      (
         this : in out CodeTypeParameter.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure HasConstructorConstraint
      (
         this : in out CodeTypeParameter.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      function Constructor return NetFrameworkBase.System.CodeDom.CodeTypeParameter.Kind_Ptr;
      
      function Constructor
      (
         name : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.CodeDom.CodeTypeParameter.Kind_Ptr;
      
end;
