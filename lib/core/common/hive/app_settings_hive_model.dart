import 'package:mero_cloud_school/core/common/exports.dart';



part 'app_settings_hive_model.g.dart';

@HiveType(
  typeId: HiveTableConstant.appSettingsTableId,
)
class AppSettingsHiveModel {
  @HiveField(0)
  final bool firstTime;

  @HiveField(1)
  final bool goHome;

  @HiveField(2)
  final bool server;

  @HiveField(3)
  final LoginDTOHiveModel? loginDTO;

  @HiveField(4)
  final String? fingerPrintUser;

  @HiveField(5)
  final String? languageCode;

  @HiveField(6)
  final String? country;

  AppSettingsHiveModel({
    required this.firstTime,
    required this.goHome,
    required this.server,
    this.loginDTO,
    this.fingerPrintUser,
    this.languageCode,
    this.country,
  });

  factory AppSettingsHiveModel.empty() {
    return AppSettingsHiveModel(
      firstTime: true,
      goHome: false,
      server: false,
      loginDTO: null,
    );
  }

  AppSettingsHiveModel copyWith({
    bool? firstTime,
    bool? goHome,
    bool? server,
    ValueGetter<LoginDTOHiveModel?>? loginDTO,
    ValueGetter<String?>? fingerPrintUser,
    ValueGetter<String?>? languageCode,
    ValueGetter<String?>? country,
  }) {
    return AppSettingsHiveModel(
      firstTime: firstTime ?? this.firstTime,
      goHome: goHome ?? this.goHome,
      server: server ?? this.server,
      loginDTO: loginDTO != null ? loginDTO() : this.loginDTO,
      fingerPrintUser:
          fingerPrintUser != null ? fingerPrintUser() : this.fingerPrintUser,
      languageCode: languageCode != null ? languageCode() : this.languageCode,
      country: country != null ? country() : this.country,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'first_time': firstTime,
      'go_home': goHome,
      'server': server,
      'login_d_t_o': loginDTO?.toMap(),
      'finger_print_user': fingerPrintUser,
      'language_code': languageCode,
      'country': country,
    };
  }

  factory AppSettingsHiveModel.fromMap(Map<String, dynamic> map) {
    return AppSettingsHiveModel(
      firstTime: map['first_time'] ?? false,
      goHome: map['go_home'] ?? false,
      server: map['server'] ?? false,
      loginDTO: map['login_d_t_o'] != null
          ? LoginDTOHiveModel.fromMap(map['login_d_t_o'])
          : null,
      fingerPrintUser: map['finger_print_user'],
      languageCode: map['language_code'],
      country: map['country'],
    );
  }

  String toJson() => json.encode(toMap());

  factory AppSettingsHiveModel.fromJson(String source) =>
      AppSettingsHiveModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'AppSettingsHiveModel(firstTime: $firstTime, goHome: $goHome, server: $server, loginDTO: $loginDTO, fingerPrintUser: $fingerPrintUser, languageCode: $languageCode, country: $country)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is AppSettingsHiveModel &&
        other.firstTime == firstTime &&
        other.goHome == goHome &&
        other.server == server &&
        other.loginDTO == loginDTO &&
        other.fingerPrintUser == fingerPrintUser &&
        other.languageCode == languageCode &&
        other.country == country;
  }

  @override
  int get hashCode {
    return firstTime.hashCode ^
        goHome.hashCode ^
        server.hashCode ^
        loginDTO.hashCode ^
        fingerPrintUser.hashCode ^
        languageCode.hashCode ^
        country.hashCode;
  }
}
