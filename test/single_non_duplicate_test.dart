import 'package:test/test.dart';
import 'package:dart_leetcode/single_non_duplicate.dart';

void main() {
  test("singe non duplicate", () {
    List<int> list = [1, 2, 2, 4, 4];
    Solution s = Solution();
    int val = s.singleNonDuplicate(list);
    expect(val, 1);
  });
}
