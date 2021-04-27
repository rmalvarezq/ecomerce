import 'dart:async';

const PRODUCTOS = ['TECLADO', 'MOUSE', 'PARLANTE', 'CAMARA'];

class ProductoBloc {
  Stream<List<String>> get getProductos async* {
    final List<String> productos = [];
    for (String producto in PRODUCTOS) {
      // await Future.delayed(Duration(seconds: 2));
      productos.add(producto);
      yield productos;
    }
  }

  StreamController<int> _productosContador = new StreamController<int>();
  Stream<int> get productosContador => _productosContador.stream;

  ProductoBloc() {
    this.getProductos.listen(
        (productosList) => this._productosContador.add(productosList.length));
  }

  dispose() {
    _productosContador.close();
  }
}
