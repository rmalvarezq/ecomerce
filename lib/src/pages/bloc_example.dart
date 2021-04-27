import 'package:ecomerceflt/src/bloc/productos_bloc.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class BlocExamplePage extends StatelessWidget {
  final int _page = 0;
  final GlobalKey _bottomNavigationKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    final productosBloc = new ProductoBloc();
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: StreamBuilder(
            stream: productosBloc.productosContador,
            // initialData: initialData ,
            builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
              return Text('Productos (${snapshot.data ?? 0})');
            },
          ),
        ),
        body: Container(
          color: Colors.white,
          child: Center(
            child: Column(
              children: <Widget>[
                Text(_page.toString(), textScaleFactor: 10.0),
                ElevatedButton(
                  onPressed: () {
                    final CurvedNavigationBarState navBarState =
                        _bottomNavigationKey.currentState;
                    navBarState.setPage(1);
                  },
                  child: Text('Go To Page of index 1'),
                )
              ],
            ),
          ),
        ),
        //  StreamBuilder(

        //   stream: productosBloc.getProductos,
        //   builder: (
        //     _,
        //     AsyncSnapshot<List<String>> snapshot,
        //   ) {
        //     final productos = snapshot.data ?? [];

        //     return ListView.builder(
        //       itemCount: productos.length,
        //       itemBuilder: (_, i) {
        //         return ListTile(
        //           title: Text(productos[i]),
        //         );
        //       },
        //     );
        //   },
        // ),
        backgroundColor: Colors.white,
        bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          index: 0,
          height: 50.0,
          items: <Widget>[
            Icon(Icons.add, size: 30),
            Icon(Icons.list, size: 30),
            Icon(Icons.compare_arrows, size: 30),
            Icon(Icons.call_split, size: 30),
            Icon(Icons.perm_identity, size: 30),
          ],
          color: Colors.orange,
          buttonBackgroundColor: Colors.orange,
          backgroundColor: Colors.white,
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 300),
          onTap: (index) {
            // setState(() {
            // _page = index;
            // });
          },
          letIndexChange: (index) => true,
        ),
      ),
    );
  }
}
