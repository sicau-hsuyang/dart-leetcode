class Solution {
  String removeOccurrences(String s, String part) {
    String str = s;
    while (true) {
      RegExp regExp = RegExp(part);
      int originalLen = str.length;
      str = str.replaceFirst(regExp, '');
      if (originalLen == str.length) {
        break;
      }
    }
    return str;
  }
}
