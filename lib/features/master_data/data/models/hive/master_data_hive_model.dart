import 'package:mero_cloud_school/core/common/exports.dart';

part 'master_data_hive_model.g.dart';

@HiveType(
  typeId: HiveTableConstant.masterDataTableId,
)
class MasterDataHiveModel {
  @HiveField(0)
  final List<String>? data;
  MasterDataHiveModel({
    this.data,
  });

  MasterDataHiveModel copyWith({
    ValueGetter<List<String>?>? data,
  }) {
    return MasterDataHiveModel(
      data: data != null ? data() : this.data,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'data': data,
    };
  }

  factory MasterDataHiveModel.fromMap(Map<String, dynamic> map) {
    return MasterDataHiveModel(
      data: List<String>.from(map['data']),
    );
  }

  String toJson() => json.encode(toMap());

  factory MasterDataHiveModel.fromJson(String source) =>
      MasterDataHiveModel.fromMap(json.decode(source));

  @override
  String toString() => 'MasterDataEntity(data: $data)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is MasterDataHiveModel && listEquals(other.data, data);
  }

  @override
  int get hashCode => data.hashCode;
}
