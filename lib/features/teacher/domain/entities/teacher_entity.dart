import 'package:mero_cloud_school/core/common/exports.dart';

class TeacherEntity {
  final int? id;
  final String? name;
  final String? email;
  final String? createdAt;
  final String? updatedAt;
  final String? mobileNo;
  final List<String>? roles;
  final TeacherDetailsEntity? teacherDetails;
  TeacherEntity({
    this.id,
    this.name,
    this.email,
    this.createdAt,
    this.updatedAt,
    this.mobileNo,
    this.roles,
    this.teacherDetails,
  });
  TeacherEntity copyWith({
    ValueGetter<int?>? id,
    ValueGetter<String?>? name,
    ValueGetter<String?>? email,
    ValueGetter<String?>? createdAt,
    ValueGetter<String?>? updatedAt,
    ValueGetter<String?>? mobileNo,
    ValueGetter<List<String>?>? roles,
    ValueGetter<TeacherDetailsEntity?>? teacherDetails,
  }) {
    return TeacherEntity(
      id: id != null ? id() : this.id,
      name: name != null ? name() : this.name,
      email: email != null ? email() : this.email,
      createdAt: createdAt != null ? createdAt() : this.createdAt,
      updatedAt: updatedAt != null ? updatedAt() : this.updatedAt,
      mobileNo: mobileNo != null ? mobileNo() : this.mobileNo,
      roles: roles != null ? roles() : this.roles,
      teacherDetails:
          teacherDetails != null ? teacherDetails() : this.teacherDetails,
    );
  }

  @override
  String toString() {
    return 'TeacherEntity(id: $id, name: $name, email: $email, createdAt: $createdAt, updatedAt: $updatedAt, mobileNo: $mobileNo, roles: $roles, teacherDetails: $teacherDetails)';
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
      'teacher_details': teacherDetails?.toMap(),
    };
  }

  factory TeacherEntity.fromMap(Map<String, dynamic> map) {
    return TeacherEntity(
      id: map['id']?.toInt(),
      name: map['name'],
      email: map['email'],
      createdAt: map['created_at'],
      updatedAt: map['updated_at'],
      mobileNo: map['mobile_no'],
      roles: List<String>.from(map['roles']),
      teacherDetails: map['teacher_details'] != null
          ? TeacherDetailsEntity.fromMap(map['teacher_details'])
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory TeacherEntity.fromJson(String source) =>
      TeacherEntity.fromMap(json.decode(source));

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is TeacherEntity &&
        other.id == id &&
        other.name == name &&
        other.email == email &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt &&
        other.mobileNo == mobileNo &&
        listEquals(other.roles, roles) &&
        other.teacherDetails == teacherDetails;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        email.hashCode ^
        createdAt.hashCode ^
        updatedAt.hashCode ^
        mobileNo.hashCode ^
        roles.hashCode ^
        teacherDetails.hashCode;
  }
}
