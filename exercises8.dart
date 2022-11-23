/*8. 	I have an array like this: var arr1 = [{ 'make': 'audi', 'model': 'r8', 'year': '2012' }, { 'make': 'audi', 'model': 'rs5', 'year': '2013' }, { 'make': 'ford', 'model': 'mustang', 'year': '2012' }, { 'make': 'ford', 'model': 'fusion', 'year': '2015' }, { 'make': 'kia', 'model': 'optima', 'year': '2012' }]
	Please write a function that has 2 input parameters, 1st param is an array like the above array, and the 2nd param is the name of any property in each object of the array.
	Example: myFunc(''make'', arr1);
	That will return a new object like this (each property is an array, and this array includes objects corresponding to that property):
	{
		"audi": [
			{
			"'make'": "audi",
			"'model'": "r8",
			"'year'": "2012"
			},
			{
			  "'make'": "audi",
			  "'model'": "rs5",
			  "'year'": "2013"
			}
		], 
		"ford": [
			{
			  "'make'": "ford",
			  "'model'": "mustang",
			  "'year'": "2012"
			},
			{
			  "'make'": "ford",
			  "'model'": "fusion",
			  "'year'": "2015"
			}
		],
		"kia": [
			{
			  "'make'": "kia",
			  "'model'": "optima",
			  "'year'": "2012"
			}
		]
	}

*/
/**Program */

Map myFunc(Object o, List list) {
  List list2 = list.fold([], (result, element) {
    for (var i = 0; i < list.length; i++) result.add(list[i][o]);
    return result.toSet().toList();
  });
  List<List<Map>> properties = List.filled(list2.length, []);
  for (var i = 0; i < list2.length; i++) {
    List<Map> list3 = [];
    for (var j = 0; j < list.length; j++) {
      if (list2[i] == list[j][o]) {
        list3.add(list[j]);
        // print(list[j][o]);
      }
    }
    properties[i] = list3;
  }
  // List<List> list3 = List.filled(list2.length, []);
  // List<List> properties = list3.fold([], (properties, element) {
  //   for (var i = 0; i < list.length; i++)
  //     if (list[i][o] == element) element.add(list[i]);
  //   return properties;
  // });
  // print(list2);
  // print(properties);
  return Map.fromIterables(list2, properties);
}

void main() {
  var arr1 = [
    {'make': 'audi', 'model': 'r8', 'year': '2012'},
    {'make': 'audi', 'model': 'rs5', 'year': '2013'},
    {'make': 'ford', 'model': 'mustang', 'year': '2012'},
    {'make': 'ford', 'model': 'fusion', 'year': '2015'},
    {'make': 'kia', 'model': 'optima', 'year': '2012'}
  ];
  // myFunc('make', arr1);
  print(myFunc('make', arr1));
  /*
    {audi: [{make: audi, model: r8, year: 2012},
            {make: audi, model: rs5, year: 2013}],
    ford: [{make: ford, model: mustang, year: 2012},
            {make: ford, model: fusion, year: 2015}],
    kia: [{make: kia, model: optima, year: 2012}]}  
    */
}
