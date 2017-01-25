public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
  if(reverse(onlyLetters(noSpaces(word.toLowerCase()))).equals(onlyLetters(noSpaces(word.toLowerCase()))))
  {
    return true;
  }
  return false;
}
public String reverse(String str)
{
    String sNew = new String();
    for(int i = str.length() - 1; i >= 0; i--)
    {
      sNew = sNew + str.charAt(i);
    }
    return sNew;
}

public String noSpaces(String sWord){
  String s = "";
  for(int i = 0; i < sWord.length(); i++)
  {
    if(sWord.charAt(i) != ' ')
    {
      s = s + sWord.charAt(i);
    }
  }
  return s;
}

public String onlyLetters(String sString){
  String result = new String();
  for(int i = 0; i < sString.length(); i++)
    if(Character.isLetter(sString.charAt(i)))
      result = result + sString.charAt(i);
  return result;
}