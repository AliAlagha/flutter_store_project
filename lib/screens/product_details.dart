import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutterstoreproject/screens/cart_page.dart';

class ProductDetailsPage extends StatefulWidget {
  int productId;
  String productName, productPrice, productDescription;

  ProductDetailsPage(
      {Key key,
      this.productId,
      this.productName,
      this.productPrice,
      this.productDescription})
      : super(key: key);

  @override
  ProductDetailsPageState createState() => new ProductDetailsPageState();
}

class ProductDetailsPageState extends State<ProductDetailsPage>
     {

  final scaffoldKey = new GlobalKey<ScaffoldState>();

  ProductDetailsPageState() {
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
          backgroundColor: Colors.blue,
          title: new Text(
            "Product Details",
            style: new TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          )),
      backgroundColor: const Color(0xffffffff),
      key: scaffoldKey,
      body: Stack(
        children: <Widget>[
          // Adobe XD layer: 'Bars/Status Bar/Lig…' (component)
          Container(),
          // Adobe XD layer: 'Image' (group)
          Stack(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Transform.translate(
                    offset: Offset(25.0, 120.0),
                    child: Container(
                      width: 280.0,
                      height: 180.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: const AssetImage('assets/jacket.jpg'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Transform.translate(
            offset: Offset(24.0, 311.0),
            child: Text(
              widget.productName,
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 25,
                color: const Color(0xff2a2a2a),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          // Adobe XD layer: 'Price' (group)
          Stack(
            children: <Widget>[
              Transform.translate(
                offset: Offset(24.0, 354.0),
                child: Text(
                  '\$+${widget.productPrice}',
                  style: TextStyle(
                    fontFamily: 'Segoe UI',
                    fontSize: 20,
                    color: const Color(0xff667eea),
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Transform.translate(
                offset: Offset(-3.0, -4.0),
                child: Stack(
                  children: <Widget>[
                    Transform.translate(
                      offset: Offset(80.0, 363.0),
                      child: Text(
                        '\$62',
                        style: TextStyle(
                          fontFamily: 'Segoe UI',
                          fontSize: 13,
                          color: const Color(0xff2a2a2a),
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Transform.translate(
                      offset: Offset(76.5, 371.5),
                      child: SvgPicture.string(
                        _svg_orqmpu,
                        allowDrawingOutsideViewBox: true,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Transform.translate(
            offset: Offset(0.0, -60.0),
            child:
                // Adobe XD layer: 'Description' (group)
                Stack(
              children: <Widget>[
                Transform.translate(
                  offset: Offset(270.0, 593.83),
                  child: Text(
                    '',
                    style: TextStyle(
                      fontFamily: 'Segoe UI',
                      fontSize: 14,
                      color: const Color(0xff7168c8),
                      fontWeight: FontWeight.w700,
                      height: 1.6428571428571428,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Transform.translate(
                  offset: Offset(24.0, 502.6),
                  child: SizedBox(
                    width: 328.0,
                    height: 135.0,
                    child: SingleChildScrollView(
                        child: Text(
                      widget.productDescription,
                      style: TextStyle(
                        fontFamily: 'Segoe UI',
                        fontSize: 14,
                        color: const Color(0xff656565),
                        height: 1.6428571428571428,
                      ),
                      textAlign: TextAlign.left,
                    )),
                  ),
                ),
                Transform.translate(
                  offset: Offset(17.5, 476.0),
                  child: SizedBox(
                    width: 96.0,
                    child: Text(
                      'Description',
                      style: TextStyle(
                        fontFamily: 'Segoe UI',
                        fontSize: 16,
                        color: const Color(0xff2a2a2a),
                        height: 1.2000000476837158,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Adobe XD layer: 'BUY NOW' (group)
          // Adobe XD layer: 'BUY NOW' (group)
          new GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CartPage()),
              );
            },
            child: Container(
                height: 120,
                padding: EdgeInsets.fromLTRB(140, 30, 10, 30),
                child: RaisedButton(
                  textColor: Colors.white,
                  color: Colors.blue,
                  child: Text('BUY NOW'),
                  onPressed: () {

                    // Add to cart (Firestore)

                    Firestore.instance.collection('cart').document()
                        .setData({'id': widget.productId, 'name': widget.productName
                      , 'price': widget.productPrice ,'description': widget.productDescription });

                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CartPage()),
                    );

                  },
                )),
          )
        ],
      ),
    );
  }

  void _showSnackBar(String text) {
    scaffoldKey.currentState.showSnackBar(new SnackBar(
      content: new Text(text),
    ));
  }

  @override
  void onCreateProductSuccess(int product) {
    // TODO: implement onCreateProductSuccess
    _showSnackBar("Added Successfully");
  }

  @override
  void onCreateProductError(String error) {
    // TODO: implement onCreateProductError
    _showSnackBar(error);
  }
}

const String _svg_wx4nsp =
    '<svg viewBox="2144.8 74.9 5.2 4.9" ><path transform="translate(2144.8, 74.91)" d="M 5.199999809265137 4.920000076293945 L 0 0" fill="none" stroke="#404040" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_g96csy =
    '<svg viewBox="24.0 66.0 22.0 9.9" ><path transform="translate(-2794.0, 0.0)" d="M 2839.4365234375 71.53720092773438 C 2839.4365234375 71.53720092773438 2819.949462890625 71.53720092773438 2819.949462890625 71.53720092773438 C 2819.949462890625 71.53720092773438 2823.3740234375 74.96189880371094 2823.3740234375 74.96189880371094 C 2823.597412109375 75.18520355224609 2823.597412109375 75.54350280761719 2823.3740234375 75.76679992675781 C 2823.26220703125 75.87850189208984 2823.1181640625 75.93430328369141 2822.96923828125 75.93430328369141 C 2822.8203125 75.93430328369141 2822.676025390625 75.87850189208984 2822.564208984375 75.76679992675781 C 2822.564208984375 75.76679992675781 2818.167236328125 71.36959838867188 2818.167236328125 71.36959838867188 C 2817.94384765625 71.14640045166016 2817.94384765625 70.78800201416016 2818.167236328125 70.56459808349609 C 2818.167236328125 70.56459808349609 2822.564208984375 66.16750335693359 2822.564208984375 66.16750335693359 C 2822.78759765625 65.94409942626953 2823.146240234375 65.94409942626953 2823.369384765625 66.16750335693359 C 2823.5927734375 66.39089965820313 2823.5927734375 66.74909973144531 2823.369384765625 66.97239685058594 C 2823.369384765625 66.97239685058594 2819.944580078125 70.39720153808594 2819.944580078125 70.39720153808594 C 2819.944580078125 70.39720153808594 2839.42724609375 70.39720153808594 2839.42724609375 70.39720153808594 C 2839.743896484375 70.39720153808594 2839.999755859375 70.65299987792969 2839.999755859375 70.96939849853516 C 2839.999755859375 71.28589630126953 2839.743896484375 71.53720092773438 2839.4365234375 71.53720092773438 Z" fill="#404040" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_orqmpu =
    '<svg viewBox="76.5 371.5 27.5 1.0" ><path transform="translate(76.5, 371.5)" d="M 0 0 L 27.5 0" fill="none" stroke="#2a2a2a" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
