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
with AdaPackage;
with NetFrameworkWin32;
with NetFrameworkAdaRuntime;                    use NetFrameworkAdaRuntime;
with NetframeworkBase.System.Array_x;
with NetframeworkBase.System.DateTime;
with NetframeworkBase.System.Console;
with NetframeworkBase.System.UInt64;
with NetframeworkBase.System.Version;
with NetframeworkBase.System.TypeCode;
with NetframeworkBase.System.Environment;
with NetFrameworkBase.System.ConsoleKey;
with NetFrameworkBase.System.ConsoleKeyInfo;
with NetFrameworkBase.System.Environment.SpecialFolder;
with NetFrameworkBase.System.String;
with NetFrameworkBase.System.Threading;
with NetFrameworkBase.System.Threading.TimerCallback;
with NetframeworkBase.System.TimeSpan;
with NetFrameworkBase.System.Runtime.Serialization.StreamingContextStates;
with NetFrameworkBase.System.Runtime.Serialization.ISerializationSurrogate;
with NetFrameworkBase.System.Runtime.Serialization.ISurrogateSelector;
with NetFramework;
with NetFramework.System;
with NetFramework.System.IO;
with NetFramework.System.Reflection; 
with NetFramework.System.Threading;
with NetFramework.System.Runtime.Serialization;
with Ada.Exceptions;
with Ada.Wide_Text_IO;

--------------------------------------------------------------------------------
procedure NetframeworkTest is

    m_Runtime   : RuntimeHost := Instance;

begin

    Initialize(m_Runtime);

    declare

        ------------------------------------------------------------------------
        procedure Test_Statics is
            m_TimeSpan          : Netframework.System.TimeSpan := Netframework.System.Constructor (NetFrameworkBase.Int64(0));
            m_TimeSpanHMS       : Netframework.System.TimeSpan := Netframework.System.Constructor (0,0,0);
            m_TimeSpanDHMS      : Netframework.System.TimeSpan := Netframework.System.Constructor (0,0,0,0);
            m_TimeSpanDHMSms    : Netframework.System.TimeSpan := Netframework.System.Constructor (0,0,0,0,0);
            m_Ok                : Netframework.Boolean := NetframeworkBase.System.Console.IsOutputRedirected;
        begin
            null;
        end;

        ------------------------------------------------------------------------
        procedure Test_ValueTypes_Builtin is
            m_Result    : Netframework.UInt64;
        begin
            if NetframeworkBase.System.UInt64.TryParse (To_BSTR ("1024"), m_Result) = true then
                Ada.Wide_Text_IO.Put_Line (m_Result'Wide_Image);
            else
                raise PROGRAM_ERROR;
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
                Ada.Wide_Text_IO.Put_Line (m_Result'Wide_Image);
            else
                raise PROGRAM_ERROR;
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
                        m_ReturnType : NetFramework.System.Type_x := Method.ReturnType;
                    begin
                        Ada.Wide_Text_IO.Put_Line (To_Ada (Method.ToString) & " - return [" & To_Ada (m_ReturnType.ToString) & "]");
                    end;
                end loop;
                for Format of m_DateFormats loop
                    Ada.Wide_Text_Io.Put_Line (To_Ada (Format));
                end loop;
            end; 
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
            else
                raise PROGRAM_ERROR;
            end if;
        end;

        ------------------------------------------------------------------------
        procedure Test_Enum_In_Param is
            use NetFrameworkBase.System.Environment.SpecialFolder;
            m_DesktopPath   : NetFramework.BSTR := NetFrameworkBase.System.Environment.GetFolderPath (NetFrameworkBase.System.Environment.SpecialFolder.Kind'(Desktop));
            m_SystemPath    : NetFramework.BSTR := NetFrameworkBase.System.Environment.GetFolderPath (NetFrameworkBase.System.Environment.SpecialFolder.Kind'(System));
        begin
            Ada.Wide_Text_IO.Put_Line ("DestopPath : " & To_Ada (m_DesktopPath));
            Ada.Wide_Text_IO.Put_Line ("SystemPath : " & To_Ada (m_SystemPath));
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
        procedure Test_Constructors is
            use NetFrameworkBase.System.ConsoleKey;
            m_Key           : NetFramework.System.ConsoleKey  := NetFrameworkBase.System.ConsoleKey.Kind'(PageUp);
            m_KeyInfo       : NetFramework.System.ConsoleKeyInfo := NetFrameworkBase.System.ConsoleKeyInfo.Constructor ('A', m_Key, true, false, false);
        begin
            null;
        end;
        
        ------------------------------------------------------------------------
        procedure Test_Callbacks is
            m_Object        : NetFramework.System.Object := NetFramework.System.Constructor;
            m_Callback      : NetFramework.System.Threading.TimerCallback := NetFrameworkBase.System.Threading.TimerCallback.Constructor (AdaPackage.Callback'access);
            m_Timer         : NetFramework.System.Threading.Timer := NetFramework.System.Threading.Constructor (m_Callback, m_Object, NetFramework.Int32(0), NetFramework.Int32(500));
        begin
            null;
        end;

        ------------------------------------------------------------------------
        procedure Test_Interface_Out_Param is
            use NetFrameworkBase.System.Runtime.Serialization.StreamingContextStates;
            use NetFrameworkBase.System.Runtime.Serialization.ISerializationSurrogate;
            use NetFrameworkBase.System.Runtime.Serialization.ISurrogateSelector;
            m_State         : NetFramework.System.Runtime.Serialization.StreamingContextStates := NetFrameworkBase.System.Runtime.Serialization.StreamingContextStates.Kind'(All_x);
            m_Context       : NetFramework.System.Runtime.Serialization.StreamingContext := NetFramework.System.Runtime.Serialization.Constructor (m_State);
            m_Surrogate     : NetFramework.System.Runtime.Serialization.SurrogateSelector := NetFramework.System.Runtime.Serialization.Constructor;
            m_Object        : NetFramework.System.Object := NetFramework.System.Constructor;
            m_Type          : NetFramework.System.Type_x := m_Object.GetType;
            m_ISurrogate    : NetFramework.System.Runtime.Serialization.ISurrogateSelector := null;         -- Out Interface
            m_Iss           : NetFramework.System.Runtime.Serialization.ISerializationSurrogate := null;
        begin
            m_Iss := m_Surrogate.GetSurrogate(m_Type, m_Context, m_ISurrogate);
            if m_Iss = null then
                if m_ISurrogate = null then
                    raise PROGRAM_ERROR;
                end if;
            end if;
        end;

        ------------------------------------------------------------------------
        procedure Test_Return_Array is
            m_Object        : NetFramework.System.Object := NetFramework.System.Constructor;
            m_Type          : NetFramework.System.Type_x := m_Object.GetType;
            m_Lengths       : NetFrameworkBase.Int32_array(1..1) := (others => 16);
            m_Array         : NetFramework.System.Array_x := NetFrameworkBase.System.Array_x.CreateInstance (m_Type, m_Lengths);
        begin
            NetFrameworkBase.System.Console.WriteLine (m_Object.ToString);
            NetFrameworkBase.System.Console.WriteLine (m_Type.ToString);
            NetFrameworkBase.System.Console.WriteLine (m_Array.ToString);
            Ada.Wide_Text_IO.Put_Line (m_Array.GetLength(0)'Wide_Image);
        end;

        ------------------------------------------------------------------------
        procedure Test_In_Array is
            m_DateTime          : NetFramework.System.DateTime := NetFramework.System.Constructor(2018, 1, 1);
            m_Objects           : NetFramework.System.Object_Array (1..3) := (others => Netframework.System.Object(m_DateTime));
            m_String            : NetFramework.BSTR := NetFrameworkBase.System.String.Format(To_BStr("{0:d} {0:d} {0:d}"), m_Objects);
        begin
            NetFrameworkBase.System.Console.WriteLine (m_DateTime.ToString);
            Ada.Wide_Text_IO.Put_Line (To_Ada(m_String));
        end;

        ------------------------------------------------------------------------
        procedure Test_Operators is
            use NetframeworkBase.System.TimeSpan;
            m_TimeSpan1         : Netframework.System.TimeSpan := Netframework.System.Constructor (1, 0, 0);
            m_TimeSpan2         : Netframework.System.TimeSpan := Netframework.System.Constructor (1, 0, 0);
            m_TimeSpan3         : Netframework.System.TimeSpan := m_TimeSpan1.Add (m_TimeSpan2);
            m_Ok                : Netframework.Boolean := NetframeworkBase.System.TimeSpan.Op_Equality (m_TimeSpan1, m_TimeSpan2);
        begin
            if m_TimeSpan1 = m_TimeSpan2 then
                m_TimeSpan1 := m_TimeSpan1 + m_TimeSpan2;
                if m_TimeSpan1 /= m_TimeSpan2 then
                    m_TimeSpan1 := m_TimeSpan1 - m_TimeSpan2;
                    if m_TimeSpan1 = m_TimeSpan2 then
                        NetFrameworkBase.System.Console.WriteLine (m_TimeSpan1.ToString);
                        NetFrameworkBase.System.Console.WriteLine (m_TimeSpan2.ToString);
                        NetFrameworkBase.System.Console.WriteLine (m_TimeSpan3.ToString);
                    else
                        raise PROGRAM_ERROR;
                    end if;
                else
                    raise PROGRAM_ERROR;
                end if;
            else
                raise PROGRAM_ERROR;
            end if;
        end;

        ------------------------------------------------------------------------
        procedure Test_In_Builtin_Array is
            m_Value     : NetFrameworkBase.Wide_Char_Array(1..16) := (others => 'x');
            m_String    : NetFramework.System.String := NetFramework.System.Constructor (m_Value); --method not found ??
        begin
            null;
        end;

        ------------------------------------------------------------------------
        procedure Test_In_Out_Builtin_Array is
            use NetframeworkWin32;
            m_StreamReader      : Netframework.System.IO.StreamReader := Netframework.System.IO.Constructor (To_BSTR("c:\tmp\ada.txt"));
            m_Stream            : Netframework.System.IO.Stream := m_StreamReader.BaseStream;
            m_Length            : Netframework.Int64 := m_Stream.Length;
            m_Buffer            : Netframework.Wide_Char_Array (1..14);
            m_BytesRead         : Netframework.Int32 := 0;
        begin
            if m_Length > 0 then
                m_BytesRead := m_StreamReader.Read (m_Buffer, 0 , 14);  --invalid parameter ??
            end if;
        end;

        x : Netframework.BSTR;
        
    begin

        Test_Statics;
        Test_ValueTypes_Builtin;
        Test_ValueTypes_Instance;
        Test_ValueTypes_Arrays;
        Test_RefenceType_Out_Param;
        Test_Enum_In_Param;
        Test_Enum_ReturnType;
        Test_Enum_Out_Param;
        Test_Constructors;
        Test_Callbacks;
        Test_Interface_Out_Param;
        Test_Return_Array;
        Test_In_Array;
        Test_Operators;
--        Test_In_Builtin_Array;
--        Test_In_Out_Builtin_Array;

        x := NetFrameworkBase.System.Console.ReadLine;
        

    end;

    Finalize(m_Runtime);

exception

    when Error : others =>
        OutputDebugString (Ada.Exceptions.Exception_Name (Error));
        OutputDebugString (Ada.Exceptions.Exception_Message (Error));
        OutputDebugString (Ada.Exceptions.Exception_Information (Error));

end;