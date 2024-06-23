import 'package:mero_cloud_school/core/common/exports.dart';

class MasterDataHiveService {
  Future<void> init() async {
    await Hive.initFlutter();
    Hive.registerAdapter(MasterDataHiveModelAdapter());
  }

  // ------------------ All Master Data Queries ------------------ //

  Future<void> addGenderMasterData(MasterDataHiveModel masterData) async {
    var box = await Hive.openBox<MasterDataHiveModel>(
      HiveTableConstant.masterDataGendersBox,
    );

    await box.put(0, masterData);
  }

  Future<MasterDataHiveModel> getGenderMasterData() async {
    var box = await Hive.openBox<MasterDataHiveModel>(
      HiveTableConstant.masterDataGendersBox,
    );
    final data = box.values;
    if (data.isEmpty) {
      addGenderMasterData(MasterDataHiveModel(data: []));
      return MasterDataHiveModel(data: []);
    } else {
      return data.first;
    }
  }

  Future<void> updateGenderMasterData(MasterDataHiveModel masterData) async {
    var box = await Hive.openBox<MasterDataHiveModel>(
      HiveTableConstant.masterDataGendersBox,
    );
    await box.putAt(0, masterData);
  }

  Future<void> clearGenderMasterData() async {
    var box = await Hive.openBox<MasterDataHiveModel>(
      HiveTableConstant.masterDataGendersBox,
    );
    await box.clear();
  }

  Future<void> addReligionMasterData(MasterDataHiveModel masterData) async {
    var box = await Hive.openBox<MasterDataHiveModel>(
      HiveTableConstant.masterDataReligionBox,
    );

    await box.put(0, masterData);
  }

  Future<MasterDataHiveModel> getReligionMasterData() async {
    var box = await Hive.openBox<MasterDataHiveModel>(
      HiveTableConstant.masterDataReligionBox,
    );
    final data = box.values;
    if (data.isEmpty) {
      addReligionMasterData(MasterDataHiveModel(data: []));
      return MasterDataHiveModel(data: []);
    } else {
      return data.first;
    }
  }

  Future<void> updateReligionMasterData(MasterDataHiveModel masterData) async {
    var box = await Hive.openBox<MasterDataHiveModel>(
      HiveTableConstant.masterDataReligionBox,
    );
    await box.putAt(0, masterData);
  }

  Future<void> clearReligionMasterData() async {
    var box = await Hive.openBox<MasterDataHiveModel>(
      HiveTableConstant.masterDataReligionBox,
    );
    await box.clear();
  }

  Future<void> addJobTypesMasterData(MasterDataHiveModel masterData) async {
    var box = await Hive.openBox<MasterDataHiveModel>(
      HiveTableConstant.masterDataJobTypesBox,
    );

    await box.put(0, masterData);
  }

  Future<MasterDataHiveModel> getJobTypesMasterData() async {
    var box = await Hive.openBox<MasterDataHiveModel>(
      HiveTableConstant.masterDataJobTypesBox,
    );
    final data = box.values;
    if (data.isEmpty) {
      addJobTypesMasterData(MasterDataHiveModel(data: []));
      return MasterDataHiveModel(data: []);
    } else {
      return data.first;
    }
  }

  Future<void> updateJobTypesMasterData(MasterDataHiveModel masterData) async {
    var box = await Hive.openBox<MasterDataHiveModel>(
      HiveTableConstant.masterDataJobTypesBox,
    );
    await box.putAt(0, masterData);
  }

  Future<void> clearJobTypesMasterData() async {
    var box = await Hive.openBox<MasterDataHiveModel>(
      HiveTableConstant.masterDataJobTypesBox,
    );
    await box.clear();
  }

  Future<void> addMaritalStatusMasterData(
      MasterDataHiveModel masterData) async {
    var box = await Hive.openBox<MasterDataHiveModel>(
      HiveTableConstant.masterDataMaritalStatusBox,
    );

    await box.put(0, masterData);
  }

  Future<MasterDataHiveModel> getMaritalStatusMasterData() async {
    var box = await Hive.openBox<MasterDataHiveModel>(
      HiveTableConstant.masterDataMaritalStatusBox,
    );
    final data = box.values;
    if (data.isEmpty) {
      addMaritalStatusMasterData(MasterDataHiveModel(data: []));
      return MasterDataHiveModel(data: []);
    } else {
      return data.first;
    }
  }

  Future<void> updateMaritalStatusMasterData(
      MasterDataHiveModel masterData) async {
    var box = await Hive.openBox<MasterDataHiveModel>(
      HiveTableConstant.masterDataMaritalStatusBox,
    );
    await box.putAt(0, masterData);
  }

  Future<void> clearMaritalStatusMasterData() async {
    var box = await Hive.openBox<MasterDataHiveModel>(
      HiveTableConstant.masterDataMaritalStatusBox,
    );
    await box.clear();
  }

  Future<void> addDesignationMasterData(MasterDataHiveModel masterData) async {
    var box = await Hive.openBox<MasterDataHiveModel>(
      HiveTableConstant.masterDataDesignationBox,
    );

    await box.put(0, masterData);
  }

  Future<MasterDataHiveModel> getDesignationMasterData() async {
    var box = await Hive.openBox<MasterDataHiveModel>(
      HiveTableConstant.masterDataDesignationBox,
    );
    final data = box.values;
    if (data.isEmpty) {
      addDesignationMasterData(MasterDataHiveModel(data: []));
      return MasterDataHiveModel(data: []);
    } else {
      return data.first;
    }
  }

  Future<void> updateDesignationMasterData(
      MasterDataHiveModel masterData) async {
    var box = await Hive.openBox<MasterDataHiveModel>(
      HiveTableConstant.masterDataDesignationBox,
    );
    await box.putAt(0, masterData);
  }

  Future<void> clearDesignationMasterData() async {
    var box = await Hive.openBox<MasterDataHiveModel>(
      HiveTableConstant.masterDataDesignationBox,
    );
    await box.clear();
  }
}
