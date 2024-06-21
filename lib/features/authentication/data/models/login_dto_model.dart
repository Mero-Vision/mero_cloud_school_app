import 'package:mero_cloud_school/core/common/exports.dart';


class LoginDTOModel extends LoginDTOEntity {
  LoginDTOModel({
    super.data,
    super.message,
  });

  @override
  String toString() => 'LoginDTOModel(data: $data, message: $message)';

  @override
  Map<String, dynamic> toMap() {
    return {
      'data': data?.toMap(),
      'message': message,
    };
  }

  factory LoginDTOModel.fromMap(Map<String, dynamic> map) {
    return LoginDTOModel(
      data: map['data'] != null ? LoginDataModel.fromMap(map['data']) : null,
      message: map['message'],
    );
  }

  @override
  String toJson() => json.encode(toMap());

  factory LoginDTOModel.fromJson(String source) =>
      LoginDTOModel.fromMap(json.decode(source));

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is LoginDTOModel &&
        other.data == data &&
        other.message == message;
  }

  @override
  int get hashCode => data.hashCode ^ message.hashCode;
}
