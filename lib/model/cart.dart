import 'package:shopping_cart2/model/product.dart';

class Cart {
  Cart({required this.product, required this.quantity});
  Product product;
  int quantity;
}
