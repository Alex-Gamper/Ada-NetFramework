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
limited with NetFrameworkBase.System.Drawing.Color;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Windows.Forms.VisualStyles.VisualStyleInformation is
   
   type Kind is new NetFrameworkBase.System.Object.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function IsSupportedByOS
      return NetFrameworkBase.Boolean;
      
      function IsEnabledByUser
      return NetFrameworkBase.Boolean;
      
      function ColorScheme
      return NetFrameworkBase.BSTR;
      
      function Size
      return NetFrameworkBase.BSTR;
      
      function DisplayName
      return NetFrameworkBase.BSTR;
      
      function Company
      return NetFrameworkBase.BSTR;
      
      function Author
      return NetFrameworkBase.BSTR;
      
      function Copyright
      return NetFrameworkBase.BSTR;
      
      function Url
      return NetFrameworkBase.BSTR;
      
      function Version
      return NetFrameworkBase.BSTR;
      
      function Description
      return NetFrameworkBase.BSTR;
      
      function SupportsFlatMenus
      return NetFrameworkBase.Boolean;
      
      function MinimumColorDepth
      return NetFrameworkBase.Int32;
      
      function TextControlBorder
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      function ControlHighlightHot
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
end;