import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:shopping_cart2/model/cart_notifier.dart';
import 'package:shopping_cart2/model/product.dart';
import 'package:shopping_cart2/screens/billscreen.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CartNotifier>(
      builder: (context, obj, child) => Scaffold(
        appBar: AppBar(
          actions: [
            ElevatedButton(
                onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const BillScreen(),
                      ),
                    ),
                child: const Text('Bill')),
          ],
          title: const Text(' 🛒   Cart   🛒 '),
        ),
        body: ListView.separated(
          separatorBuilder: (context, index) => const Divider(),
          itemCount: obj.cartItems.length,
          // obj.cartItem.length,
          itemBuilder: (context, index) {
            return Row(
              children: [
                Text(
                  obj.cartItems[index].product.name,
                ),
                const SizedBox(
                  width: 30,
                ),
                Text(obj.cartItems[index].quantity.toString()),
                const SizedBox(
                  width: 20,
                ),
                ElevatedButton(
                  onPressed: () => obj.add(obj.cartItems[index].product, 1),
                  child: const Icon(Icons.add),
                ),
                const SizedBox(
                  width: 20,
                ),
                ElevatedButton(
                  onPressed: () => obj.subtest(obj.cartItems[index].product, 1),
                  child: const Icon(Icons.remove),
                ),
                ElevatedButton(
                  onPressed: () => obj.delete(obj.cartItems[index].product),
                  child: const Icon(Icons.delete),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

/*
ListTile(
              leading: ElevatedButton(
                //for removing
                onPressed: () {
                  // obj.cartRemove(obj.cartItem[index]
                  null;
                },
                child: const Text('Remove'),
              ),
              title: 
            );

*/
