class Solution {
  List<int> trainingPlan(List<int> actions) {
    int left = 0;
    int right = actions.length - 1;
    while (actions.isNotEmpty) {
      while (actions[left] % 2 != 0 && left < right) {
        left++;
      }
      while (actions[right] % 2 == 0 && left < right) {
        right--;
      }
      if (left >= right) {
        break;
      }
      int tmp = actions[left];
      actions[left] = actions[right];
      actions[right] = tmp;
    }
    return actions;
  }
}
