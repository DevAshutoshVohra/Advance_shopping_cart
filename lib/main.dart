import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:shopping_cart2/model/cart_notifier.dart';
import 'package:shopping_cart2/screens/catalog.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => CartNotifier(),
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Catalog(),
      ),
    );
  }
}
