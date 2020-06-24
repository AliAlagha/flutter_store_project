import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutterstoreproject/models/product.dart';
import 'package:flutterstoreproject/screens/product_details.dart';

class ProductsPage extends StatefulWidget {
  final String category;

  ProductsPage({Key key, @required this.category}) : super(key: key);

  @override
  State<StatefulWidget> createState() => new ProductsPageState();
}

class ProductsPageState extends State<ProductsPage> {
  final scaffoldKey = new GlobalKey<ScaffoldState>();
  List<Product> _products;

  ProductsPageState() {
    _products = new List<Product>();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.blue,
          title: new Text(
            "Men Clothes",
            style: new TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          key: scaffoldKey,
        ),
        body: new Padding(
            padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
            child: getHomePageBody(context)));
  }

  getHomePageBody(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: Firestore.instance.collection('products').snapshots(),
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) return new Text('Error: ${snapshot.error}');
        switch (snapshot.connectionState) {
          case ConnectionState.waiting:
            return new Text('Loading...');
          default:
            return new ListView(
              children:
                  snapshot.data.documents.map((DocumentSnapshot document) {
                return new ListTile(
                  title: new Text(document['name']),
                  subtitle: new Text(document['price'] + " Dollar"),
                  leading: new Image.asset(
                    "assets/jacket.jpg",
                    fit: BoxFit.cover,
                    width: 100.0,
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProductDetailsPage(
                            productId: document['id'],
                            productName: document['name'],
                            productPrice: document['price'],
                            productDescription: document['description'],
                          ),
                        ));
                  },
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
