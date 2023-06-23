class UserModel{
  String? name;
  String? email;
  String? password;

  UserModel({
    this.name,
    this.email,
    this.password,
  });

  Map<String, dynamic> toJson(){
    Map<String, dynamic> data = <String, dynamic>{};

    data['name'] = name;
    data['email'] = email;
    data['password'] = password;

    return data;
  }
}

