import 'package:mero_cloud_school/core/common/exports.dart';


class UserModel extends UserEntity {
  UserModel({
    super.id,
    super.name,
    super.email,
    super.createdAt,
    super.updatedAt,
    super.mobileNo,
    super.roles,
  });

  @override
  UserModel copyWith({
    ValueGetter<int?>? id,
    ValueGetter<String?>? name,
    ValueGetter<String?>? email,
    ValueGetter<String?>? createdAt,
    ValueGetter<String?>? updatedAt,
    ValueGetter<String?>? mobileNo,
    ValueGetter<List<String>?>? roles,
  }) {
    return UserModel(
      id: id != null ? id() : this.id,
      name: name != null ? name() : this.name,
      email: email != null ? email() : this.email,
      createdAt: createdAt != null ? createdAt() : this.createdAt,
      updatedAt: updatedAt != null ? updatedAt() : this.updatedAt,
      mobileNo: mobileNo != null ? mobileNo() : this.mobileNo,
      roles: roles != null ? roles() : this.roles,
    );
  }

  @override
  String toString() {
    return 'UserModel(id: $id, name: $name, email: $email, createdAt: $createdAt, updatedAt: $updatedAt, mobileNo: $mobileNo, roles: $roles)';
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'created_at': createdAt,
      'updated_at': updatedAt,
      'mobile_no': mobileNo,
      'roles': roles,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      id: map['id']?.toInt(),
      name: map['name'],
      email: map['email'],
      createdAt: map['created_at'],
      updatedAt: map['updated_at'],
      mobileNo: map['mobile_no'],
      roles: List<String>.from(map['roles']),
    );
  }

  @override
  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source));

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is UserModel &&
        other.id == id &&
        other.name == name &&
        other.email == email &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt &&
        other.mobileNo == mobileNo &&
        listEquals(other.roles, roles);
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        email.hashCode ^
        createdAt.hashCode ^
        updatedAt.hashCode ^
        mobileNo.hashCode ^
        roles.hashCode;
  }
}
