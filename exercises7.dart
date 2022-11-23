/*7. 	I have an array: ['face', 'zalo', 'face', 'gmail', 'zalo', 'zalo']
	Write a function with 1 input parameter, an return a new object like this:
	{'face': 2, 'zalo': 3, 'gmail':1} // 2,3,1 are the number of occurrences of 'face', 'zalo', 'gmail' in the array

Example: 		const myArr = ['face', 'zalo', 'face', 'gmail', 'zalo', 'zalo']
			const myFunc = (inputArr) {
				//write somthing here
			}
			myFunc(myArr) // {'face': 2, 'zalo': 3, 'gmail':1}
*/
/**Program */

Map myFunc(List list) {
  List list2 = list.toSet().toList();
  List count = list2.fold([], (count, element) {
    var n = 0;
    for (var i = 0; i < list.length; i++) if (list[i] == element) n++;
    count.add(n);
    return count;
  });
  return Map.fromIterables(list2, count);
}

void main() {
  List myArr = ['face', 'zalo', 'face', 'gmail', 'zalo', 'zalo'];

  print(myFunc(myArr)); // {face: 2, zalo: 3, gmail: 1}
}
