import 'package:test/test.dart';
import 'package:dart_leetcode/compress.dart';

void main() {
  test("compress case 1", () {
    final List<String> chars = ["a", "a", "b", "b", "c", "c", "c"];
    Solution s =  Solution();
    int res = s.compress(chars);
    expect(res, 6);
    expect(chars.length, 6);
    expect(chars, equals(["a", "2", "b", "2", "c", "3"]));
  });
}
