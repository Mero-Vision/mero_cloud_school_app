import 'package:mero_cloud_school/core/common/exports.dart';



class LoginDataModel extends LoginDataEntity {
  LoginDataModel({
    super.user,
    super.institution,
    super.token,
  });

  @override
  String toString() =>
      'LoginDataModel(user: $user, institution: $institution, token: $token)';

  @override
  Map<String, dynamic> toMap() {
    return {
      'user': user?.toMap(),
      'institution': institution?.toMap(),
      'token': token,
    };
  }

  factory LoginDataModel.fromMap(Map<String, dynamic> map) {
    return LoginDataModel(
      user: map['user'] != null ? UserModel.fromMap(map['user']) : null,
      institution: map['institution'] != null
          ? InstitutionModel.fromMap(map['institution'])
          : null,
      token: map['token'],
    );
  }

  @override
  String toJson() => json.encode(toMap());

  factory LoginDataModel.fromJson(String source) =>
      LoginDataModel.fromMap(json.decode(source));

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is LoginDataModel &&
        other.user == user &&
        other.institution == institution &&
        other.token == token;
  }

  @override
  int get hashCode => user.hashCode ^ institution.hashCode ^ token.hashCode;
}
