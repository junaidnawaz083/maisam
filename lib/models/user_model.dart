class UserModel {
  String name;
  String email;
  String? phone;
  UserModel({
    required this.name,
    required this.email,
    this.phone,
  });
}
