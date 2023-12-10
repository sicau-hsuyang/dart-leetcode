class Solution {
  int compress(List<String> chars) {
    int offset = 0;
    String result = "";
    while (offset < chars.length) {
      int k = offset + 1;
      while (k < chars.length && chars[k] == chars[offset]) {
        k++;
      }
      int distance = k - offset;
      if (distance == 1) {
        result += chars[offset];
      } else {
        result += chars[offset] + "" + distance.toString();
      }
      // 跳到新的位置的下一位上去
      offset = k;
    }
    chars.length = result.length;
    for (int i = 0; i < chars.length; i++) {
      // 逐一拷贝
      chars[i] = result[i];
    }
    return result.length;
  }
}
