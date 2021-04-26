import 'package:ecomerceflt/src/ecommerce/cart1.dart';
import 'package:ecomerceflt/src/ecommerce/cart2.dart';
import 'package:ecomerceflt/src/ecommerce/cart3.dart';
import 'package:ecomerceflt/src/ecommerce/checkout1.dart';
import 'package:ecomerceflt/src/ecommerce/confirm_order1.dart';
import 'package:ecomerceflt/src/ecommerce/ecommerce1.dart';
import 'package:ecomerceflt/src/ecommerce/ecommerce2.dart';
import 'package:ecomerceflt/src/ecommerce/ecommerce4.dart';
import 'package:ecomerceflt/src/ecommerce/ecommerce5.dart';
import 'package:ecomerceflt/src/ecommerce/ecommerce_detail1.dart';
import 'package:ecomerceflt/src/ecommerce/ecommerce_detail2.dart';
import 'package:ecomerceflt/src/ecommerce/ecommerce_detail3.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey.shade300,
        primarySwatch: Colors.red,
        accentColor: Colors.indigo,
      ),
      home: CartOnePage(),
      routes: {
        'onePage': (_) => CartOnePage(),
        'twoPage': (_) => CartTwoPage(),
        'threePage': (_) => CartThreePage(),
        'chOut1': (_) => CheckoutOnePage(),
        'confirm1': (_) => ConfirmOrderPage(),
        'detail1': (_) => EcommerceDetailOnePage(),
        'detail2': (_) => EcommerceDetailTwoPage(),
        'detail3': (_) => EcommerceDetailThreePage(),
        'ecomerce1': (_) => EcommerceOnePage(),
        'ecomerce2': (_) => EcommerceTwoPage(),
        'ecomerce3': (_) => EcommerceFourPage(),
        'ecomerce4': (_) => EcommerceFivePage(),
      },
    );
  }
}
