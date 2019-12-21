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
limited with NetFrameworkBase.System.Text.RegularExpressions.RegexOptions;
limited with NetFrameworkBase.System.TimeSpan;
limited with NetFrameworkBase.System.Text.RegularExpressions.MatchEvaluator;
limited with NetFrameworkBase.System.Text.RegularExpressions.RegexCompilationInfo;
limited with NetFrameworkBase.System.Reflection.AssemblyName;
limited with NetFrameworkBase.System.Reflection.Emit.CustomAttributeBuilder;
limited with NetFrameworkBase.System.Text.RegularExpressions.Match;
limited with NetFrameworkBase.System.Text.RegularExpressions.MatchCollection;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Text.RegularExpressions.Regex is
   
   type Kind is new NetFrameworkBase.System.Object.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function Escape
      (
         str : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.BSTR;
      
      function Unescape
      (
         str : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.BSTR;
      
      function CacheSize
      return NetFrameworkBase.Int32;
      
      procedure CacheSize
      (
         value : NetFrameworkBase.Int32
      )
      ;
      
      function Options
      (
         this : in out Regex.Kind
      )
      return NetFrameworkBase.System.Text.RegularExpressions.RegexOptions.Kind;
      
      function MatchTimeout
      (
         this : in out Regex.Kind
      )
      return NetFrameworkBase.System.TimeSpan.Kind_Ptr;
      
      function RightToLeft
      (
         this : in out Regex.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function ToString
      (
         this : in out Regex.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function GroupNameFromNumber
      (
         this : in out Regex.Kind;
         i : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.BSTR;
      
      function GroupNumberFromName
      (
         this : in out Regex.Kind;
         name : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.Int32;
      
      function IsMatch
      (
         input : NetFrameworkBase.BSTR; 
         pattern : NetFrameworkBase.BSTR; 
         options : NetFrameworkBase.System.Text.RegularExpressions.RegexOptions.Kind; 
         matchTimeout : NetFrameworkBase.System.TimeSpan.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      
      function IsMatch
      (
         this : in out Regex.Kind;
         input : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.Boolean;
      
      function IsMatch
      (
         this : in out Regex.Kind;
         input : NetFrameworkBase.BSTR; 
         startat : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.Boolean;
      
      function Match
      (
         input : NetFrameworkBase.BSTR; 
         pattern : NetFrameworkBase.BSTR; 
         options : NetFrameworkBase.System.Text.RegularExpressions.RegexOptions.Kind
      )
      return NetFrameworkBase.System.Text.RegularExpressions.Match.Kind_Ptr;
      
      function Match
      (
         input : NetFrameworkBase.BSTR; 
         pattern : NetFrameworkBase.BSTR; 
         options : NetFrameworkBase.System.Text.RegularExpressions.RegexOptions.Kind; 
         matchTimeout : NetFrameworkBase.System.TimeSpan.Kind_Ptr
      )
      return NetFrameworkBase.System.Text.RegularExpressions.Match.Kind_Ptr;
      
      function Match
      (
         this : in out Regex.Kind;
         input : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Text.RegularExpressions.Match.Kind_Ptr;
      
      function Match
      (
         this : in out Regex.Kind;
         input : NetFrameworkBase.BSTR; 
         startat : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.Text.RegularExpressions.Match.Kind_Ptr;
      
      function Match
      (
         this : in out Regex.Kind;
         input : NetFrameworkBase.BSTR; 
         beginning : NetFrameworkBase.Int32; 
         length : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.Text.RegularExpressions.Match.Kind_Ptr;
      
      function Matches
      (
         input : NetFrameworkBase.BSTR; 
         pattern : NetFrameworkBase.BSTR; 
         options : NetFrameworkBase.System.Text.RegularExpressions.RegexOptions.Kind
      )
      return NetFrameworkBase.System.Text.RegularExpressions.MatchCollection.Kind_Ptr;
      
      function Matches
      (
         input : NetFrameworkBase.BSTR; 
         pattern : NetFrameworkBase.BSTR; 
         options : NetFrameworkBase.System.Text.RegularExpressions.RegexOptions.Kind; 
         matchTimeout : NetFrameworkBase.System.TimeSpan.Kind_Ptr
      )
      return NetFrameworkBase.System.Text.RegularExpressions.MatchCollection.Kind_Ptr;
      
      function Matches
      (
         this : in out Regex.Kind;
         input : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Text.RegularExpressions.MatchCollection.Kind_Ptr;
      
      function Matches
      (
         this : in out Regex.Kind;
         input : NetFrameworkBase.BSTR; 
         startat : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.Text.RegularExpressions.MatchCollection.Kind_Ptr;
      
      function Replace
      (
         input : NetFrameworkBase.BSTR; 
         pattern : NetFrameworkBase.BSTR; 
         replacement : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.BSTR;
      
      function Replace
      (
         input : NetFrameworkBase.BSTR; 
         pattern : NetFrameworkBase.BSTR; 
         replacement : NetFrameworkBase.BSTR; 
         options : NetFrameworkBase.System.Text.RegularExpressions.RegexOptions.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function Replace
      (
         input : NetFrameworkBase.BSTR; 
         pattern : NetFrameworkBase.BSTR; 
         replacement : NetFrameworkBase.BSTR; 
         options : NetFrameworkBase.System.Text.RegularExpressions.RegexOptions.Kind; 
         matchTimeout : NetFrameworkBase.System.TimeSpan.Kind_Ptr
      )
      return NetFrameworkBase.BSTR;
      
      function Replace
      (
         this : in out Regex.Kind;
         input : NetFrameworkBase.BSTR; 
         replacement : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.BSTR;
      
      function Replace
      (
         this : in out Regex.Kind;
         input : NetFrameworkBase.BSTR; 
         replacement : NetFrameworkBase.BSTR; 
         count : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.BSTR;
      
      function Replace
      (
         this : in out Regex.Kind;
         input : NetFrameworkBase.BSTR; 
         replacement : NetFrameworkBase.BSTR; 
         count : NetFrameworkBase.Int32; 
         startat : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.BSTR;
      
      function Replace
      (
         input : NetFrameworkBase.BSTR; 
         pattern : NetFrameworkBase.BSTR; 
         evaluator : NetFrameworkBase.System.Text.RegularExpressions.MatchEvaluator.Kind_Ptr
      )
      return NetFrameworkBase.BSTR;
      
      function Replace
      (
         input : NetFrameworkBase.BSTR; 
         pattern : NetFrameworkBase.BSTR; 
         evaluator : NetFrameworkBase.System.Text.RegularExpressions.MatchEvaluator.Kind_Ptr; 
         options : NetFrameworkBase.System.Text.RegularExpressions.RegexOptions.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function Replace
      (
         input : NetFrameworkBase.BSTR; 
         pattern : NetFrameworkBase.BSTR; 
         evaluator : NetFrameworkBase.System.Text.RegularExpressions.MatchEvaluator.Kind_Ptr; 
         options : NetFrameworkBase.System.Text.RegularExpressions.RegexOptions.Kind; 
         matchTimeout : NetFrameworkBase.System.TimeSpan.Kind_Ptr
      )
      return NetFrameworkBase.BSTR;
      
      function Replace
      (
         this : in out Regex.Kind;
         input : NetFrameworkBase.BSTR; 
         evaluator : NetFrameworkBase.System.Text.RegularExpressions.MatchEvaluator.Kind_Ptr
      )
      return NetFrameworkBase.BSTR;
      
      function Replace
      (
         this : in out Regex.Kind;
         input : NetFrameworkBase.BSTR; 
         evaluator : NetFrameworkBase.System.Text.RegularExpressions.MatchEvaluator.Kind_Ptr; 
         count : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.BSTR;
      
      function Replace
      (
         this : in out Regex.Kind;
         input : NetFrameworkBase.BSTR; 
         evaluator : NetFrameworkBase.System.Text.RegularExpressions.MatchEvaluator.Kind_Ptr; 
         count : NetFrameworkBase.Int32; 
         startat : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.BSTR;
      
      function Split
      (
         input : NetFrameworkBase.BSTR; 
         pattern : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.BSTR_Array;
      
      function Split
      (
         input : NetFrameworkBase.BSTR; 
         pattern : NetFrameworkBase.BSTR; 
         options : NetFrameworkBase.System.Text.RegularExpressions.RegexOptions.Kind
      )
      return NetFrameworkBase.BSTR_Array;
      
      function Split
      (
         input : NetFrameworkBase.BSTR; 
         pattern : NetFrameworkBase.BSTR; 
         options : NetFrameworkBase.System.Text.RegularExpressions.RegexOptions.Kind; 
         matchTimeout : NetFrameworkBase.System.TimeSpan.Kind_Ptr
      )
      return NetFrameworkBase.BSTR_Array;
      
      function Split
      (
         this : in out Regex.Kind;
         input : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.BSTR_Array;
      
      function Split
      (
         this : in out Regex.Kind;
         input : NetFrameworkBase.BSTR; 
         count : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.BSTR_Array;
      
      function Split
      (
         this : in out Regex.Kind;
         input : NetFrameworkBase.BSTR; 
         count : NetFrameworkBase.Int32; 
         startat : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.BSTR_Array;
      
      procedure CompileToAssembly
      (
         regexinfos : NetFrameworkBase.System.Text.RegularExpressions.RegexCompilationInfo.Kind_Array; 
         assemblyname : NetFrameworkBase.System.Reflection.AssemblyName.Kind_Ptr
      )
      ;
      
      procedure CompileToAssembly
      (
         regexinfos : NetFrameworkBase.System.Text.RegularExpressions.RegexCompilationInfo.Kind_Array; 
         assemblyname : NetFrameworkBase.System.Reflection.AssemblyName.Kind_Ptr; 
         attributes : NetFrameworkBase.System.Reflection.Emit.CustomAttributeBuilder.Kind_Array
      )
      ;
      
      procedure CompileToAssembly
      (
         regexinfos : NetFrameworkBase.System.Text.RegularExpressions.RegexCompilationInfo.Kind_Array; 
         assemblyname : NetFrameworkBase.System.Reflection.AssemblyName.Kind_Ptr; 
         attributes : NetFrameworkBase.System.Reflection.Emit.CustomAttributeBuilder.Kind_Array; 
         resourceFile : NetFrameworkBase.BSTR
      )
      ;
      
      function GetGroupNumbers
      (
         this : in out Regex.Kind
      )
      return NetFrameworkBase.Int32_Array;
      
      function IsMatch
      (
         input : NetFrameworkBase.BSTR; 
         pattern : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.Boolean;
      
      function IsMatch
      (
         input : NetFrameworkBase.BSTR; 
         pattern : NetFrameworkBase.BSTR; 
         options : NetFrameworkBase.System.Text.RegularExpressions.RegexOptions.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function Match
      (
         input : NetFrameworkBase.BSTR; 
         pattern : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Text.RegularExpressions.Match.Kind_Ptr;
      
      function Matches
      (
         input : NetFrameworkBase.BSTR; 
         pattern : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Text.RegularExpressions.MatchCollection.Kind_Ptr;
      
      function GetGroupNames
      (
         this : in out Regex.Kind
      )
      return NetFrameworkBase.BSTR_Array;
      
      function Constructor
      (
         pattern : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Text.RegularExpressions.Regex.Kind_Ptr;
      
      function Constructor
      (
         pattern : NetFrameworkBase.BSTR;
         options : NetFrameworkBase.System.Text.RegularExpressions.RegexOptions.Kind
      )
      return NetFrameworkBase.System.Text.RegularExpressions.Regex.Kind_Ptr;
      
      function Constructor
      (
         pattern : NetFrameworkBase.BSTR;
         options : NetFrameworkBase.System.Text.RegularExpressions.RegexOptions.Kind;
         matchTimeout : NetFrameworkBase.System.TimeSpan.Kind_Ptr
      )
      return NetFrameworkBase.System.Text.RegularExpressions.Regex.Kind_Ptr;
      
end;