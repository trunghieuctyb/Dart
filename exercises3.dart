/*3. Find pairs of elements whose sum is equal to a given number

Example: [1,7,9,2,5,3,8], sum = 10 => [[1,9] ; [7,3]; [2,8]]
*/
/**Program */

List<List<num>> myFunc(List<num> list, num sum) {
  var list2 = list;
  List<List<num>> result = [];
  list2.sort();
  var n = list2.length - 1;
  var i = 0;
  if (list2.first + list2[n - 1] >= sum)
    return [];
  else {
    while (i < n) {
      if (list2[i] + list2[n] == sum) {
        result.add([list2[i], list2[n]]);
        i++;
      }
      if (list2[i] + list2[n] > sum) n--;
      if (list2[i] + list2[n] < sum) i++;
    }
  }
  return result;
}

void main() {
  var list = [1, 7, 9, 2, 5, 3, 8];
  print(myFunc(list, 10)); // [1, 2, 3, 4, 5, 6]
}
