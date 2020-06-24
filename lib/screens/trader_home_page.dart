import 'package:flutter/material.dart';
import 'package:flutterstoreproject/screens/add_product_page.dart';
import 'package:flutterstoreproject/screens/orders_page.dart';

class TraderHomePage extends StatefulWidget {
  @override
  TraderHomePageState createState() => new TraderHomePageState();
}

class TraderHomePageState extends State<TraderHomePage>

         {
  BuildContext _ctx;
  bool _isLoading = false;
  final scaffoldKey = new GlobalKey<ScaffoldState>();


  @override
  Widget build(BuildContext context) {
    _ctx = context;

    var userForm = new Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        new Padding(
          padding: EdgeInsets.fromLTRB(10, 100, 10, 10),
        ),
        new  ListTile(
          title: Row(
            children: <Widget>[
              Expanded(child: RaisedButton(onPressed: () {

                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CreateProductPage(),
                    ));

              },child: Text("Add Product"),color: Colors.blue,textColor: Colors.white,)),
            ],
          ),
          subtitle: Row(
            children: <Widget>[
              Expanded(child: RaisedButton(onPressed: () {

                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => OrdersPage(),
                    ));

              },child: Text("Show Orders"),color: Colors.blue,textColor: Colors.white,)),
            ],
          ),
        ),
        // Adobe XD layer: 'Don’t have an acooun' (text)
        // Adobe XD layer: 'Don’t have an acooun' (text)
      ],
    );

    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Trader Home"),
        backgroundColor: Colors.blue,
      ),
      key: scaffoldKey,
      body: new Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        verticalDirection: VerticalDirection.down,
        children: <Widget>[
          userForm,
        ],
      ),
    );
  }


}
