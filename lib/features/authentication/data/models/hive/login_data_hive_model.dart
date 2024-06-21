import 'package:mero_cloud_school/core/common/exports.dart';

part 'login_data_hive_model.g.dart';

@HiveType(
  typeId: HiveTableConstant.loginDataTableId,
)
class LoginDataHiveModel {
  @HiveField(0)
  final UserHiveModel? user;
  @HiveField(1)
  final InstitutionHiveModel? institution;
  @HiveField(2)
  final String? token;
  LoginDataHiveModel({
    this.user,
    this.institution,
    this.token,
  });
  LoginDataHiveModel copyWith({
    ValueGetter<UserHiveModel?>? user,
    ValueGetter<InstitutionHiveModel?>? institution,
    ValueGetter<String?>? token,
  }) {
    return LoginDataHiveModel(
      user: user != null ? user() : this.user,
      institution: institution != null ? institution() : this.institution,
      token: token != null ? token() : this.token,
    );
  }

  @override
  String toString() =>
      'LoginDataHiveModel(user: $user, institution: $institution, token: $token)';

  Map<String, dynamic> toMap() {
    return {
      'user': user?.toMap(),
      'institution': institution?.toMap(),
      'token': token,
    };
  }

  factory LoginDataHiveModel.fromMap(Map<String, dynamic> map) {
    return LoginDataHiveModel(
      user: map['user'] != null ? UserHiveModel.fromMap(map['user']) : null,
      institution: map['institution'] != null
          ? InstitutionHiveModel.fromMap(map['institution'])
          : null,
      token: map['token'],
    );
  }

  String toJson() => json.encode(toMap());

  factory LoginDataHiveModel.fromJson(String source) =>
      LoginDataHiveModel.fromMap(json.decode(source));

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is LoginDataHiveModel &&
        other.user == user &&
        other.institution == institution &&
        other.token == token;
  }

  @override
  int get hashCode => user.hashCode ^ institution.hashCode ^ token.hashCode;
}
