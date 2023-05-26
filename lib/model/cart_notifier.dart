import 'package:flutter/material.dart';
import 'package:shopping_cart2/model/cart.dart';
import 'package:shopping_cart2/model/product.dart';

class CartNotifier extends ChangeNotifier {
  List<Cart> cartItems = [];

  int totalCartItems = 0;

  void add(Product product, int quantity) {
    //if(cartItem.where((element) => false))
    totalCartItems++;
    bool isPresent = false;

    cartItems.forEach(
      (element) {
        if (element.product.id == product.id) {
          isPresent = true;

          return;
        }
      },
    );

    if (isPresent) {
      // increment if already present in list
      cartItems.forEach(
        (element) {
          if (element.product.id == product.id) {
            element.quantity++;
            return;
          }
        },
      );
    } else {
      //add into list if not Present
      cartItems.add(Cart(product: product, quantity: quantity));
    }

    //totalCArtItemsCounter();

    notifyListeners();
  }

  // void subtract(Product product, int quantity) {
  //   if (totalCartItems >= 1) totalCartItems--;
  //   bool isPresent = true;

  //   // cartItems.forEach(
  //   //   (element) {
  //   //     if (element.product.id == product.id) {
  //   //       isPresent = true;

  //   //       return;
  //   //     }
  //   //   },
  //   // );

  //   cartItems.forEach(
  //     (element) {
  //       if (element.product.id == product.id && element.quantity == 0) {
  //         cartItems.remove(
  //           Cart(product: product, quantity: quantity),
  //         );
  //         return;
  //       } else {
  //         element.quantity--;
  //       }
  //     },
  //   );

  //   cartItems.forEach(
  //     (element) {
  //       if (element.product.id == product.id) {
  //         element.quantity--;
  //         return;
  //       }
  //     },
  //   );

  //   // totalCArtItemsCounter();
  //   notifyListeners();
  // }

  // void remove(Product product, int quantity) {
  //   bool isPresent = false;
  //   cartItems.forEach(
  //     (element) {
  //       if (element.product.id == product.id) {
  //         isPresent = true;

  //         return;
  //       }
  //       cartItems.remove(Cart(product: product, quantity: quantity));
  //     },
  //   );
  //  // totalCArtItemsCounter();
  //   notifyListeners();
  // }

  void subtest(Product product, int quantity) {

    //if(cartItem.where((element) => false))
    //if(totalCartItems==0)return;
    if(totalCartItems>=1)
    totalCartItems--;

    bool isPresent = false;

    cartItems.forEach(
      (element) {
        if (element.product.id == product.id) {
          isPresent = true;

          return;
        }
      },
    );

    if (isPresent) {
      // increment if already present in list
      cartItems.forEach(
        (element) {
          if (element.product.id == product.id) {
            if (element.quantity >= 1) {
              element.quantity--;
              return;
            } else {
              var newItems = cartItems.where((element) => element.product.id!=product.id).toList();
              cartItems= newItems;
            }
          }
        },
      );
    }
  //  totalCArtItemsCounter();
    notifyListeners();
  }

  void delete(Product product) {
   
    
    for (var e in cartItems) {
      if (e.product.id == product.id) {
totalCartItems-=e.quantity;
        e.quantity = 0;
             var newItems = cartItems.where((element) => element.product.id!=product.id).toList();
              cartItems= newItems;
      }
    }
   // totalCArtItemsCounter();
    notifyListeners();
  }

  // String printOnly(int index){
  //   if(cartItems[index].quantity>=1)return cartItems[index].product.name;

  // }

  // void totalCArtItemsCounter() {
  //   if (totalCartItems < 0) totalCartItems = 0;
  //   int temp = 0;
  //   for (var i in cartItems) {
  //     temp += i.quantity;
  //   }
  //   totalCartItems = temp;
  // }

  // void testfun() {
  //   for (var e in cartItems) print(e.product.name);
  // }
}
