import 'package:mero_cloud_school/core/common/exports.dart';


class UserEntity {
  final int? id;
  final String? name;
  final String? email;
  final String? createdAt;
  final String? updatedAt;
  final String? mobileNo;
  final List<String>? roles;
  UserEntity({
    this.id,
    this.name,
    this.email,
    this.createdAt,
    this.updatedAt,
    this.mobileNo,
    this.roles,
  });
  UserEntity copyWith({
    ValueGetter<int?>? id,
    ValueGetter<String?>? name,
    ValueGetter<String?>? email,
    ValueGetter<String?>? createdAt,
    ValueGetter<String?>? updatedAt,
    ValueGetter<String?>? mobileNo,
    ValueGetter<List<String>?>? roles,
  }) {
    return UserEntity(
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
    return 'UserEntity(id: $id, name: $name, email: $email, createdAt: $createdAt, updatedAt: $updatedAt, mobileNo: $mobileNo, roles: $roles)';
  }

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

  factory UserEntity.fromMap(Map<String, dynamic> map) {
    return UserEntity(
      id: map['id']?.toInt(),
      name: map['name'],
      email: map['email'],
      createdAt: map['created_at'],
      updatedAt: map['updated_at'],
      mobileNo: map['mobile_no'],
      roles: List<String>.from(map['roles']),
    );
  }

  String toJson() => json.encode(toMap());

  factory UserEntity.fromJson(String source) =>
      UserEntity.fromMap(json.decode(source));

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is UserEntity &&
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
