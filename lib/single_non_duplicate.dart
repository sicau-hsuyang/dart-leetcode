class Solution {
  int singleNonDuplicate(List<int> nums) {
    if (nums.length == 1) {
      return nums[0];
    }
    int left = 0;
    int right = nums.length - 1;
    int mid = ((left + right) / 2).floor();
    int leftCount = mid - left + 1;
    int rightCount = right - mid;
    int target = nums[0];
    while (leftCount >= 2 && rightCount >= 2) {
      // 直接找到
      if (mid - 1 >= 0 &&
          nums[mid - 1] != nums[mid] &&
          mid + 1 < nums.length &&
          nums[mid] != nums[mid + 1]) {
        target = nums[mid];
        break;
      } else if (mid - 1 >= 0 &&
          nums[mid - 1] == nums[mid] &&
          leftCount % 2 == 0) {
        left = mid + 1;
      } else if (mid + 1 < nums.length &&
          nums[mid] == nums[mid + 1] &&
          rightCount % 2 == 0) {
        right = mid - 1;
      }
      mid = ((left + right) / 2).floor();
      leftCount = mid - left + 1;
      rightCount = right - mid;
    }
    return target;
  }
}
