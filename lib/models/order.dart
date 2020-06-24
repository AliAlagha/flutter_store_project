class Order {

  int _id;
  String _name;
  String _company;
  String _price;
  String _clientName;
  String _city;

  Order(this._name, this._company, this._price,this._clientName,this._city);

  Order.fromMap(dynamic obj) {
    this._id = obj['id'];
    this._name = obj['name'];
    this._company = obj['company'];
    this._price = obj['price'];
    this._clientName = obj['clientName'];
    this._city = obj['city'];
  }

  String get name => _name;

  String get company => _company;

  String get price => _price;

  String get clientName => _clientName;

  String get city => _city;

  int get id => _id;

  Map<String, dynamic> toMap() {
    var map = new Map<String, dynamic>();
    map["id"] = _id;
    map["name"] = _name;
    map["company"] = _company;
    map["price"] = _price;
    map["clientName"] = _clientName;
    map["city"] = _city;
    return map;
  }

}
