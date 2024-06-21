import 'package:mero_cloud_school/core/common/exports.dart';
part 'user_hive_model.g.dart';

@HiveType(
  typeId: HiveTableConstant.userTableId,
)
class UserHiveModel {
  @HiveField(0)
  final int? id;
  @HiveField(1)
  final String? name;
  @HiveField(2)
  final String? email;
  @HiveField(3)
  final String? createdAt;
  @HiveField(4)
  final String? updatedAt;
  @HiveField(5)
  final String? mobileNo;
  @HiveField(6)
  final List<String>? roles;
  UserHiveModel({
    this.id,
    this.name,
    this.email,
    this.createdAt,
    this.updatedAt,
    this.mobileNo,
    this.roles,
  });
  UserHiveModel copyWith({
    ValueGetter<int?>? id,
    ValueGetter<String?>? name,
    ValueGetter<String?>? email,
    ValueGetter<String?>? createdAt,
    ValueGetter<String?>? updatedAt,
    ValueGetter<String?>? mobileNo,
    ValueGetter<List<String>?>? roles,
  }) {
    return UserHiveModel(
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
    return 'UserHiveModel(id: $id, name: $name, email: $email, createdAt: $createdAt, updatedAt: $updatedAt, mobileNo: $mobileNo, roles: $roles)';
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

  factory UserHiveModel.fromMap(Map<String, dynamic> map) {
    return UserHiveModel(
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

  factory UserHiveModel.fromJson(String source) =>
      UserHiveModel.fromMap(json.decode(source));

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is UserHiveModel &&
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
