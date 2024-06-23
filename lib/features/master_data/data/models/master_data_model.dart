import 'package:mero_cloud_school/core/common/exports.dart';

class MasterDataModel extends MasterDataEntity {
  MasterDataModel({
    super.data,
  });

  @override
  MasterDataModel copyWith({
    ValueGetter<List<String>?>? data,
  }) {
    return MasterDataModel(
      data: data != null ? data() : this.data,
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      'data': data,
    };
  }

  factory MasterDataModel.fromMap(Map<String, dynamic> map) {
    return MasterDataModel(
      data: List<String>.from(map['data']),
    );
  }

  @override
  String toJson() => json.encode(toMap());

  factory MasterDataModel.fromJson(String source) =>
      MasterDataModel.fromMap(json.decode(source));

  @override
  String toString() => 'MasterDataModel(data: $data)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is MasterDataModel && listEquals(other.data, data);
  }

  @override
  int get hashCode => data.hashCode;
}
