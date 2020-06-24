class Product {

  int _id;
  String _name;
  String _price;
  String _description;

  Product(this._name, this._price, this._description);

  Product.fromMap(dynamic obj) {
    this._id = obj['id'];
    this._name = obj['name'];
    this._price = obj['price'];
    this._description = obj['description'];
  }

  String get name => _name;

  String get price => _price;

  String get description => _description;

  int get id => _id;

  Map<String, dynamic> toMap() {
    var map = new Map<String, dynamic>();
    map["id"] = _id;
    map["name"] = _name;
    map["price"] = _price;
    map["description"] = _description;
    return map;
  }

}
