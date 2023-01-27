public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    }
    else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String sWord){
  if(sWord.equals(reverse(sWord)))
    return true;
  else
    return false;
}
public String reverse(String word){
  String result = new String();
  for(int i = word.length()-1; i>=0; i--)
    result=result+word.charAt(i);
  return result;
}
