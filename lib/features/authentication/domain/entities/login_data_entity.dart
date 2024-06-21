import 'package:mero_cloud_school/core/common/exports.dart';



class LoginDataEntity {
  final UserEntity? user;
  final InstitutionEntity? institution;
  final String? token;
  LoginDataEntity({
    this.user,
    this.institution,
    this.token,
  });
  LoginDataEntity copyWith({
    ValueGetter<UserEntity?>? user,
    ValueGetter<InstitutionEntity?>? institution,
    ValueGetter<String?>? token,
  }) {
    return LoginDataEntity(
      user: user != null ? user() : this.user,
      institution: institution != null ? institution() : this.institution,
      token: token != null ? token() : this.token,
    );
  }

  @override
  String toString() =>
      'LoginDataEntity(user: $user, institution: $institution, token: $token)';

  Map<String, dynamic> toMap() {
    return {
      'user': user?.toMap(),
      'institution': institution?.toMap(),
      'token': token,
    };
  }

  factory LoginDataEntity.fromMap(Map<String, dynamic> map) {
    return LoginDataEntity(
      user: map['user'] != null ? UserEntity.fromMap(map['user']) : null,
      institution: map['institution'] != null
          ? InstitutionEntity.fromMap(map['institution'])
          : null,
      token: map['token'],
    );
  }

  String toJson() => json.encode(toMap());

  factory LoginDataEntity.fromJson(String source) =>
      LoginDataEntity.fromMap(json.decode(source));

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is LoginDataEntity &&
        other.user == user &&
        other.institution == institution &&
        other.token == token;
  }

  @override
  int get hashCode => user.hashCode ^ institution.hashCode ^ token.hashCode;
}
