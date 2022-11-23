/*2. Find 2 elements with the greatest sum in an array

Example: [1,7,9,2,5,3,8] => [9,8]
*/
/**Program */

List<num> myFunc(List<num> list) {
  var list2 = list;
  list2.sort();
  int b = list2.length;
  return [list2.last, list2[b - 2]];
}

void main() {
  List<int> array = [1, 7, 9, 2, 5, 3, 8];
  List<num> newArray = myFunc(array);
  print(newArray); // [9, 8]
}
