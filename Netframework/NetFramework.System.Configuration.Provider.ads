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
with NetFrameworkBase.System.Configuration.Provider.ProviderBase;
with NetFrameworkBase.System.Configuration.Provider.ProviderCollection;
with NetFrameworkBase.System.Configuration.Provider.ProviderException;
with NetFrameworkBase.System.Exception_x;
--------------------------------------------------------------------------------
package NetFramework.System.Configuration.Provider is
   
      --------------------------------------------------------------------------
      subtype ProviderBase is NetFrameworkBase.System.Configuration.Provider.ProviderBase.Kind_Ptr;
      subtype ProviderBase_Array is NetFrameworkBase.System.Configuration.Provider.ProviderBase.Kind_Array;
      
      --------------------------------------------------------------------------
      subtype ProviderCollection is NetFrameworkBase.System.Configuration.Provider.ProviderCollection.Kind_Ptr;
      subtype ProviderCollection_Array is NetFrameworkBase.System.Configuration.Provider.ProviderCollection.Kind_Array;
      
         function Constructor return NetFrameworkBase.System.Configuration.Provider.ProviderCollection.Kind_Ptr renames NetFrameworkBase.System.Configuration.Provider.ProviderCollection.Constructor;
         
      --------------------------------------------------------------------------
      subtype ProviderException is NetFrameworkBase.System.Configuration.Provider.ProviderException.Kind_Ptr;
      subtype ProviderException_Array is NetFrameworkBase.System.Configuration.Provider.ProviderException.Kind_Array;
      
         function Constructor return NetFrameworkBase.System.Configuration.Provider.ProviderException.Kind_Ptr renames NetFrameworkBase.System.Configuration.Provider.ProviderException.Constructor;
         
         function Constructor
         (
            message : NetFrameworkBase.BSTR
         )
         return NetFrameworkBase.System.Configuration.Provider.ProviderException.Kind_Ptr renames NetFrameworkBase.System.Configuration.Provider.ProviderException.Constructor; 
         
         function Constructor
         (
            message : NetFrameworkBase.BSTR;
            innerException : NetFrameworkBase.System.Exception_x.Kind_Ptr
         )
         return NetFrameworkBase.System.Configuration.Provider.ProviderException.Kind_Ptr renames NetFrameworkBase.System.Configuration.Provider.ProviderException.Constructor; 
         
   
end;