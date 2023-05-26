class Product {
  Product({required this.id, required this.name});
  String id;
  String name;

  static List<Product> currentProducts = [
    Product(id: '1', name: 'Apples'),
    Product(id: '2', name: 'Mango'),
    Product(id: '3', name: 'Papaya'),
    Product(id: '4', name: 'Lemon'),
    Product(id: '5', name: 'Grapes'),
    Product(id: '6', name: 'Kiwi'),
    Product(id: '7', name: 'Banana'),
    Product(id: '8', name: 'Oranges'),
  ];
  
}
