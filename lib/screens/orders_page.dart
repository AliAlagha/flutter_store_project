import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutterstoreproject/screens/order_details.dart';

class OrdersPage extends StatefulWidget {
  final String category;

  OrdersPage({Key key, @required this.category}) : super(key: key);

  @override
  State<StatefulWidget> createState() => new OrdersPageState();
}

class OrdersPageState extends State<OrdersPage>
      {


  final scaffoldKey = new GlobalKey<ScaffoldState>();

  OrdersPageState() {
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.blue,
          key: scaffoldKey,
          title: new Text(
            "My Orders",
            style: new TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
        ),
        body: new Padding(
            padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
            child: getHomePageBody(context)));
  }

  getHomePageBody(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: Firestore.instance.collection('orders').snapshots(),
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError)
          return new Text('Error: ${snapshot.error}');
        switch (snapshot.connectionState) {
          case ConnectionState.waiting: return new Text('Loading...');
          default:
            return new ListView(
              children: snapshot.data.documents.map((DocumentSnapshot document) {
                return new ListTile(
                  title: new Text("Order Number : #"+document['id'].toString()),
                  subtitle: new Text("Client Name : "+document['clientName']+"\n"+"Price : "+document['price']+' Dollar'),
                  leading: new Image.asset(
                    "assets/jacket.jpg",
                    fit: BoxFit.cover,
                    width: 100.0,
                  ),
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OrderDetailsPage(),
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
