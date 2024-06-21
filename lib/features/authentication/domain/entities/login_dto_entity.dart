import 'package:mero_cloud_school/core/common/exports.dart';



class LoginDTOEntity {
  final LoginDataEntity? data;
  final String? message;

  LoginDTOEntity({
    this.data,
    this.message,
  });
  LoginDTOEntity copyWith({
    ValueGetter<LoginDataEntity?>? data,
    ValueGetter<String?>? message,
  }) {
    return LoginDTOEntity(
      data: data != null ? data() : this.data,
      message: message != null ? message() : this.message,
    );
  }

  @override
  String toString() => 'LoginDTOEntity(data: $data, message: $message)';

  Map<String, dynamic> toMap() {
    return {
      'data': data?.toMap(),
      'message': message,
    };
  }

  factory LoginDTOEntity.fromMap(Map<String, dynamic> map) {
    return LoginDTOEntity(
      data: map['data'] != null ? LoginDataEntity.fromMap(map['data']) : null,
      message: map['message'],
    );
  }

  String toJson() => json.encode(toMap());

  factory LoginDTOEntity.fromJson(String source) =>
      LoginDTOEntity.fromMap(json.decode(source));

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is LoginDTOEntity &&
        other.data == data &&
        other.message == message;
  }

  @override
  int get hashCode => data.hashCode ^ message.hashCode;
}
