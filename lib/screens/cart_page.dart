import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutterstoreproject/models/product.dart';
import 'package:flutterstoreproject/screens/orders_page.dart';

class CartPage extends StatefulWidget {
  final String category;

  CartPage({Key key, @required this.category}) : super(key: key);

  @override
  State<StatefulWidget> createState() => new CartPageState();
}

class CartPageState extends State<CartPage>
   {

  List<Product> _products;

  final scaffoldKey = new GlobalKey<ScaffoldState>();

  CartPageState() {
    _products = new List<Product>();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.blue,
          key: scaffoldKey,
          title: new Text(
            "Cart",
            style: new TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          actions: <Widget>[
            FlatButton(
              textColor: Colors.white,
              onPressed: () async {

                  QuerySnapshot querySnapshot = await Firestore.instance.collection("cart").getDocuments();
                  for (int i = 0; i < querySnapshot.documents.length; i++) {
                    var document = querySnapshot.documents[i];
                    Product product = Product.fromMap(document);

                    // Make Order here
                    Firestore.instance.collection('orders').document()
                        .setData({'id': product.id, 'name': product.name
                      , 'price': product.price ,'company': "Zara"
                      , 'clientName': "Ali Alagha" ,'city': "Gaza"
                        });

                  }


                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => OrdersPage()),
                );

              },
              child: Text("Make Order"),
              shape: CircleBorder(side: BorderSide(color: Colors.transparent)),
            ),
          ],
        ),
        body: new Padding(
            padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
            child: getHomePageBody(context),),
    );
  }

  getHomePageBody(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: Firestore.instance.collection('cart').snapshots(),
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError)
          return new Text('Error: ${snapshot.error}');
        switch (snapshot.connectionState) {
          case ConnectionState.waiting: return new Text('Loading...');
          default:
            return new ListView(
              children: snapshot.data.documents.map((DocumentSnapshot document) {
                return new ListTile(
                  title: new Text("Name : "+document['name']),
                  subtitle: new Text("Count : 2\n"+document['price']+" Dollar"),
                  leading: new Image.asset(
                    "assets/jacket.jpg",
                    fit: BoxFit.cover,
                    width: 100.0,
                  )
                    ,trailing:    Stack(
                  children: <Widget>[
                    Transform.translate(
                      offset: Offset(140, -30),
                      child:
                      // Adobe XD layer: 'Rectangle 5 Copy' (shape)
                      Container(
                        width: 100.0,
                        height: 39.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4.0),
                          color: const Color(0xfff6f6f6),
                        ),
                      ),
                    ),
                    Transform.translate(
                      offset: Offset(140.0, -30),
                      child: SizedBox(
                        width: 27.0,
                        child: Text(
                          '-',
                          style: TextStyle(
                            fontFamily: 'Nunito Sans',
                            fontSize: 30,
                            color: const Color(0xff565656),
                            height: 1.2,
                          ),
                          textAlign: TextAlign.right,
                        ),
                      ),
                    ),
                    Transform.translate(
                      offset: Offset(200, -24),
                      child: SizedBox(
                        width: 22.0,
                        child: Text(
                          '+',
                          style: TextStyle(
                            fontFamily: 'Nunito Sans',
                            fontSize: 20,
                            color: const Color(0xff565656),
                            height: 1.2,
                          ),
                          textAlign: TextAlign.right,
                        ),
                      ),
                    ),
                    Transform.translate(
                      offset: Offset(175, -24),
                      child: SizedBox(
                        width: 18.0,
                        child: Text(
                          '1',
                          style: TextStyle(
                            fontFamily: 'Nunito Sans',
                            fontSize: 16,
                            color: const Color(0xff565656),
                            height: 1.2000000476837158,
                          ),
                          textAlign: TextAlign.right,
                        ),
                      ),
                    ),
                  ],
                ),
                );
              }).toList(),
            );
        }
      },
    );
  }

  void _showSnackBar(String text) {
    scaffoldKey.currentState.showSnackBar(new SnackBar(
      content: new Text(text),
    ));
  }

}
