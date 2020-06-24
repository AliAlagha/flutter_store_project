class User {
  int _id;
  String _username;
  String _email;
  String _password;
  String _type;

  User(this._username, this._email, this._password,this._type);

  User.fromMap(dynamic obj) {
    this._id = obj['id'];
    this._username = obj['username'];
    this._email = obj['email'];
    this._password = obj['password'];
    this._type = obj['type'];
  }

  String get username => _username;

  String get email => _email;

  String get password => _password;

  String get type => _type;

  int get id => _id;

  Map<String, dynamic> toMap() {
    var map = new Map<String, dynamic>();
    map["id"] = _id;
    map["username"] = _username;
    map["email"] = _email;
    map["password"] = _password;
    map["type"] = _type;
    return map;
  }
}
