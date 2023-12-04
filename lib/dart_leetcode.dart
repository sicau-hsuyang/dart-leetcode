int calculate() {
  return 6 * 7;
}

void demo(bool Function() callback) {
  bool res = callback();
  if (res) {
    print('true');
  } else {
    print('false');
  }
}

List<int> filter(List<int> list,
    bool Function(int val, [int index, List<int> thisArgs]) callback) {
  List<int> result = [];
  for (int i = 0; i < list.length; i++) {
    bool res = callback(list[i], i, list);
    if (res) {
      result.add(list[i]);
    }
  }
  return result;
}
