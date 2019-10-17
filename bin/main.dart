import 'dart:io';
import 'dart:math';
// Challenge 1
// Read the two problems below and write test cases for them, make sure test cases run and fail

// Challenge 2
// Repeat the Shorter String
// Write a function that repeats the shorter string until it is equal to the length of the longer string.
// Examples:
// lengthen("abcdefg", "ab") ➞ "abababa"
// lengthen("ingenius", "forest") ➞ "forestfo"

String lengthen(String word1, String word2){
 String newWord='';
 if(word1.length==0 || word2.length==0)
   {
     print("Null String. Lengthening Not Possible");
     return null;
   }
 if(word1.length>word2.length)
   {
     for(int i=0;newWord.length<word1.length;i++) {
       newWord = newWord + word2;
     }
     newWord=newWord.substring(0,word1.length);
   }else if(word1.length<word2.length){
        for(int i=0;newWord.length<word2.length;i++)
          {
            newWord=newWord+word1;
          }
      newWord=newWord.substring(0,word2.length);
 }
 else{
   print("Strings are Equal");
   return null;
 }
 return newWord;
}

// Challenge 3
// Given what is supposed to be typed and what is actually typed,
// write a function that returns the broken key(s). The function looks like:
// findBrokenKeys(correct phrase, what you actually typed)
// Examples
// findBrokenKeys("happy birthday", "hawwy birthday") ➞ ["p"]
// findBrokenKeys("beethoven", "affthoif5") ➞ ["b", "e", "v", "n"]

List findBrokenKeys(String correct, String typed){
  List<String> result=[];
  if(correct.length!=typed.length)
    {print("Strings not equal. Operation  Not Possible");
    return [];
    }
  for(int i=0;i<correct.length;i++) {
    if (correct[i] != typed[i]) {
      result.add(correct[i]);

    }
  }

  return result.toSet().toList();
}


main() {
  print(lengthen("abcdefg", "ab"));
  print(lengthen("ingenius", "forest"));
  print(lengthen("abcdefg", "xxxxxxx")); //Edge Case
  print(lengthen("abcdefg", ""));// Edge Case
  print(lengthen("", ""));//Edge Case
  print(findBrokenKeys("happy birthday","hawwy birthday"));
  print(findBrokenKeys("beethoven", "affthoif5"));
  print(findBrokenKeys("beethoven", "beethoven"));// Edge Case
  print(findBrokenKeys("beethoven", "bee"));// Edge Case
  print(findBrokenKeys("", ""));// Edge CAse



}
