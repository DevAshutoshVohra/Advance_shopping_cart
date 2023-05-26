import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_cart2/model/cart_notifier.dart';

class BillScreen extends StatelessWidget {
  const BillScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CartNotifier>(
      builder: (context, obj, child) => Scaffold(
        appBar: AppBar(
          title:const  Text('Bill Screen'),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  title: Text(obj.cartItems[index].product.name),
                ),
            separatorBuilder: (context, index) => const Divider(),
            itemCount: obj.cartItems.length),
      ),
    );
  }
}


// obj.printOnly(index)