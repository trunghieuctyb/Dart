/*9. I have 1 object like this: 
		const order = {
			'cart': [
				{ id: 1, name: "ao dai", amount: 5, price: 100000 },
				{ id: 2, name: "ao coc", amount: 2, price: 200000 },
				{ id: 3, name: "quan dai", amount: 3, price: 150000 },
				{ id: 4, name: "quan coc", amount: 4, price: 130000 },
			],
			'customer': 'Name',
			'address': '12 Giai Phong Street'
		};
	Please only use reduce or fold method, only one time, and return 2 variables: totalOfMoney = 1870000, totalOfAmount = 14;
*/
/**Program */

List myFunc(Map map, Object? o) {
  if (map[o] is List) {
    List totalOfAmount = [];
    List totalOfMoney = map[o].fold([], (result, element) {
      totalOfAmount.add(element['amount']);
      result.add(element['amount'] * element['price']);
      return result;
    });
    return [
      totalOfMoney.reduce((i, j) => i + j),
      totalOfAmount.reduce((i, j) => i + j)
    ];
  }
  return [];
}

void main() {
  const order = {
    'cart': [
      {'id': 1, 'name': "ao dai", 'amount': 5, 'price': 100000},
      {'id': 2, 'name': "ao coc", 'amount': 2, 'price': 200000},
      {'id': 3, 'name': "quan dai", 'amount': 3, 'price': 150000},
      {'id': 4, 'name': "quan coc", 'amount': 4, 'price': 130000},
    ],
    'customer': 'Name',
    'address': '12 Giai Phong Street'
  };
  print(myFunc(order, 'cart')); // [1870000, 14]
}
