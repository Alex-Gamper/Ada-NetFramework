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
with NetFrameworkBase.System.Linq.Expressions.Expression;
limited with NetFrameworkBase.System.Type_x;
limited with NetFrameworkBase.System.Linq.Expressions.ExpressionType;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Linq.Expressions.InvocationExpression is
   
   type Kind is new NetFrameworkBase.System.Linq.Expressions.Expression.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function Type_x
      (
         this : in out InvocationExpression.Kind
      )
      return NetFrameworkBase.System.Type_x.Kind_Ptr;
      
      function NodeType
      (
         this : in out InvocationExpression.Kind
      )
      return NetFrameworkBase.System.Linq.Expressions.ExpressionType.Kind;
      
      function Expression
      (
         this : in out InvocationExpression.Kind
      )
      return NetFrameworkBase.System.Linq.Expressions.Expression.Kind_Ptr;
      
end;
