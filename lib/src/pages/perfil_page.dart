import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class PerfilPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white70.withOpacity(0.9),
      body: Scaffold(
        body: Stack(
          children: [
            _boxInicial(context),
            CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Padding(
                    padding: EdgeInsets.only(left: 50.0),
                    child: SafeArea(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Bienvenido:",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w800,
                                color: Colors.grey),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Marcelo Alvarez",
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w800,
                                color: Colors.white),
                          ),
                          _searchBox(context),
                          Row(
                            children: [
                              _cardImage('assets/json/backend.json', context),
                              _cardImage('assets/json/designer.json', context),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _boxInicial(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.4,
      decoration: BoxDecoration(
        color: Colors.indigo[600],
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(size.height * 0.1),
          bottomRight: Radius.circular(size.height * 0.1),
        ),
      ),
    );
  }

  // Widget _pointInitial(BuildContext context) {
  //   final size = MediaQuery.of(context).size;
  //   return SafeArea(
  //     child: Container(
  //       margin: EdgeInsets.only(left: 9, right: 9, top: 9),
  //       // padding: EdgeInsets.symmetric(horizontal: 10),
  //       width: size.width * 0.01,
  //       height: size.height * 0.01,
  //       decoration: BoxDecoration(
  //         color: Colors.white,
  //         shape: BoxShape.circle,
  //       ),
  //     ),
  //   );
  // }

  // Widget _circleInitial(BuildContext context) {
  //   final size = MediaQuery.of(context).size;
  //   return Positioned(
  //     top: 20.0,
  //     child: Container(
  //       alignment: Alignment.topLeft,
  //       margin: EdgeInsets.only(left: 9, right: 9, top: 9),
  //       // padding: EdgeInsets.symmetric(horizontal: 10),
  //       width: size.width * 0.1,
  //       height: size.height * 0.1,
  //       decoration: BoxDecoration(
  //         color: Colors.white,
  //         shape: BoxShape.circle,
  //       ),
  //     ),
  //   );
  // }

  Widget _searchBox(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: size.width * 0.009, vertical: 10),
      child: Card(
        child: Container(
          child: TextField(
            decoration: InputDecoration(
                border: InputBorder.none,
                icon: IconButton(icon: Icon(Icons.search), onPressed: () {}),
                suffixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.arrow_drop_down_circle_outlined))),
          ),
        ),
      ),
    );
  }

  Widget _cardImage(String url, BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Card(
      child: Container(
        // color: Colors.white,
        margin: EdgeInsets.all(5.0),
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Backend',
              style: TextStyle(
                  color: Colors.indigo[900],
                  fontWeight: FontWeight.w800,
                  fontSize: 18.0),
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              '12 cursos',
              style: TextStyle(
                  color: Colors.indigo[600],
                  fontWeight: FontWeight.w300,
                  fontSize: 12.0),
              overflow: TextOverflow.ellipsis,
            ),
            Lottie.asset(
              url,
              width: size.width * 0.25,
              height: size.height * 0.2,
            ),
          ],
        ),
        width: 150,
        height: 200,
        decoration: BoxDecoration(
          // image: Lottie,
          shape: BoxShape.rectangle,
          // borderRadius: BorderRadius.circular(20.0)
        ),
      ),
    );
  }
}
