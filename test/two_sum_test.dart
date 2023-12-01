import 'package:test/test.dart';
import 'package:dart_leetcode/two_sum.dart';

void main() {
  test("two sum", () {
    var nums = [2, 7, 11, 15], target = 9;
    Solution s = new Solution();
    List<int> result = s.twoSum(nums, target);
    expect(result[0], 0);
    expect(result[1], 1);
  });

  test("two sum2", () {
    var nums = [3, 2, 4], target = 6;
    Solution s = new Solution();
    List<int> result = s.twoSum(nums, target);
    expect(result[0], 1);
    expect(result[1], 2);
  });

  test("two sum3", () {
    var nums = [3, 3], target = 6;
    Solution s = new Solution();
    List<int> result = s.twoSum(nums, target);
    expect(result[0], 0);
    expect(result[1], 1);
  });

  test("two sum4", () {
    var nums = [3, 4, 3, 5, 6], target = 10;
    Solution s = new Solution();
    List<int> result = s.twoSum(nums, target);
    expect(result[0], 1);
    expect(result[1], 4);
  });
}
