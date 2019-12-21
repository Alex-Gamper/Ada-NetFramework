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
with NetFrameworkBase.System.Diagnostics.CodeAnalysis.SuppressMessageAttribute;
with NetFrameworkBase.System.Diagnostics.CodeAnalysis.ExcludeFromCodeCoverageAttribute;
--------------------------------------------------------------------------------
package NetFramework.System.Diagnostics.CodeAnalysis is
   
      --------------------------------------------------------------------------
      subtype SuppressMessageAttribute is NetFrameworkBase.System.Diagnostics.CodeAnalysis.SuppressMessageAttribute.Kind_Ptr;
      subtype SuppressMessageAttribute_Array is NetFrameworkBase.System.Diagnostics.CodeAnalysis.SuppressMessageAttribute.Kind_Array;
      
         function Constructor
         (
            category : NetFrameworkBase.BSTR;
            checkId : NetFrameworkBase.BSTR
         )
         return NetFrameworkBase.System.Diagnostics.CodeAnalysis.SuppressMessageAttribute.Kind_Ptr renames NetFrameworkBase.System.Diagnostics.CodeAnalysis.SuppressMessageAttribute.Constructor; 
         
      --------------------------------------------------------------------------
      subtype ExcludeFromCodeCoverageAttribute is NetFrameworkBase.System.Diagnostics.CodeAnalysis.ExcludeFromCodeCoverageAttribute.Kind_Ptr;
      subtype ExcludeFromCodeCoverageAttribute_Array is NetFrameworkBase.System.Diagnostics.CodeAnalysis.ExcludeFromCodeCoverageAttribute.Kind_Array;
      
         function Constructor return NetFrameworkBase.System.Diagnostics.CodeAnalysis.ExcludeFromCodeCoverageAttribute.Kind_Ptr renames NetFrameworkBase.System.Diagnostics.CodeAnalysis.ExcludeFromCodeCoverageAttribute.Constructor;
         
   
end;
