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
with NetFrameworkBase.System.Enum;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Environment.SpecialFolder is
   
   type Kind_Clr is new NetFrameworkBase.System.Enum.Kind with null record;
   type Kind_Clr_Ptr is access Kind_Clr;
   type Kind_Clr_Array is array(Natural range<>) of Kind_Clr_Ptr;
   type Kind_Clr_Array_Ptr is access all Kind_Clr_Array;
   
   type Kind is (
      Desktop,
      Programs,
      MyDocuments,
      Favorites,
      Startup,
      Recent,
      SendTo,
      StartMenu,
      MyMusic,
      MyVideos,
      DesktopDirectory,
      MyComputer,
      NetworkShortcuts,
      Fonts,
      Templates,
      CommonStartMenu,
      CommonPrograms,
      CommonStartup,
      CommonDesktopDirectory,
      ApplicationData,
      PrinterShortcuts,
      LocalApplicationData,
      InternetCache,
      Cookies,
      History,
      CommonApplicationData,
      Windows_x,
      System,
      ProgramFiles,
      MyPictures,
      UserProfile,
      SystemX86,
      ProgramFilesX86,
      CommonProgramFiles,
      CommonProgramFilesX86,
      CommonTemplates,
      CommonDocuments,
      CommonAdminTools,
      AdminTools,
      CommonMusic,
      CommonPictures,
      CommonVideos,
      Resources,
      LocalizedResources,
      CommonOemLinks,
      CDBurning
   );
   
   for Kind use (
      Desktop => 0,
      Programs => 2,
      MyDocuments => 5,
      Favorites => 6,
      Startup => 7,
      Recent => 8,
      SendTo => 9,
      StartMenu => 11,
      MyMusic => 13,
      MyVideos => 14,
      DesktopDirectory => 16,
      MyComputer => 17,
      NetworkShortcuts => 19,
      Fonts => 20,
      Templates => 21,
      CommonStartMenu => 22,
      CommonPrograms => 23,
      CommonStartup => 24,
      CommonDesktopDirectory => 25,
      ApplicationData => 26,
      PrinterShortcuts => 27,
      LocalApplicationData => 28,
      InternetCache => 32,
      Cookies => 33,
      History => 34,
      CommonApplicationData => 35,
      Windows_x => 36,
      System => 37,
      ProgramFiles => 38,
      MyPictures => 39,
      UserProfile => 40,
      SystemX86 => 41,
      ProgramFilesX86 => 42,
      CommonProgramFiles => 43,
      CommonProgramFilesX86 => 44,
      CommonTemplates => 45,
      CommonDocuments => 46,
      CommonAdminTools => 47,
      AdminTools => 48,
      CommonMusic => 53,
      CommonPictures => 54,
      CommonVideos => 55,
      Resources => 56,
      LocalizedResources => 57,
      CommonOemLinks => 58,
      CDBurning => 59
   );
   
   for Kind'Size use 32;
   
   type Kind_Ptr is access Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
private

   This_AssemblyFile : constant Standard.Wide_String := "C:\Windows\Microsoft.NET\Framework64\v4.0.30319\mscorlib.dll";
   This_AssemblyName : constant Standard.Wide_String := "mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089";
   This_TypeName     : constant Standard.Wide_String := "System.Environment+SpecialFolder";
   
end;
