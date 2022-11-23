/*1. Write a function with 2 input parameters (each parameter is an array). This function returns an array of the same elements in two arrays;

Example: 	array1 = [1,2,3,4,5,6];
		array2 = [3,4,8,9,12];
		myFunc(array1, array2); // => [3,4]
		*/
/**Program */

List myFunc(List a, List b) => a.toSet().intersection(b.toSet()).toList();

void main() {
  List a1 = [1, 3, 2, 5, 6, 4, 5];
  List a2 = [3, 5, 7, 6, 5, 1, 5, 9, 8];
  print(myFunc(a1, a2)); // [1, 3, 5, 6]
}
