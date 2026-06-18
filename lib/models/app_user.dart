class AppUser {
  int? id;
  String userName;
  String password;
  String role;

  AppUser({
    this.id,
    required this.userName,
    required this.password,
    this.role = 'Admin',
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'userName': userName,
      'password': password,
      'role': role,
    };
  }
  
  factory AppUser.fromJson(Map<String, dynamic> map) {
    return AppUser(
      id: map['id'],
      userName: map['userName'],
      password: map['password'],
      role: map['role'],
    );
  }
}
