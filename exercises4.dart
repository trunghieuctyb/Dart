/*4. Get a new array from the given array so that the elements appear only once (recommend: using Set)

Example: [1,2,3,1,2,3,4,5,6,4] => [1,2,3,4,5,6]
*/
/**Program */
List myFunc(List list) => list.toSet().toList();

void main() {
  List list = [1, 2, 3, 1, 2, 3, 4, 5, 6, 4];
  print(myFunc(list)); // [1, 2, 3, 4, 5, 6]
}
