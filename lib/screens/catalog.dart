import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_cart2/model/cart_notifier.dart';
import 'package:shopping_cart2/model/product.dart';
import 'package:shopping_cart2/screens/cart.dart';

class Catalog extends StatelessWidget {
  const Catalog({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CartNotifier>(
      builder: (context, obj, child) => Scaffold(
        appBar: AppBar(
          title: const Text('  Catalog '),
          leading: ElevatedButton(
            child: Stack(
              children: [
                Container(
                  alignment: Alignment.center,
                  child: const Icon(Icons.shopping_basket),
                ),
                Container(
                  alignment: Alignment.topRight,
                  child:  Text(
                
                  obj.totalCartItems.toString(),
                    style:const  TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const CartScreen(),
              ),
            ),
          ),
        ),
        body: Center(
          child: ListView.separated(
              itemBuilder: (context, index) {
                return ListTile(
                  leading: ElevatedButton(
                    onPressed: () => obj.add(Product.currentProducts[index], 1),
                    child: const Icon(Icons.add),
                  ),
                  title: Text(Product.currentProducts[index].name),
                );
              },
              separatorBuilder: (context, index) {
                return const Divider(
                  height: 30,
                );
              },
              itemCount: 5),
        ),
      ),
    );
  }
}
