import 'package:flutter/material.dart';

class Nav extends StatefulWidget {
  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<Nav> {
  @override
  int selectIndex = 0;
  List<Widget> widgetOptions = <Widget>[
    Text('ecomerce1'),
    Text('ecomerce2'),
    Text('ecomerce3'),
    Text('ecomerce4'),
  ];
  void onItemTap(int index) {
    setState(() {
      selectIndex = index;
      selectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Hola Mundo'),
      ),
    );
  }
}
