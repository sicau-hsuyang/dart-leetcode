class Solution {
  String countAndSay(int n) {
    String str = "1";
    for (int i = 2; i <= n; i++) {
      String result = "";
      for (int offset = 0; offset < str.length;) {
        String char = str[offset];
        int k = offset + 1;
        bool flag = false;
        while (k < str.length && str[k] == char) {
          k++;
          flag = true;
        }
        result += (k - offset).toString() + char;
        if (flag) {
          offset = k;
        } else {
          offset++;
        }
      }
      str = result;
    }
    return str;
  }
}
