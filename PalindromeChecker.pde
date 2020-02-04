public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String testes=removeCap(removePunc(removeSpace(word)));
  String tester=reverse(removeCap(removePunc(removeSpace(word))));
  if(testes.equals(tester)) {
    return true;
  }
  return false;
}
public String reverse(String s)
{
  String sNew = new String();
  for(int i=s.length()-1; i>=0; i--) {
    sNew+=s.substring(i, i+1);
  }
  return sNew;
}
public String removeSpace(String st) {
  String noSpace=new String();
  for(int i=0; i<st.length(); i++) {
    if(st.charAt(i) != ' ') {
      noSpace+=st.substring(i, i+1);
    }
  }
  return noSpace;
}
public String removeCap(String str)
{
  String noCap = new String();
  noCap=str.toLowerCase();
  return noCap;
}
public String removePunc(String stri)
{
  String noPunc = new String();
  for(int i=0; i<stri.length(); i++) {
    if(Character.isLetter(stri.charAt(i))) {
      noPunc += stri.substring(i, i+1);
    }
  }
  return noPunc;
}


