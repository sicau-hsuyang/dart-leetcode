class Solution {
  int findShortestSubArray(List<int> nums) {
    Map<int, int> map = <int, int>{};
    nums.forEach((number) {
      int? count = map[number];
      if (count != null) {
        map[number] = count + 1;
      } else {
        map[number] = 1;
      }
    });
    // 先找到数组的度
    List<int> degree = [];
    // 最大频率
    int maxFrequency = 0;
    map.forEach((prop, value) {
      // 如果新来的最大频率比当前的大，则更新最大频率
      if (value > maxFrequency) {
        maxFrequency = value;
        degree = [prop];
      }
      // 如果出现相同的，先别着急丢
      else if (value == maxFrequency) {
        degree.add(prop);
      }
    });
    List<int> subArrayList = getSubArray(nums, degree);
    // 求最小值
    int maxLength =
        subArrayList.reduce((min, current) => current < min ? current : min);
    return maxLength;
  }

  List<int> getSubArray(List<int> nums, List<int> degrees) {
    return degrees.map((degree) => getSubArrayOnce(nums, degree)).toList();
  }

  int getSubArrayOnce(List<int> nums, int degree) {
    int left = 0;
    int right = nums.length - 1;
    // 从左边剔除
    while (left < nums.length && nums[left] != degree) {
      left++;
    }
    // 从右边剔除
    while (right > 0 && nums[right] != degree) {
      right--;
    }
    return right - left + 1;
  }
}
