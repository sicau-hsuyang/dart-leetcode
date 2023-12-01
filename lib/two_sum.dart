class Solution {
  List<int> twoSum(List<int> nums, int target) {
    Map<int, int> map = {};
    List<int> result = [];
    for (var i = 0; i < nums.length; i++) {
      int num = nums[i];
      int distance = target - num;
      if (map.containsKey(distance) && map[distance] != i) {
        result.add(map[distance] as int);
        result.add(i);
        break;
      } else {
        map[num] = i;
      }
    }
    return result;
  }
}
