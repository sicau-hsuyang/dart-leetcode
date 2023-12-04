import 'package:test/test.dart';
import 'package:dart_leetcode/car_pooling.dart';

void main() {
  test("car pooling case 1", () {
    List<List<int>> trips = [
      [4, 3, 4],
      [3, 2, 4],
      [1, 8, 9],
      [7, 2, 5],
    ];
    int capacity = 14;
    Solution s = Solution();
    bool flag = s.carPooling(trips, capacity);
    expect(flag, true);
  });

  test("car pooling  case 2", () {
    List<List<int>> trips = [
      [2, 1, 5],
      [3, 3, 7],
    ];
    int capacity = 4;
    Solution s = Solution();
    bool res = s.carPooling(trips, capacity);
    expect(res, false);
  });

  test("car pooling case 3", () {
    List<List<int>> trips = [
      [2, 1, 5],
      [3, 3, 7],
    ];
    int capacity = 5;
    Solution s = Solution();
    bool res = s.carPooling(trips, capacity);
    expect(res, true);
  });

  test("car pooling case 4", () {
    List<List<int>> trips = [
      [2, 1, 5],
      [3, 5, 7],
    ];
    int capacity = 3;
    Solution s = Solution();
    bool res = s.carPooling(trips, capacity);
    expect(res, true);
  });

  test("car pooling case 5", () {
    List<List<int>> trips = [
      [7, 5, 6],
      [6, 7, 8],
      [10, 1, 6],
    ];
    int capacity = 16;
    Solution s = Solution();
    bool res = s.carPooling(trips, capacity);
    expect(res, false);
  });
}
