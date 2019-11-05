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
with NetFrameworkBase.System.AggregateException;
with NetFrameworkBase.System.Object;
with NetFrameworkBase.System.Action;
with NetFrameworkBase.System.Array_x;
with NetFrameworkBase.System.String;
with NetFrameworkBase.System.StringSplitOptions;
with NetFrameworkBase.System.StringComparison;
with NetFrameworkBase.System.Exception_x;
with NetFrameworkBase.System.DateTime;
with NetFrameworkBase.System.DateTimeKind;
with NetFrameworkBase.System.Delegate;
with NetFrameworkBase.System.MulticastDelegate;
with NetFrameworkBase.System.ResolveEventArgs;
with NetFrameworkBase.System.AsyncCallback;
with NetFrameworkBase.System.Attribute;
with NetFrameworkBase.System.Boolean;
with NetFrameworkBase.System.Byte;
with NetFrameworkBase.System.Char;
with NetFrameworkBase.System.CharEnumerator;
with NetFrameworkBase.System.Console;
with NetFrameworkBase.System.ConsoleCancelEventHandler;
with NetFrameworkBase.System.ConsoleCancelEventArgs;
with NetFrameworkBase.System.ConsoleColor;
with NetFrameworkBase.System.ConsoleKey;
with NetFrameworkBase.System.ConsoleKeyInfo;
with NetFrameworkBase.System.ConsoleModifiers;
with NetFrameworkBase.System.ConsoleSpecialKey;
with NetFrameworkBase.System.DayOfWeek;
with NetFrameworkBase.System.Decimal;
with NetFrameworkBase.System.Double;
with NetFrameworkBase.System.Enum;
with NetFrameworkBase.System.EnvironmentVariableTarget;
with NetFrameworkBase.System.Environment;
with NetFrameworkBase.System.EventArgs;
with NetFrameworkBase.System.Guid;
with NetFrameworkBase.System.IAsyncResult;
with NetFrameworkBase.System.IFormatProvider;
with NetFrameworkBase.System.Int16;
with NetFrameworkBase.System.Int32;
with NetFrameworkBase.System.Int64;
with NetFrameworkBase.System.IntPtr;
with NetFrameworkBase.System.MarshalByRefObject;
with NetFrameworkBase.System.MidpointRounding;
with NetFrameworkBase.System.OperatingSystem;
with NetFrameworkBase.System.PlatformID;
with NetFrameworkBase.System.RuntimeTypeHandle;
with NetFrameworkBase.System.RuntimeMethodHandle;
with NetFrameworkBase.System.RuntimeFieldHandle;
with NetFrameworkBase.System.ModuleHandle;
with NetFrameworkBase.System.SByte;
with NetFrameworkBase.System.Single;
with NetFrameworkBase.System.TimeSpan;
with NetFrameworkBase.System.Type_x;
with NetFrameworkBase.System.TypeCode;
with NetFrameworkBase.System.TypedReference;
with NetFrameworkBase.System.UInt16;
with NetFrameworkBase.System.UInt32;
with NetFrameworkBase.System.UInt64;
with NetFrameworkBase.System.ValueType;
with NetFrameworkBase.System.Version;
with NetFrameworkBase.System.Text.Encoding;
with NetFrameworkBase.System.Globalization.Calendar;
with NetFrameworkBase.System.Reflection.Assembly;
--------------------------------------------------------------------------------
package NetFramework.System is
   
      subtype AggregateException is NetFrameworkBase.System.AggregateException.Kind_Ptr;
      subtype AggregateException_Array is NetFrameworkBase.System.AggregateException.Kind_Array;
      
         function Constructor
         (
            message : NetFrameworkBase.BSTR
         )
         return NetFrameworkBase.System.AggregateException.Kind_Ptr renames NetFrameworkBase.System.AggregateException.Constructor; 
         
         function Constructor
         (
            message : NetFrameworkBase.BSTR;
            innerException : NetFrameworkBase.System.Exception_x.Kind_Ptr
         )
         return NetFrameworkBase.System.AggregateException.Kind_Ptr renames NetFrameworkBase.System.AggregateException.Constructor; 
         
         function Constructor
         (
            message : NetFrameworkBase.BSTR;
            innerExceptions : NetFrameworkBase.System.Exception_x.Kind_Array
         )
         return NetFrameworkBase.System.AggregateException.Kind_Ptr renames NetFrameworkBase.System.AggregateException.Constructor; 
         
         function Constructor return NetFrameworkBase.System.AggregateException.Kind_Ptr renames NetFrameworkBase.System.AggregateException.Constructor;
         
         function Constructor
         (
            innerExceptions : NetFrameworkBase.System.Exception_x.Kind_Array
         )
         return NetFrameworkBase.System.AggregateException.Kind_Ptr renames NetFrameworkBase.System.AggregateException.Constructor; 
         
      subtype Object is NetFrameworkBase.System.Object.Kind_Ptr;
      subtype Object_Array is NetFrameworkBase.System.Object.Kind_Array;
      
         function Constructor return NetFrameworkBase.System.Object.Kind_Ptr renames NetFrameworkBase.System.Object.Constructor;
         
      subtype Action is NetFrameworkBase.System.Action.Kind_Ptr;
      subtype Action_Array is NetFrameworkBase.System.Action.Kind_Array;
      
      subtype Array_x is NetFrameworkBase.System.Array_x.Kind_Ptr;
      subtype Array_x_Array is NetFrameworkBase.System.Array_x.Kind_Array;
      
      subtype String is NetFrameworkBase.System.String.Kind_Ptr;
      subtype String_Array is NetFrameworkBase.System.String.Kind_Array;
      
         function Constructor
         (
            value : NetFrameworkBase.Wide_Char_Ptr
         )
         return NetFrameworkBase.System.String.Kind_Ptr renames NetFrameworkBase.System.String.Constructor; 
         
         function Constructor
         (
            value : NetFrameworkBase.Wide_Char_Ptr;
            startIndex : NetFrameworkBase.Int32;
            length : NetFrameworkBase.Int32
         )
         return NetFrameworkBase.System.String.Kind_Ptr renames NetFrameworkBase.System.String.Constructor; 
         
         function Constructor
         (
            value : NetFrameworkBase.Wide_Char_Array;
            startIndex : NetFrameworkBase.Int32;
            length : NetFrameworkBase.Int32
         )
         return NetFrameworkBase.System.String.Kind_Ptr renames NetFrameworkBase.System.String.Constructor; 
         
         function Constructor
         (
            value : NetFrameworkBase.Wide_Char_Array
         )
         return NetFrameworkBase.System.String.Kind_Ptr renames NetFrameworkBase.System.String.Constructor; 
         
         function Constructor
         (
            c : NetFrameworkBase.Wide_Char;
            count : NetFrameworkBase.Int32
         )
         return NetFrameworkBase.System.String.Kind_Ptr renames NetFrameworkBase.System.String.Constructor; 
         
         function Constructor
         (
            value : NetFrameworkBase.SByte_Ptr
         )
         return NetFrameworkBase.System.String.Kind_Ptr renames NetFrameworkBase.System.String.Constructor; 
         
         function Constructor
         (
            value : NetFrameworkBase.SByte_Ptr;
            startIndex : NetFrameworkBase.Int32;
            length : NetFrameworkBase.Int32
         )
         return NetFrameworkBase.System.String.Kind_Ptr renames NetFrameworkBase.System.String.Constructor; 
         
         function Constructor
         (
            value : NetFrameworkBase.SByte_Ptr;
            startIndex : NetFrameworkBase.Int32;
            length : NetFrameworkBase.Int32;
            enc : NetFrameworkBase.System.Text.Encoding.Kind_Ptr
         )
         return NetFrameworkBase.System.String.Kind_Ptr renames NetFrameworkBase.System.String.Constructor; 
         
      subtype StringSplitOptions is NetFrameworkBase.System.StringSplitOptions.Kind;
      
      subtype StringComparison is NetFrameworkBase.System.StringComparison.Kind;
      
      subtype Exception_x is NetFrameworkBase.System.Exception_x.Kind_Ptr;
      subtype Exception_x_Array is NetFrameworkBase.System.Exception_x.Kind_Array;
      
         function Constructor return NetFrameworkBase.System.Exception_x.Kind_Ptr renames NetFrameworkBase.System.Exception_x.Constructor;
         
         function Constructor
         (
            message : NetFrameworkBase.BSTR
         )
         return NetFrameworkBase.System.Exception_x.Kind_Ptr renames NetFrameworkBase.System.Exception_x.Constructor; 
         
         function Constructor
         (
            message : NetFrameworkBase.BSTR;
            innerException : NetFrameworkBase.System.Exception_x.Kind_Ptr
         )
         return NetFrameworkBase.System.Exception_x.Kind_Ptr renames NetFrameworkBase.System.Exception_x.Constructor; 
         
      subtype DateTime is NetFrameworkBase.System.DateTime.Kind_Ptr;
      subtype DateTime_Array is NetFrameworkBase.System.DateTime.Kind_Array;
      
         function Constructor
         (
            ticks : NetFrameworkBase.Int64
         )
         return NetFrameworkBase.System.DateTime.Kind_Ptr renames NetFrameworkBase.System.DateTime.Constructor; 
         
         function Constructor
         (
            ticks : NetFrameworkBase.Int64;
            kind : NetFrameworkBase.System.DateTimeKind.Kind
         )
         return NetFrameworkBase.System.DateTime.Kind_Ptr renames NetFrameworkBase.System.DateTime.Constructor; 
         
         function Constructor
         (
            year : NetFrameworkBase.Int32;
            month : NetFrameworkBase.Int32;
            day : NetFrameworkBase.Int32
         )
         return NetFrameworkBase.System.DateTime.Kind_Ptr renames NetFrameworkBase.System.DateTime.Constructor; 
         
         function Constructor
         (
            year : NetFrameworkBase.Int32;
            month : NetFrameworkBase.Int32;
            day : NetFrameworkBase.Int32;
            calendar : NetFrameworkBase.System.Globalization.Calendar.Kind_Ptr
         )
         return NetFrameworkBase.System.DateTime.Kind_Ptr renames NetFrameworkBase.System.DateTime.Constructor; 
         
         function Constructor
         (
            year : NetFrameworkBase.Int32;
            month : NetFrameworkBase.Int32;
            day : NetFrameworkBase.Int32;
            hour : NetFrameworkBase.Int32;
            minute : NetFrameworkBase.Int32;
            second : NetFrameworkBase.Int32
         )
         return NetFrameworkBase.System.DateTime.Kind_Ptr renames NetFrameworkBase.System.DateTime.Constructor; 
         
         function Constructor
         (
            year : NetFrameworkBase.Int32;
            month : NetFrameworkBase.Int32;
            day : NetFrameworkBase.Int32;
            hour : NetFrameworkBase.Int32;
            minute : NetFrameworkBase.Int32;
            second : NetFrameworkBase.Int32;
            kind : NetFrameworkBase.System.DateTimeKind.Kind
         )
         return NetFrameworkBase.System.DateTime.Kind_Ptr renames NetFrameworkBase.System.DateTime.Constructor; 
         
         function Constructor
         (
            year : NetFrameworkBase.Int32;
            month : NetFrameworkBase.Int32;
            day : NetFrameworkBase.Int32;
            hour : NetFrameworkBase.Int32;
            minute : NetFrameworkBase.Int32;
            second : NetFrameworkBase.Int32;
            calendar : NetFrameworkBase.System.Globalization.Calendar.Kind_Ptr
         )
         return NetFrameworkBase.System.DateTime.Kind_Ptr renames NetFrameworkBase.System.DateTime.Constructor; 
         
         function Constructor
         (
            year : NetFrameworkBase.Int32;
            month : NetFrameworkBase.Int32;
            day : NetFrameworkBase.Int32;
            hour : NetFrameworkBase.Int32;
            minute : NetFrameworkBase.Int32;
            second : NetFrameworkBase.Int32;
            millisecond : NetFrameworkBase.Int32
         )
         return NetFrameworkBase.System.DateTime.Kind_Ptr renames NetFrameworkBase.System.DateTime.Constructor; 
         
         function Constructor
         (
            year : NetFrameworkBase.Int32;
            month : NetFrameworkBase.Int32;
            day : NetFrameworkBase.Int32;
            hour : NetFrameworkBase.Int32;
            minute : NetFrameworkBase.Int32;
            second : NetFrameworkBase.Int32;
            millisecond : NetFrameworkBase.Int32;
            kind : NetFrameworkBase.System.DateTimeKind.Kind
         )
         return NetFrameworkBase.System.DateTime.Kind_Ptr renames NetFrameworkBase.System.DateTime.Constructor; 
         
         function Constructor
         (
            year : NetFrameworkBase.Int32;
            month : NetFrameworkBase.Int32;
            day : NetFrameworkBase.Int32;
            hour : NetFrameworkBase.Int32;
            minute : NetFrameworkBase.Int32;
            second : NetFrameworkBase.Int32;
            millisecond : NetFrameworkBase.Int32;
            calendar : NetFrameworkBase.System.Globalization.Calendar.Kind_Ptr
         )
         return NetFrameworkBase.System.DateTime.Kind_Ptr renames NetFrameworkBase.System.DateTime.Constructor; 
         
         function Constructor
         (
            year : NetFrameworkBase.Int32;
            month : NetFrameworkBase.Int32;
            day : NetFrameworkBase.Int32;
            hour : NetFrameworkBase.Int32;
            minute : NetFrameworkBase.Int32;
            second : NetFrameworkBase.Int32;
            millisecond : NetFrameworkBase.Int32;
            calendar : NetFrameworkBase.System.Globalization.Calendar.Kind_Ptr;
            kind : NetFrameworkBase.System.DateTimeKind.Kind
         )
         return NetFrameworkBase.System.DateTime.Kind_Ptr renames NetFrameworkBase.System.DateTime.Constructor; 
         
      subtype DateTimeKind is NetFrameworkBase.System.DateTimeKind.Kind;
      
      subtype Delegate is NetFrameworkBase.System.Delegate.Kind_Ptr;
      subtype Delegate_Array is NetFrameworkBase.System.Delegate.Kind_Array;
      
      subtype MulticastDelegate is NetFrameworkBase.System.MulticastDelegate.Kind_Ptr;
      subtype MulticastDelegate_Array is NetFrameworkBase.System.MulticastDelegate.Kind_Array;
      
      subtype ResolveEventArgs is NetFrameworkBase.System.ResolveEventArgs.Kind_Ptr;
      subtype ResolveEventArgs_Array is NetFrameworkBase.System.ResolveEventArgs.Kind_Array;
      
         function Constructor
         (
            name : NetFrameworkBase.BSTR
         )
         return NetFrameworkBase.System.ResolveEventArgs.Kind_Ptr renames NetFrameworkBase.System.ResolveEventArgs.Constructor; 
         
         function Constructor
         (
            name : NetFrameworkBase.BSTR;
            requestingAssembly : NetFrameworkBase.System.Reflection.Assembly.Kind_Ptr
         )
         return NetFrameworkBase.System.ResolveEventArgs.Kind_Ptr renames NetFrameworkBase.System.ResolveEventArgs.Constructor; 
         
      subtype AsyncCallback is NetFrameworkBase.System.AsyncCallback.Kind_Ptr;
      subtype AsyncCallback_Array is NetFrameworkBase.System.AsyncCallback.Kind_Array;
      
      subtype Attribute is NetFrameworkBase.System.Attribute.Kind_Ptr;
      subtype Attribute_Array is NetFrameworkBase.System.Attribute.Kind_Array;
      
      subtype Boolean is NetFrameworkBase.System.Boolean.Kind_Ptr;
      subtype Boolean_Array is NetFrameworkBase.System.Boolean.Kind_Array;
      
      subtype Byte is NetFrameworkBase.System.Byte.Kind_Ptr;
      subtype Byte_Array is NetFrameworkBase.System.Byte.Kind_Array;
      
         function Constructor return NetFrameworkBase.System.Byte.Kind_Ptr renames NetFrameworkBase.System.Byte.Constructor;
         
      subtype Char is NetFrameworkBase.System.Char.Kind_Ptr;
      subtype Char_Array is NetFrameworkBase.System.Char.Kind_Array;
      
      subtype CharEnumerator is NetFrameworkBase.System.CharEnumerator.Kind_Ptr;
      subtype CharEnumerator_Array is NetFrameworkBase.System.CharEnumerator.Kind_Array;
      
      subtype Console is NetFrameworkBase.System.Console.Kind_Ptr;
      subtype Console_Array is NetFrameworkBase.System.Console.Kind_Array;
      
      subtype ConsoleCancelEventHandler is NetFrameworkBase.System.ConsoleCancelEventHandler.Kind_Ptr;
      subtype ConsoleCancelEventHandler_Array is NetFrameworkBase.System.ConsoleCancelEventHandler.Kind_Array;
      
      subtype ConsoleCancelEventArgs is NetFrameworkBase.System.ConsoleCancelEventArgs.Kind_Ptr;
      subtype ConsoleCancelEventArgs_Array is NetFrameworkBase.System.ConsoleCancelEventArgs.Kind_Array;
      
      subtype ConsoleColor is NetFrameworkBase.System.ConsoleColor.Kind;
      
      subtype ConsoleKey is NetFrameworkBase.System.ConsoleKey.Kind;
      
      subtype ConsoleKeyInfo is NetFrameworkBase.System.ConsoleKeyInfo.Kind_Ptr;
      subtype ConsoleKeyInfo_Array is NetFrameworkBase.System.ConsoleKeyInfo.Kind_Array;
      
         function Constructor
         (
            keyChar : NetFrameworkBase.Wide_Char;
            key : NetFrameworkBase.System.ConsoleKey.Kind;
            shift : NetFrameworkBase.Boolean;
            alt : NetFrameworkBase.Boolean;
            control : NetFrameworkBase.Boolean
         )
         return NetFrameworkBase.System.ConsoleKeyInfo.Kind_Ptr renames NetFrameworkBase.System.ConsoleKeyInfo.Constructor; 
         
      subtype ConsoleModifiers is NetFrameworkBase.System.ConsoleModifiers.Kind;
      
      subtype ConsoleSpecialKey is NetFrameworkBase.System.ConsoleSpecialKey.Kind;
      
      subtype DayOfWeek is NetFrameworkBase.System.DayOfWeek.Kind;
      
      subtype Decimal is NetFrameworkBase.System.Decimal.Kind_Ptr;
      subtype Decimal_Array is NetFrameworkBase.System.Decimal.Kind_Array;
      
         function Constructor
         (
            value : NetFrameworkBase.Int32
         )
         return NetFrameworkBase.System.Decimal.Kind_Ptr renames NetFrameworkBase.System.Decimal.Constructor; 
         
         function Constructor
         (
            value : NetFrameworkBase.UInt32
         )
         return NetFrameworkBase.System.Decimal.Kind_Ptr renames NetFrameworkBase.System.Decimal.Constructor; 
         
         function Constructor
         (
            value : NetFrameworkBase.Int64
         )
         return NetFrameworkBase.System.Decimal.Kind_Ptr renames NetFrameworkBase.System.Decimal.Constructor; 
         
         function Constructor
         (
            value : NetFrameworkBase.UInt64
         )
         return NetFrameworkBase.System.Decimal.Kind_Ptr renames NetFrameworkBase.System.Decimal.Constructor; 
         
         function Constructor
         (
            bits : NetFrameworkBase.Int32_Array
         )
         return NetFrameworkBase.System.Decimal.Kind_Ptr renames NetFrameworkBase.System.Decimal.Constructor; 
         
         function Constructor
         (
            lo : NetFrameworkBase.Int32;
            mid : NetFrameworkBase.Int32;
            hi : NetFrameworkBase.Int32;
            isNegative : NetFrameworkBase.Boolean;
            scale : NetFrameworkBase.Byte
         )
         return NetFrameworkBase.System.Decimal.Kind_Ptr renames NetFrameworkBase.System.Decimal.Constructor; 
         
         function Constructor
         (
            value : NetFrameworkBase.Single
         )
         return NetFrameworkBase.System.Decimal.Kind_Ptr renames NetFrameworkBase.System.Decimal.Constructor; 
         
         function Constructor
         (
            value : NetFrameworkBase.Double
         )
         return NetFrameworkBase.System.Decimal.Kind_Ptr renames NetFrameworkBase.System.Decimal.Constructor; 
         
      subtype Double is NetFrameworkBase.System.Double.Kind_Ptr;
      subtype Double_Array is NetFrameworkBase.System.Double.Kind_Array;
      
      subtype Enum is NetFrameworkBase.System.Enum.Kind_Ptr;
      subtype Enum_Array is NetFrameworkBase.System.Enum.Kind_Array;
      
      subtype EnvironmentVariableTarget is NetFrameworkBase.System.EnvironmentVariableTarget.Kind;
      
      subtype Environment is NetFrameworkBase.System.Environment.Kind_Ptr;
      subtype Environment_Array is NetFrameworkBase.System.Environment.Kind_Array;
      
      subtype EventArgs is NetFrameworkBase.System.EventArgs.Kind_Ptr;
      subtype EventArgs_Array is NetFrameworkBase.System.EventArgs.Kind_Array;
      
         function Constructor return NetFrameworkBase.System.EventArgs.Kind_Ptr renames NetFrameworkBase.System.EventArgs.Constructor;
         
      subtype Guid is NetFrameworkBase.System.Guid.Kind_Ptr;
      subtype Guid_Array is NetFrameworkBase.System.Guid.Kind_Array;
      
         function Constructor
         (
            b : NetFrameworkBase.Byte_Array
         )
         return NetFrameworkBase.System.Guid.Kind_Ptr renames NetFrameworkBase.System.Guid.Constructor; 
         
         function Constructor
         (
            a : NetFrameworkBase.UInt32;
            b : NetFrameworkBase.UInt16;
            c : NetFrameworkBase.UInt16;
            d : NetFrameworkBase.Byte;
            e : NetFrameworkBase.Byte;
            f : NetFrameworkBase.Byte;
            g : NetFrameworkBase.Byte;
            h : NetFrameworkBase.Byte;
            i : NetFrameworkBase.Byte;
            j : NetFrameworkBase.Byte;
            k : NetFrameworkBase.Byte
         )
         return NetFrameworkBase.System.Guid.Kind_Ptr renames NetFrameworkBase.System.Guid.Constructor; 
         
         function Constructor
         (
            a : NetFrameworkBase.Int32;
            b : NetFrameworkBase.Int16;
            c : NetFrameworkBase.Int16;
            d : NetFrameworkBase.Byte_Array
         )
         return NetFrameworkBase.System.Guid.Kind_Ptr renames NetFrameworkBase.System.Guid.Constructor; 
         
         function Constructor
         (
            a : NetFrameworkBase.Int32;
            b : NetFrameworkBase.Int16;
            c : NetFrameworkBase.Int16;
            d : NetFrameworkBase.Byte;
            e : NetFrameworkBase.Byte;
            f : NetFrameworkBase.Byte;
            g : NetFrameworkBase.Byte;
            h : NetFrameworkBase.Byte;
            i : NetFrameworkBase.Byte;
            j : NetFrameworkBase.Byte;
            k : NetFrameworkBase.Byte
         )
         return NetFrameworkBase.System.Guid.Kind_Ptr renames NetFrameworkBase.System.Guid.Constructor; 
         
         function Constructor
         (
            g : NetFrameworkBase.BSTR
         )
         return NetFrameworkBase.System.Guid.Kind_Ptr renames NetFrameworkBase.System.Guid.Constructor; 
         
      subtype IAsyncResult is NetFrameworkBase.System.IAsyncResult.Kind_Ptr;
      subtype IAsyncResult_Array is NetFrameworkBase.System.IAsyncResult.Kind_Array;
      
      subtype IFormatProvider is NetFrameworkBase.System.IFormatProvider.Kind_Ptr;
      subtype IFormatProvider_Array is NetFrameworkBase.System.IFormatProvider.Kind_Array;
      
      subtype Int16 is NetFrameworkBase.System.Int16.Kind_Ptr;
      subtype Int16_Array is NetFrameworkBase.System.Int16.Kind_Array;
      
         function Constructor return NetFrameworkBase.System.Int16.Kind_Ptr renames NetFrameworkBase.System.Int16.Constructor;
         
      subtype Int32 is NetFrameworkBase.System.Int32.Kind_Ptr;
      subtype Int32_Array is NetFrameworkBase.System.Int32.Kind_Array;
      
         function Constructor return NetFrameworkBase.System.Int32.Kind_Ptr renames NetFrameworkBase.System.Int32.Constructor;
         
      subtype Int64 is NetFrameworkBase.System.Int64.Kind_Ptr;
      subtype Int64_Array is NetFrameworkBase.System.Int64.Kind_Array;
      
         function Constructor return NetFrameworkBase.System.Int64.Kind_Ptr renames NetFrameworkBase.System.Int64.Constructor;
         
      subtype IntPtr is NetFrameworkBase.System.IntPtr.Kind_Ptr;
      subtype IntPtr_Array is NetFrameworkBase.System.IntPtr.Kind_Array;
      
         function Constructor
         (
            value : NetFrameworkBase.Int32
         )
         return NetFrameworkBase.System.IntPtr.Kind_Ptr renames NetFrameworkBase.System.IntPtr.Constructor; 
         
         function Constructor
         (
            value : NetFrameworkBase.Int64
         )
         return NetFrameworkBase.System.IntPtr.Kind_Ptr renames NetFrameworkBase.System.IntPtr.Constructor; 
         
         function Constructor
         (
            value : NetFrameworkBase.Void_Ptr
         )
         return NetFrameworkBase.System.IntPtr.Kind_Ptr renames NetFrameworkBase.System.IntPtr.Constructor; 
         
      subtype MarshalByRefObject is NetFrameworkBase.System.MarshalByRefObject.Kind_Ptr;
      subtype MarshalByRefObject_Array is NetFrameworkBase.System.MarshalByRefObject.Kind_Array;
      
      subtype MidpointRounding is NetFrameworkBase.System.MidpointRounding.Kind;
      
      subtype OperatingSystem is NetFrameworkBase.System.OperatingSystem.Kind_Ptr;
      subtype OperatingSystem_Array is NetFrameworkBase.System.OperatingSystem.Kind_Array;
      
         function Constructor
         (
            platform : NetFrameworkBase.System.PlatformID.Kind;
            version : NetFrameworkBase.System.Version.Kind_Ptr
         )
         return NetFrameworkBase.System.OperatingSystem.Kind_Ptr renames NetFrameworkBase.System.OperatingSystem.Constructor; 
         
      subtype PlatformID is NetFrameworkBase.System.PlatformID.Kind;
      
      subtype RuntimeTypeHandle is NetFrameworkBase.System.RuntimeTypeHandle.Kind_Ptr;
      subtype RuntimeTypeHandle_Array is NetFrameworkBase.System.RuntimeTypeHandle.Kind_Array;
      
      subtype RuntimeMethodHandle is NetFrameworkBase.System.RuntimeMethodHandle.Kind_Ptr;
      subtype RuntimeMethodHandle_Array is NetFrameworkBase.System.RuntimeMethodHandle.Kind_Array;
      
      subtype RuntimeFieldHandle is NetFrameworkBase.System.RuntimeFieldHandle.Kind_Ptr;
      subtype RuntimeFieldHandle_Array is NetFrameworkBase.System.RuntimeFieldHandle.Kind_Array;
      
      subtype ModuleHandle is NetFrameworkBase.System.ModuleHandle.Kind_Ptr;
      subtype ModuleHandle_Array is NetFrameworkBase.System.ModuleHandle.Kind_Array;
      
      subtype SByte is NetFrameworkBase.System.SByte.Kind_Ptr;
      subtype SByte_Array is NetFrameworkBase.System.SByte.Kind_Array;
      
         function Constructor return NetFrameworkBase.System.SByte.Kind_Ptr renames NetFrameworkBase.System.SByte.Constructor;
         
      subtype Single is NetFrameworkBase.System.Single.Kind_Ptr;
      subtype Single_Array is NetFrameworkBase.System.Single.Kind_Array;
      
         function Constructor return NetFrameworkBase.System.Single.Kind_Ptr renames NetFrameworkBase.System.Single.Constructor;
         
      subtype TimeSpan is NetFrameworkBase.System.TimeSpan.Kind_Ptr;
      subtype TimeSpan_Array is NetFrameworkBase.System.TimeSpan.Kind_Array;
      
         function Constructor
         (
            ticks : NetFrameworkBase.Int64
         )
         return NetFrameworkBase.System.TimeSpan.Kind_Ptr renames NetFrameworkBase.System.TimeSpan.Constructor; 
         
         function Constructor
         (
            hours : NetFrameworkBase.Int32;
            minutes : NetFrameworkBase.Int32;
            seconds : NetFrameworkBase.Int32
         )
         return NetFrameworkBase.System.TimeSpan.Kind_Ptr renames NetFrameworkBase.System.TimeSpan.Constructor; 
         
         function Constructor
         (
            days : NetFrameworkBase.Int32;
            hours : NetFrameworkBase.Int32;
            minutes : NetFrameworkBase.Int32;
            seconds : NetFrameworkBase.Int32
         )
         return NetFrameworkBase.System.TimeSpan.Kind_Ptr renames NetFrameworkBase.System.TimeSpan.Constructor; 
         
         function Constructor
         (
            days : NetFrameworkBase.Int32;
            hours : NetFrameworkBase.Int32;
            minutes : NetFrameworkBase.Int32;
            seconds : NetFrameworkBase.Int32;
            milliseconds : NetFrameworkBase.Int32
         )
         return NetFrameworkBase.System.TimeSpan.Kind_Ptr renames NetFrameworkBase.System.TimeSpan.Constructor; 
         
      subtype Type_x is NetFrameworkBase.System.Type_x.Kind_Ptr;
      subtype Type_x_Array is NetFrameworkBase.System.Type_x.Kind_Array;
      
      subtype TypeCode is NetFrameworkBase.System.TypeCode.Kind;
      
      subtype TypedReference is NetFrameworkBase.System.TypedReference.Kind_Ptr;
      subtype TypedReference_Array is NetFrameworkBase.System.TypedReference.Kind_Array;
      
      subtype UInt16 is NetFrameworkBase.System.UInt16.Kind_Ptr;
      subtype UInt16_Array is NetFrameworkBase.System.UInt16.Kind_Array;
      
         function Constructor return NetFrameworkBase.System.UInt16.Kind_Ptr renames NetFrameworkBase.System.UInt16.Constructor;
         
      subtype UInt32 is NetFrameworkBase.System.UInt32.Kind_Ptr;
      subtype UInt32_Array is NetFrameworkBase.System.UInt32.Kind_Array;
      
         function Constructor return NetFrameworkBase.System.UInt32.Kind_Ptr renames NetFrameworkBase.System.UInt32.Constructor;
         
      subtype UInt64 is NetFrameworkBase.System.UInt64.Kind_Ptr;
      subtype UInt64_Array is NetFrameworkBase.System.UInt64.Kind_Array;
      
         function Constructor return NetFrameworkBase.System.UInt64.Kind_Ptr renames NetFrameworkBase.System.UInt64.Constructor;
         
      subtype ValueType is NetFrameworkBase.System.ValueType.Kind_Ptr;
      subtype ValueType_Array is NetFrameworkBase.System.ValueType.Kind_Array;
      
      subtype Version is NetFrameworkBase.System.Version.Kind_Ptr;
      subtype Version_Array is NetFrameworkBase.System.Version.Kind_Array;
      
         function Constructor
         (
            major : NetFrameworkBase.Int32;
            minor : NetFrameworkBase.Int32;
            build : NetFrameworkBase.Int32;
            revision : NetFrameworkBase.Int32
         )
         return NetFrameworkBase.System.Version.Kind_Ptr renames NetFrameworkBase.System.Version.Constructor; 
         
         function Constructor
         (
            major : NetFrameworkBase.Int32;
            minor : NetFrameworkBase.Int32;
            build : NetFrameworkBase.Int32
         )
         return NetFrameworkBase.System.Version.Kind_Ptr renames NetFrameworkBase.System.Version.Constructor; 
         
         function Constructor
         (
            major : NetFrameworkBase.Int32;
            minor : NetFrameworkBase.Int32
         )
         return NetFrameworkBase.System.Version.Kind_Ptr renames NetFrameworkBase.System.Version.Constructor; 
         
         function Constructor
         (
            version : NetFrameworkBase.BSTR
         )
         return NetFrameworkBase.System.Version.Kind_Ptr renames NetFrameworkBase.System.Version.Constructor; 
         
         function Constructor return NetFrameworkBase.System.Version.Kind_Ptr renames NetFrameworkBase.System.Version.Constructor;
         
   
end;
