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
with NetFrameworkBase.System.Collections.ReadOnlyCollectionBase;
with NetFrameworkBase.System.Collections.ArrayList;
with NetFrameworkBase.System.Collections.Hashtable;
with NetFrameworkBase.System.Collections.DictionaryEntry;
with NetFrameworkBase.System.Collections.ICollection;
with NetFrameworkBase.System.Collections.IComparer;
with NetFrameworkBase.System.Collections.IDictionary;
with NetFrameworkBase.System.Collections.IDictionaryEnumerator;
with NetFrameworkBase.System.Collections.IEnumerator;
with NetFrameworkBase.System.Collections.IEqualityComparer;
with NetFrameworkBase.System.Collections.IHashCodeProvider;
with NetFrameworkBase.System.Collections.IList;
with NetFrameworkBase.System.Object;
--------------------------------------------------------------------------------
package NetFramework.System.Collections is
   
      subtype ReadOnlyCollectionBase is NetFrameworkBase.System.Collections.ReadOnlyCollectionBase.Kind_Ptr;
      subtype ReadOnlyCollectionBase_Array is NetFrameworkBase.System.Collections.ReadOnlyCollectionBase.Kind_Array;
      
      subtype ArrayList is NetFrameworkBase.System.Collections.ArrayList.Kind_Ptr;
      subtype ArrayList_Array is NetFrameworkBase.System.Collections.ArrayList.Kind_Array;
      
         function Constructor return NetFrameworkBase.System.Collections.ArrayList.Kind_Ptr renames NetFrameworkBase.System.Collections.ArrayList.Constructor;
         
         function Constructor
         (
            capacity : NetFrameworkBase.Int32
         )
         return NetFrameworkBase.System.Collections.ArrayList.Kind_Ptr renames NetFrameworkBase.System.Collections.ArrayList.Constructor; 
         
         function Constructor
         (
            c : NetFrameworkBase.System.Collections.ICollection.Kind_Ptr
         )
         return NetFrameworkBase.System.Collections.ArrayList.Kind_Ptr renames NetFrameworkBase.System.Collections.ArrayList.Constructor; 
         
      subtype Hashtable is NetFrameworkBase.System.Collections.Hashtable.Kind_Ptr;
      subtype Hashtable_Array is NetFrameworkBase.System.Collections.Hashtable.Kind_Array;
      
         function Constructor return NetFrameworkBase.System.Collections.Hashtable.Kind_Ptr renames NetFrameworkBase.System.Collections.Hashtable.Constructor;
         
         function Constructor
         (
            capacity : NetFrameworkBase.Int32
         )
         return NetFrameworkBase.System.Collections.Hashtable.Kind_Ptr renames NetFrameworkBase.System.Collections.Hashtable.Constructor; 
         
         function Constructor
         (
            capacity : NetFrameworkBase.Int32;
            loadFactor : NetFrameworkBase.Single
         )
         return NetFrameworkBase.System.Collections.Hashtable.Kind_Ptr renames NetFrameworkBase.System.Collections.Hashtable.Constructor; 
         
         function Constructor
         (
            capacity : NetFrameworkBase.Int32;
            loadFactor : NetFrameworkBase.Single;
            hcp : NetFrameworkBase.System.Collections.IHashCodeProvider.Kind_Ptr;
            comparer : NetFrameworkBase.System.Collections.IComparer.Kind_Ptr
         )
         return NetFrameworkBase.System.Collections.Hashtable.Kind_Ptr renames NetFrameworkBase.System.Collections.Hashtable.Constructor; 
         
         function Constructor
         (
            capacity : NetFrameworkBase.Int32;
            loadFactor : NetFrameworkBase.Single;
            equalityComparer : NetFrameworkBase.System.Collections.IEqualityComparer.Kind_Ptr
         )
         return NetFrameworkBase.System.Collections.Hashtable.Kind_Ptr renames NetFrameworkBase.System.Collections.Hashtable.Constructor; 
         
         function Constructor
         (
            hcp : NetFrameworkBase.System.Collections.IHashCodeProvider.Kind_Ptr;
            comparer : NetFrameworkBase.System.Collections.IComparer.Kind_Ptr
         )
         return NetFrameworkBase.System.Collections.Hashtable.Kind_Ptr renames NetFrameworkBase.System.Collections.Hashtable.Constructor; 
         
         function Constructor
         (
            equalityComparer : NetFrameworkBase.System.Collections.IEqualityComparer.Kind_Ptr
         )
         return NetFrameworkBase.System.Collections.Hashtable.Kind_Ptr renames NetFrameworkBase.System.Collections.Hashtable.Constructor; 
         
         function Constructor
         (
            capacity : NetFrameworkBase.Int32;
            hcp : NetFrameworkBase.System.Collections.IHashCodeProvider.Kind_Ptr;
            comparer : NetFrameworkBase.System.Collections.IComparer.Kind_Ptr
         )
         return NetFrameworkBase.System.Collections.Hashtable.Kind_Ptr renames NetFrameworkBase.System.Collections.Hashtable.Constructor; 
         
         function Constructor
         (
            capacity : NetFrameworkBase.Int32;
            equalityComparer : NetFrameworkBase.System.Collections.IEqualityComparer.Kind_Ptr
         )
         return NetFrameworkBase.System.Collections.Hashtable.Kind_Ptr renames NetFrameworkBase.System.Collections.Hashtable.Constructor; 
         
         function Constructor
         (
            d : NetFrameworkBase.System.Collections.IDictionary.Kind_Ptr
         )
         return NetFrameworkBase.System.Collections.Hashtable.Kind_Ptr renames NetFrameworkBase.System.Collections.Hashtable.Constructor; 
         
         function Constructor
         (
            d : NetFrameworkBase.System.Collections.IDictionary.Kind_Ptr;
            loadFactor : NetFrameworkBase.Single
         )
         return NetFrameworkBase.System.Collections.Hashtable.Kind_Ptr renames NetFrameworkBase.System.Collections.Hashtable.Constructor; 
         
         function Constructor
         (
            d : NetFrameworkBase.System.Collections.IDictionary.Kind_Ptr;
            hcp : NetFrameworkBase.System.Collections.IHashCodeProvider.Kind_Ptr;
            comparer : NetFrameworkBase.System.Collections.IComparer.Kind_Ptr
         )
         return NetFrameworkBase.System.Collections.Hashtable.Kind_Ptr renames NetFrameworkBase.System.Collections.Hashtable.Constructor; 
         
         function Constructor
         (
            d : NetFrameworkBase.System.Collections.IDictionary.Kind_Ptr;
            equalityComparer : NetFrameworkBase.System.Collections.IEqualityComparer.Kind_Ptr
         )
         return NetFrameworkBase.System.Collections.Hashtable.Kind_Ptr renames NetFrameworkBase.System.Collections.Hashtable.Constructor; 
         
         function Constructor
         (
            d : NetFrameworkBase.System.Collections.IDictionary.Kind_Ptr;
            loadFactor : NetFrameworkBase.Single;
            hcp : NetFrameworkBase.System.Collections.IHashCodeProvider.Kind_Ptr;
            comparer : NetFrameworkBase.System.Collections.IComparer.Kind_Ptr
         )
         return NetFrameworkBase.System.Collections.Hashtable.Kind_Ptr renames NetFrameworkBase.System.Collections.Hashtable.Constructor; 
         
         function Constructor
         (
            d : NetFrameworkBase.System.Collections.IDictionary.Kind_Ptr;
            loadFactor : NetFrameworkBase.Single;
            equalityComparer : NetFrameworkBase.System.Collections.IEqualityComparer.Kind_Ptr
         )
         return NetFrameworkBase.System.Collections.Hashtable.Kind_Ptr renames NetFrameworkBase.System.Collections.Hashtable.Constructor; 
         
      subtype DictionaryEntry is NetFrameworkBase.System.Collections.DictionaryEntry.Kind_Ptr;
      subtype DictionaryEntry_Array is NetFrameworkBase.System.Collections.DictionaryEntry.Kind_Array;
      
         function Constructor
         (
            key : NetFrameworkBase.System.Object.Kind_Ptr;
            value : NetFrameworkBase.System.Object.Kind_Ptr
         )
         return NetFrameworkBase.System.Collections.DictionaryEntry.Kind_Ptr renames NetFrameworkBase.System.Collections.DictionaryEntry.Constructor; 
         
      subtype ICollection is NetFrameworkBase.System.Collections.ICollection.Kind_Ptr;
      subtype ICollection_Array is NetFrameworkBase.System.Collections.ICollection.Kind_Array;
      
      subtype IComparer is NetFrameworkBase.System.Collections.IComparer.Kind_Ptr;
      subtype IComparer_Array is NetFrameworkBase.System.Collections.IComparer.Kind_Array;
      
      subtype IDictionary is NetFrameworkBase.System.Collections.IDictionary.Kind_Ptr;
      subtype IDictionary_Array is NetFrameworkBase.System.Collections.IDictionary.Kind_Array;
      
      subtype IDictionaryEnumerator is NetFrameworkBase.System.Collections.IDictionaryEnumerator.Kind_Ptr;
      subtype IDictionaryEnumerator_Array is NetFrameworkBase.System.Collections.IDictionaryEnumerator.Kind_Array;
      
      subtype IEnumerator is NetFrameworkBase.System.Collections.IEnumerator.Kind_Ptr;
      subtype IEnumerator_Array is NetFrameworkBase.System.Collections.IEnumerator.Kind_Array;
      
      subtype IEqualityComparer is NetFrameworkBase.System.Collections.IEqualityComparer.Kind_Ptr;
      subtype IEqualityComparer_Array is NetFrameworkBase.System.Collections.IEqualityComparer.Kind_Array;
      
      subtype IHashCodeProvider is NetFrameworkBase.System.Collections.IHashCodeProvider.Kind_Ptr;
      subtype IHashCodeProvider_Array is NetFrameworkBase.System.Collections.IHashCodeProvider.Kind_Array;
      
      subtype IList is NetFrameworkBase.System.Collections.IList.Kind_Ptr;
      subtype IList_Array is NetFrameworkBase.System.Collections.IList.Kind_Array;
      
   
end;
