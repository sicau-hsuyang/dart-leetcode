class Solution {
  bool carPooling(List<List<int>> trips, int capacity) {
    // 先排序
    trips.sort((a, b) => a[1] - b[1]);
    //用来记住当前最近的下车的人和下车的时间点
    final List<List<int>> listMap = [];
    // 当前车上装的人
    int currentPeopleSize = 0;
    for (int i = 0; i < trips.length; i++) {
      List<int> ele = trips[i];
      int size = ele[0];
      int fromMileStone = ele[1];
      int toMileSone = ele[2];
      // 先把车上能撵下去的人全部撵下车
      while (listMap.isNotEmpty && listMap.first[1] <= fromMileStone) {
        // 下多少个人
        currentPeopleSize -= listMap.first[0];
        listMap.removeAt(0);
      }
      // 如果当前的车还装的下这么多人
      if (capacity - currentPeopleSize >= size) {
        // 上车
        currentPeopleSize += size;
        // 记住这个人在什么时候下车
        listMap.add([size, toMileSone]);
        // 把最近的
        listMap.sort((a, b) => a[1] - b[1]);
      } else {
        return false;
      }
    }
    return true;
  }
}
