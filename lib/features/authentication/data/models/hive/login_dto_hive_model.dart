import 'package:mero_cloud_school/core/common/exports.dart';
part 'login_dto_hive_model.g.dart';

@HiveType(
  typeId: HiveTableConstant.loginDTOTableId,
)
class LoginDTOHiveModel {
  @HiveField(0)
  final LoginDataHiveModel? data;
  @HiveField(1)
  final String? message;

  LoginDTOHiveModel({
    this.data,
    this.message,
  });
  LoginDTOHiveModel copyWith({
    ValueGetter<LoginDataHiveModel?>? data,
    ValueGetter<String?>? message,
  }) {
    return LoginDTOHiveModel(
      data: data != null ? data() : this.data,
      message: message != null ? message() : this.message,
    );
  }

  @override
  String toString() => 'LoginDTOHiveModel(data: $data, message: $message)';

  Map<String, dynamic> toMap() {
    return {
      'data': data?.toMap(),
      'message': message,
    };
  }

  factory LoginDTOHiveModel.fromMap(Map<String, dynamic> map) {
    return LoginDTOHiveModel(
      data:
          map['data'] != null ? LoginDataHiveModel.fromMap(map['data']) : null,
      message: map['message'],
    );
  }

  String toJson() => json.encode(toMap());

  factory LoginDTOHiveModel.fromJson(String source) =>
      LoginDTOHiveModel.fromMap(json.decode(source));

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is LoginDTOHiveModel &&
        other.data == data &&
        other.message == message;
  }

  @override
  int get hashCode => data.hashCode ^ message.hashCode;
}
