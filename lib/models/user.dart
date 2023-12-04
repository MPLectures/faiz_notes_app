class UserModel {
  String id, name, email, password;

//<editor-fold desc="Data Methods">
  UserModel({
    required this.id,
    required this.name,
    required this.email,
    required this.password,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is UserModel &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name &&
          email == other.email &&
          password == other.password);

  @override
  int get hashCode => id.hashCode ^ name.hashCode ^ email.hashCode ^ password.hashCode;

  @override
  String toString() {
    return 'UserModel{' + ' id: $id,' + ' name: $name,' + ' email: $email,' + ' password: $password,' + '}';
  }

  UserModel copyWith({
    String? id,
    String? name,
    String? email,
    String? password,
  }) {
    return UserModel(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      password: password ?? this.password,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': this.id,
      'name': this.name,
      'email': this.email,
      'password': this.password,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      id: map['id'] as String,
      name: map['name'] as String,
      email: map['email'] as String,
      password: map['password'] as String,
    );
  }

//</editor-fold>
}