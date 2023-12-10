import 'package:test/test.dart';
import 'package:dart_leetcode/remove_occurrences.dart';

void main() {
  test("compress case 1", () {
    String s = "daabcbaabcbc", part = "abc";
    Solution solution =  Solution();
    String res = solution.removeOccurrences(s, part);
    expect(res, "dab");
  });
}
