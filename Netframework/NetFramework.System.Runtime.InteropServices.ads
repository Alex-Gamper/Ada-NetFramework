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
with NetFrameworkBase.System.Runtime.InteropServices.IActivator;
with NetFrameworkBase.System.Runtime.InteropServices.IAssembly;
with NetFrameworkBase.System.Runtime.InteropServices.StructLayoutAttribute;
with NetFrameworkBase.System.Runtime.InteropServices.LayoutKind;
with NetFrameworkBase.System.Runtime.InteropServices.SafeHandle;
--------------------------------------------------------------------------------
package NetFramework.System.Runtime.InteropServices is
   
      --------------------------------------------------------------------------
      subtype IActivator is NetFrameworkBase.System.Runtime.InteropServices.IActivator.Kind_Ptr;
      subtype IActivator_Array is NetFrameworkBase.System.Runtime.InteropServices.IActivator.Kind_Array;
      
      --------------------------------------------------------------------------
      subtype IAssembly is NetFrameworkBase.System.Runtime.InteropServices.IAssembly.Kind_Ptr;
      subtype IAssembly_Array is NetFrameworkBase.System.Runtime.InteropServices.IAssembly.Kind_Array;
      
      --------------------------------------------------------------------------
      subtype StructLayoutAttribute is NetFrameworkBase.System.Runtime.InteropServices.StructLayoutAttribute.Kind_Ptr;
      subtype StructLayoutAttribute_Array is NetFrameworkBase.System.Runtime.InteropServices.StructLayoutAttribute.Kind_Array;
      
         function Constructor
         (
            layoutKind : NetFrameworkBase.System.Runtime.InteropServices.LayoutKind.Kind
         )
         return NetFrameworkBase.System.Runtime.InteropServices.StructLayoutAttribute.Kind_Ptr renames NetFrameworkBase.System.Runtime.InteropServices.StructLayoutAttribute.Constructor; 
         
         function Constructor
         (
            layoutKind : NetFrameworkBase.Int16
         )
         return NetFrameworkBase.System.Runtime.InteropServices.StructLayoutAttribute.Kind_Ptr renames NetFrameworkBase.System.Runtime.InteropServices.StructLayoutAttribute.Constructor; 
         
      --------------------------------------------------------------------------
      subtype LayoutKind is NetFrameworkBase.System.Runtime.InteropServices.LayoutKind.Kind;
      
      --------------------------------------------------------------------------
      subtype SafeHandle is NetFrameworkBase.System.Runtime.InteropServices.SafeHandle.Kind_Ptr;
      subtype SafeHandle_Array is NetFrameworkBase.System.Runtime.InteropServices.SafeHandle.Kind_Array;
      
   
end;
