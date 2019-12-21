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
with NetFrameworkBase.System.Net.Cache.RequestCacheLevel;
with NetFrameworkBase.System.Net.Cache.RequestCachePolicy;
with NetFrameworkBase.System.Net.Cache.HttpRequestCacheLevel;
with NetFrameworkBase.System.Net.Cache.HttpCacheAgeControl;
with NetFrameworkBase.System.Net.Cache.HttpRequestCachePolicy;
with NetFrameworkBase.System.TimeSpan;
--------------------------------------------------------------------------------
package NetFramework.System.Net.Cache is
   
      --------------------------------------------------------------------------
      subtype RequestCacheLevel is NetFrameworkBase.System.Net.Cache.RequestCacheLevel.Kind;
      
      --------------------------------------------------------------------------
      subtype RequestCachePolicy is NetFrameworkBase.System.Net.Cache.RequestCachePolicy.Kind_Ptr;
      subtype RequestCachePolicy_Array is NetFrameworkBase.System.Net.Cache.RequestCachePolicy.Kind_Array;
      
         function Constructor return NetFrameworkBase.System.Net.Cache.RequestCachePolicy.Kind_Ptr renames NetFrameworkBase.System.Net.Cache.RequestCachePolicy.Constructor;
         
         function Constructor
         (
            level : NetFrameworkBase.System.Net.Cache.RequestCacheLevel.Kind
         )
         return NetFrameworkBase.System.Net.Cache.RequestCachePolicy.Kind_Ptr renames NetFrameworkBase.System.Net.Cache.RequestCachePolicy.Constructor; 
         
      --------------------------------------------------------------------------
      subtype HttpRequestCacheLevel is NetFrameworkBase.System.Net.Cache.HttpRequestCacheLevel.Kind;
      
      --------------------------------------------------------------------------
      subtype HttpCacheAgeControl is NetFrameworkBase.System.Net.Cache.HttpCacheAgeControl.Kind;
      
      --------------------------------------------------------------------------
      subtype HttpRequestCachePolicy is NetFrameworkBase.System.Net.Cache.HttpRequestCachePolicy.Kind_Ptr;
      subtype HttpRequestCachePolicy_Array is NetFrameworkBase.System.Net.Cache.HttpRequestCachePolicy.Kind_Array;
      
         function Constructor return NetFrameworkBase.System.Net.Cache.HttpRequestCachePolicy.Kind_Ptr renames NetFrameworkBase.System.Net.Cache.HttpRequestCachePolicy.Constructor;
         
         function Constructor
         (
            level : NetFrameworkBase.System.Net.Cache.HttpRequestCacheLevel.Kind
         )
         return NetFrameworkBase.System.Net.Cache.HttpRequestCachePolicy.Kind_Ptr renames NetFrameworkBase.System.Net.Cache.HttpRequestCachePolicy.Constructor; 
         
         function Constructor
         (
            cacheAgeControl : NetFrameworkBase.System.Net.Cache.HttpCacheAgeControl.Kind;
            ageOrFreshOrStale : NetFrameworkBase.System.TimeSpan.Kind_Ptr
         )
         return NetFrameworkBase.System.Net.Cache.HttpRequestCachePolicy.Kind_Ptr renames NetFrameworkBase.System.Net.Cache.HttpRequestCachePolicy.Constructor; 
         
         function Constructor
         (
            cacheAgeControl : NetFrameworkBase.System.Net.Cache.HttpCacheAgeControl.Kind;
            maxAge : NetFrameworkBase.System.TimeSpan.Kind_Ptr;
            freshOrStale : NetFrameworkBase.System.TimeSpan.Kind_Ptr
         )
         return NetFrameworkBase.System.Net.Cache.HttpRequestCachePolicy.Kind_Ptr renames NetFrameworkBase.System.Net.Cache.HttpRequestCachePolicy.Constructor; 
         
         function Constructor
         (
            cacheSyncDate : NetFrameworkBase.Date
         )
         return NetFrameworkBase.System.Net.Cache.HttpRequestCachePolicy.Kind_Ptr renames NetFrameworkBase.System.Net.Cache.HttpRequestCachePolicy.Constructor; 
         
         function Constructor
         (
            cacheAgeControl : NetFrameworkBase.System.Net.Cache.HttpCacheAgeControl.Kind;
            maxAge : NetFrameworkBase.System.TimeSpan.Kind_Ptr;
            freshOrStale : NetFrameworkBase.System.TimeSpan.Kind_Ptr;
            cacheSyncDate : NetFrameworkBase.Date
         )
         return NetFrameworkBase.System.Net.Cache.HttpRequestCachePolicy.Kind_Ptr renames NetFrameworkBase.System.Net.Cache.HttpRequestCachePolicy.Constructor; 
         
   
end;
