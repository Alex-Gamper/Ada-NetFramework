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
with NetFrameworkBase.System.Text.RegularExpressions.Group;
limited with NetFrameworkBase.System.Text.RegularExpressions.GroupCollection;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Text.RegularExpressions.Match is
   
   type Kind is new NetFrameworkBase.System.Text.RegularExpressions.Group.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function Empty
      return NetFrameworkBase.System.Text.RegularExpressions.Match.Kind_Ptr;
      
      function Groups
      (
         this : in out Match.Kind
      )
      return NetFrameworkBase.System.Text.RegularExpressions.GroupCollection.Kind_Ptr;
      
      function NextMatch
      (
         this : in out Match.Kind
      )
      return NetFrameworkBase.System.Text.RegularExpressions.Match.Kind_Ptr;
      
      function Result
      (
         this : in out Match.Kind;
         replacement : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.BSTR;
      
      function Synchronized_x
      (
         inner : NetFrameworkBase.System.Text.RegularExpressions.Match.Kind_Ptr
      )
      return NetFrameworkBase.System.Text.RegularExpressions.Match.Kind_Ptr;
      
end;