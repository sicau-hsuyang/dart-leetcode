/*function heightChecker(heights: number[]): number {
    const expected = heights.slice(0).sort((a, b) => a - b);
    let size = 0;
    expected.forEach((num, idx) => {
        if (heights[idx] !== num) {
            size++;
        }
    })
    return size;
};*/

class Solution {
  int heightChecker(List<int> heights) {
    final List<int> expected = heights.sublist(0);
    expected.sort((a, b) => a - b);
    int size = 0;
    expected.asMap().forEach((idx, value) {
      if (heights[idx] != value) {
        size++;
      }
    });
    return size;
  }
}
