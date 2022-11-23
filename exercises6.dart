/*6. Given an array arr1. Write a function that returns a new array of the elements that appear more than once in arr1.
The elements in new array can only appear once in this array.

Example: 	var arr1 = [1,2,3,4,2,3,5,3,1,1,5,2,3];
		var myFunc = (inputArr) {
			// write your code here
		}
		var arr2 = myFunc(arr1); // [2,3,1,5]
*/
/**Program */

List myFunc(List list) {
  Set result = {};
  Set set = {};
  for (var i = 0; i < list.length; i++) {
    var n = set.length;
    set.add(list[i]);
    if (set.length == n)
      result.add(list[i]);
    else
      n++;
  }
  return result.toList();
}

void main() {
  List arr1 = [1, 2, 3, 4, 2, 3, 5, 3, 1, 1, 5, 2, 3];
  print(myFunc(arr1)); // [2, 3, 1, 5]
}
