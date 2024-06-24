import 'package:mero_cloud_school/core/common/exports.dart';

class TeacherModel extends TeacherEntity {
  TeacherModel({
    super.id,
    super.name,
    super.email,
    super.createdAt,
    super.updatedAt,
    super.mobileNo,
    super.roles,
    super.teacherDetails,
  });

  @override
  String toString() {
    return 'TeacherModel(id: $id, name: $name, email: $email, createdAt: $createdAt, updatedAt: $updatedAt, mobileNo: $mobileNo, roles: $roles, teacherDetails: $teacherDetails)';
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
      'teacher_details': teacherDetails?.toMap(),
    };
  }

  factory TeacherModel.fromMap(Map<String, dynamic> map) {
    return TeacherModel(
      id: map['id']?.toInt(),
      name: map['name'],
      email: map['email'],
      createdAt: map['created_at'],
      updatedAt: map['updated_at'],
      mobileNo: map['mobile_no'],
      roles: List<String>.from(map['roles']),
      teacherDetails: map['teacher_details'] != null
          ? TeacherDetailsModel.fromMap(map['teacher_details'])
          : null,
    );
  }

  @override
  String toJson() => json.encode(toMap());

  factory TeacherModel.fromJson(String source) =>
      TeacherModel.fromMap(json.decode(source));

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

  static List<TeacherModel> fromListMap(List<dynamic> data) {
    return data.map((e) => TeacherModel.fromMap(e)).toList();
  }
}
