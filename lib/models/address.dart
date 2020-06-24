class Address {

  int _id;
  String _name;
  String _street;
  String _postCode;
  String _phoneNumber;
  String _city;

  Address(this._name, this._street, this._postCode,this._phoneNumber,this._city);

  Address.fromMap(dynamic obj) {
    this._id = obj['id'];
    this._name = obj['name'];
    this._street = obj['street'];
    this._postCode = obj['postCode'];
    this._phoneNumber = obj['phoneNumber'];
    this._city = obj['city'];
  }

  String get name => _name;

  String get street => _street;

  String get postCode => _postCode;

  String get phoneNumber => _phoneNumber;

  String get city => _city;

  int get id => _id;

  Map<String, dynamic> toMap() {
    var map = new Map<String, dynamic>();
    map["id"] = _id;
    map["name"] = _name;
    map["street"] = _street;
    map["postCode"] = _postCode;
    map["phoneNumber"] = _phoneNumber;
    map["city"] = _city;
    return map;
  }

}
