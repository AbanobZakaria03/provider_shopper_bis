import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_shopper/pages/login.dart';
import 'package:provider_shopper/providers/cart_provider.dart';

import 'core/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create:  (context) => CartModel(),),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: appTheme,
        debugShowCheckedModeBanner: false,
        home: const MyLogin(),
      ),
    );
  }
}