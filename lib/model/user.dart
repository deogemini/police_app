class User {
  String role;
  String id;
  String name;
  String email;
  String title;

  User({this.role, this.id, this.name, this.email, this.title});

  User.fromJson(Map<String, dynamic> json)
      : role = json['role'],
        id = json['_id'],
        name = json['name'],
        email = json['email'],
        title = json['title'];
}
