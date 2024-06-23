import 'package:mero_cloud_school/core/common/exports.dart';


class MasterDataEntity {
  final List<String>? data;
  MasterDataEntity({
    this.data,
  });

  MasterDataEntity copyWith({
    ValueGetter<List<String>?>? data,
  }) {
    return MasterDataEntity(
      data: data != null ? data() : this.data,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'data': data,
    };
  }

  factory MasterDataEntity.fromMap(Map<String, dynamic> map) {
    return MasterDataEntity(
      data: List<String>.from(map['data']),
    );
  }

  String toJson() => json.encode(toMap());

  factory MasterDataEntity.fromJson(String source) =>
      MasterDataEntity.fromMap(json.decode(source));

  @override
  String toString() => 'MasterDataEntity(data: $data)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is MasterDataEntity && listEquals(other.data, data);
  }

  @override
  int get hashCode => data.hashCode;
}
