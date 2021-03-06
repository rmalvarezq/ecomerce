import 'package:flutter/material.dart';
import 'package:ecomerceflt/core/presentation/res/assets.dart';
import 'package:ecomerceflt/src/widgets/network_image.dart';

class EcommerceDetailThreePage extends StatelessWidget {
  static final String path = "lib/src/pages/ecommerce/ecommerce_detail3.dart";

  final String image = images[1];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
              height: double.infinity,
              child: PNetworkImage(
                image,
                fit: BoxFit.cover,
              )),
          SafeArea(
              child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(children: [
                  MaterialButton(
                    padding: const EdgeInsets.all(8.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Icon(Icons.arrow_back_ios),
                    color: Colors.white,
                    textColor: Colors.black,
                    minWidth: 0,
                    height: 40,
                    onPressed: () => Navigator.pop(context),
                  ),
                ]),
              ),
              Spacer(),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.white),
                  child: Column(
                    children: <Widget>[
                      const SizedBox(height: 30.0),
                      Expanded(
                        child: SingleChildScrollView(
                          physics: BouncingScrollPhysics(),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              ListTile(
                                title: Text(
                                  "Docside",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 28.0),
                                ),
                                trailing: IconButton(
                                  icon: Icon(Icons.favorite_border),
                                  onPressed: () {},
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16.0, vertical: 8.0),
                                child: Text(
                                  "Hand-stitched finish. Flexible pebble sole. Made of brown leather with a textured effect",
                                  style: TextStyle(color: Colors.grey.shade600),
                                ),
                              ),
                              ExpansionTile(
                                title: Text(
                                  "Show Details",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                children: <Widget>[
                                  Container(
                                    alignment: Alignment.topLeft,
                                    padding: const EdgeInsets.all(16.0),
                                    child: Text(
                                        "This is the details widget. Here you can see more details of the product"),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(32.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20.0),
                              topRight: Radius.circular(20.0)),
                          color: Colors.grey.shade900,
                        ),
                        child: Row(
                          children: <Widget>[
                            Text(
                              "\$35.99",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.0),
                            ),
                            const SizedBox(width: 20.0),
                            Spacer(),
                            _buttomAddToCar(context),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ))
        ],
      ),
    );
  }
}

Widget _buttomAddToCar(BuildContext context) {
  return Row(
    // mainAxisAlignment: MainAxisSize.min,
    children: [
      ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          primary: Colors.orange,
          onPrimary: Colors.white,
          elevation: 0.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          padding: EdgeInsets.all(15.0),
          textStyle: TextStyle(fontSize: 20),
          // animationDuration: Duration(microseconds: 300),
        ),
        onPressed: () {
          Navigator.pushNamed(context, 'ecomerce1');
        },
        icon: Icon(Icons.arrow_forward_ios),
        label: Text('Add to Cart'),
        // clipBehavior: ,
      ),
    ],
  );
}
