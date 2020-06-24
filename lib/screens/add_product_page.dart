import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutterstoreproject/screens/products_page.dart';

class CreateProductPage extends StatefulWidget {
  @override
  CreateProductPageState createState() => new CreateProductPageState();
}

class CreateProductPageState extends State<CreateProductPage> {
  BuildContext _ctx;
  bool _isLoading = false;
  final formKey = new GlobalKey<FormState>();
  final scaffoldKey = new GlobalKey<ScaffoldState>();

  String _name, _price, _description;

  CreateProductPageState() {
  }

  void _submit() {
    final form = formKey.currentState;

    if (form.validate()) {
      setState(() {
        _isLoading = true;
        form.save();

        // Add product here
        Firestore.instance.collection('products').document()
            .setData({'id': 485, 'name': _name
          , 'price': _price ,'description': _description });

        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ProductsPage()),
        );

      });
    }
  }

  @override
  Widget build(BuildContext context) {
    _ctx = context;

    var userForm = new Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        // Adobe XD layer: 'Login' (text)
        new Padding(
          padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
        ),
        SizedBox(
          width: 300.0,
          child: Text(
            'Add Product',
            style: TextStyle(
              fontFamily: 'Segoe UI',
              fontSize: 30,
              color: const Color(0xff323232),
              letterSpacing: -0.7235293006896972,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        new Form(
          key: formKey,
          child: new Column(
            children: <Widget>[
              new Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: new TextFormField(
                  onSaved: (val) => _name = val,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Product Name',
                  ),
                ),
              ),
              new Padding(
                padding: const EdgeInsets.all(10.0),
                child: new TextFormField(
                  onSaved: (val) => _price = val,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Product Price',
                  ),
                ),
              ),
              new Padding(
                padding: const EdgeInsets.all(10.0),
                child: new TextFormField(
                  onSaved: (val) => _description = val,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Product Description',
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
            height: 60,
            padding: EdgeInsets.all(10),
            child: RaisedButton(
              textColor: Colors.white,
              color: Colors.blue,
              child: Text('Add Product'),
              onPressed: _submit,
            )),
        // Adobe XD layer: 'Already have an acoo' (text)
      ],
    );

    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Add Product"),
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

  void _showSnackBar(String text) {
    scaffoldKey.currentState.showSnackBar(new SnackBar(
      content: new Text(text),
    ));
  }

}
