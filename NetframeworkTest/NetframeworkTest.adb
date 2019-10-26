﻿--------------------------------------------------------------------------------
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
with NetFrameworkAdaRuntime;                    use NetFrameworkAdaRuntime;
with NetframeworkBase.System.DateTime;
with NetframeworkBase.System.Console;
with NetframeworkBase.System.UInt64;
with NetframeworkBase.System.Version;
with NetframeworkBase.System.TypeCode;
with NetframeworkBase.System.Environment;
with NetFramework;
with NetFramework.System;
with NetFramework.System.Reflection; 
with Ada.Exceptions;
with Ada.Wide_Text_IO;
--------------------------------------------------------------------------------
procedure NetframeworkTest is

    m_Runtime   : RuntimeHost := Instance;

begin

    Initialize(m_Runtime);

    declare

        ------------------------------------------------------------------------
        procedure Test_ValueTypes_Builtin is
            m_Result    : Netframework.UInt64;
        begin
            if NetframeworkBase.System.UInt64.TryParse (To_BSTR ("1024"), m_Result) = true then
                Ada.Wide_Text_IO.Put_Line ("Ok");
            end if;
        end;

        ------------------------------------------------------------------------
        procedure Test_ValueTypes_Instance is
            m_DateTime      : NetFramework.System.DateTime := NetFramework.System.Constructor (2018, 1, 1 );
            m_DayBefore     : NetFramework.Date:= m_DateTime.AddDays (-1.0);
            m_Result        : aliased Netframework.Date;
        begin
            NetframeworkBase.System.Console.WriteLine (m_DateTime.ToString);
            if NetframeworkBase.System.DateTime.TryParse (To_BSTR ("01/01/2019") , m_Result) = true then
                Ada.Wide_Text_IO.Put_Line ("Ok");
            end if;
        end;

        ------------------------------------------------------------------------
        procedure Test_ValueTypes_Arrays is
            m_DateTime      : NetFramework.System.DateTime := NetFramework.System.Constructor (2018, 1, 1 );
            m_Type          : NetFramework.System.Type_x := m_DateTime.GetType;
        begin
            declare 
                m_DateMethods   : NetFramework.System.Reflection.MethodInfo_Array := m_Type.GetMethods;
                m_DateFormats   : NetFramework.BSTR_Array := m_DateTime.GetDateTimeFormats;
            begin
                for Method of m_DateMethods loop
                    declare
                        m_ReturnType : NetFramework.System.Type_x;
                    begin
                        m_ReturnType := Method.ReturnType;
                        Ada.Wide_Text_IO.Put_Line (To_Ada (Method.ToString) & " - return [" & To_Ada (m_ReturnType.ToString) & "]");
                    end;
                end loop;
                for Format of m_DateFormats loop
                    Ada.Wide_Text_Io.Put_Line (To_Ada (Format));
                end loop;
            end; 
        end;

        ------------------------------------------------------------------------
        procedure Test_Enum_ReturnType is
            m_UInt64        : NetFramework.System.UInt64 := NetFramework.System.Constructor;
            m_TypeCode      : NetFramework.System.TypeCode;
        begin
            m_TypeCode := m_UInt64.GetTypeCode;
            Ada.Wide_Text_IO.Put_Line ("TypeCode : " & m_TypeCode'Wide_Image);
        end;

        ------------------------------------------------------------------------
        procedure Test_Enum_Out_Param is
            m_Os            : NetFramework.System.OperatingSystem := NetframeworkBase.System.Environment.OsVersion;
            m_Type          : NetFramework.System.Type_x := m_Os.GetType;
            m_Module        : NetFramework.System.Reflection.Module := m_Type.Module;
            m_PeKind        : NetFramework.System.Reflection.PortableExecutableKinds;
            m_Machine       : NetFramework.System.Reflection.ImageFileMachine;
        begin
            m_Module.GetPeKind (m_PeKind, m_Machine);
            Ada.Wide_Text_IO.Put_Line ("PeKind : " & m_PeKind'Wide_Image);
            Ada.Wide_Text_IO.Put_Line ("Machine : " & m_Machine'Wide_Image);
        end;

        ------------------------------------------------------------------------
        procedure Test_RefenceType_Out_Param is
            m_Result    : NetFramework.System.Version;
        begin
            if NetframeworkBase.System.Version.TryParse (To_BSTR ("4.3.2.1") , m_Result) = true then
                Ada.Wide_Text_IO.Put_Line ("Major :" & m_Result.Major'Wide_Image);
                Ada.Wide_Text_IO.Put_Line ("Minor :" & m_Result.Minor'Wide_Image);
                Ada.Wide_Text_IO.Put_Line ("Build :" & m_Result.Build'Wide_Image);
                Ada.Wide_Text_IO.Put_Line ("Revision :" & m_Result.Revision'Wide_Image);
            end if;
        end;

    begin

        Test_ValueTypes_Builtin;
        Test_ValueTypes_Instance;
        Test_ValueTypes_Arrays;
        Test_Enum_ReturnType;
        Test_Enum_Out_Param;
        Test_RefenceType_Out_Param;

    end;

    Finalize(m_Runtime);

exception

    when Error : others =>
        OutputDebugString (Ada.Exceptions.Exception_Name (Error));
        OutputDebugString (Ada.Exceptions.Exception_Message (Error));
        OutputDebugString (Ada.Exceptions.Exception_Information( Error));

end;