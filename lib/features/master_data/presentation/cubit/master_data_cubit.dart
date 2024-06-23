import 'package:mero_cloud_school/core/common/exports.dart';

class MasterDataCubit extends Cubit<MasterDataState> {
  MasterDataCubit({
    required this.getMaritalStatusMasterDataUsecase,
    required this.getGenderMasterDataUsecase,
    required this.getJobTypeMasterDataUsecase,
    required this.getReligionMasterDataUsecase,
    required this.getDesignationMasterDataUsecase,
  }) : super(MasterDataState.initial()) {
    init();
  }

  final GetMaritalStatusMasterDataUsecase getMaritalStatusMasterDataUsecase;
  final GetGenderMasterDataUsecase getGenderMasterDataUsecase;
  final GetJobTypeMasterDataUsecase getJobTypeMasterDataUsecase;
  final GetReligionMasterDataUsecase getReligionMasterDataUsecase;
  final GetDesignationMasterDataUsecase getDesignationMasterDataUsecase;

  Future<void> init({
    void Function(String)? onError,
    void Function()? onSuccess,
    void Function()? navigation,
  }) async {
    await getMaritalStatus(
      onError: onError,
      onSuccess: onSuccess,
      navigation: navigation,
    );
    await getGenders(
      onError: onError,
      onSuccess: onSuccess,
      navigation: navigation,
    );
    await getJobTypes(
      onError: onError,
      onSuccess: onSuccess,
      navigation: navigation,
    );
    await getReligions(
      onError: onError,
      onSuccess: onSuccess,
      navigation: navigation,
    );
    await getDesignations(
      onError: onError,
      onSuccess: onSuccess,
      navigation: navigation,
    );
  }

  Future<void> getMaritalStatus({
    void Function(String)? onError,
    void Function()? onSuccess,
    void Function()? navigation,
  }) async {
    emit(state.copyWith(isLoading: true));
    final result = await getMaritalStatusMasterDataUsecase.call(null);
    result.fold(
      (error) {
        onError?.call(error.message);
        emit(
          state.copyWith(
            isLoading: false,
            error: () => error,
            isSuccess: false,
          ),
        );
      },
      (data) {
        emit(
          state.copyWith(
            isLoading: false,
            maritalStatusMasterData: () => data,
            isSuccess: true,
            error: () => null,
          ),
        );
        onSuccess?.call();
        navigation?.call();
      },
    );
  }

  Future<void> getGenders({
    void Function(String)? onError,
    void Function()? onSuccess,
    void Function()? navigation,
  }) async {
    emit(state.copyWith(isLoading: true));
    final result = await getGenderMasterDataUsecase.call(null);
    result.fold(
      (error) {
        onError?.call(error.message);
        emit(
          state.copyWith(
            isLoading: false,
            error: () => error,
            isSuccess: false,
          ),
        );
      },
      (data) {
        emit(
          state.copyWith(
            isLoading: false,
            gendersMasterData: () => data,
            isSuccess: true,
            error: () => null,
          ),
        );
        onSuccess?.call();
        navigation?.call();
      },
    );
  }

  Future<void> getJobTypes({
    void Function(String)? onError,
    void Function()? onSuccess,
    void Function()? navigation,
  }) async {
    emit(state.copyWith(isLoading: true));
    final result = await getJobTypeMasterDataUsecase.call(null);
    result.fold(
      (error) {
        onError?.call(error.message);
        emit(
          state.copyWith(
            isLoading: false,
            error: () => error,
            isSuccess: false,
          ),
        );
      },
      (data) {
        emit(
          state.copyWith(
            isLoading: false,
            jobTypesMasterData: () => data,
            isSuccess: true,
            error: () => null,
          ),
        );
        onSuccess?.call();
        navigation?.call();
      },
    );
  }

  Future<void> getReligions({
    void Function(String)? onError,
    void Function()? onSuccess,
    void Function()? navigation,
  }) async {
    emit(state.copyWith(isLoading: true));
    final result = await getReligionMasterDataUsecase.call(null);
    result.fold(
      (error) {
        onError?.call(error.message);
        emit(
          state.copyWith(
            isLoading: false,
            error: () => error,
            isSuccess: false,
          ),
        );
      },
      (data) {
        emit(
          state.copyWith(
            isLoading: false,
            religionsMasterData: () => data,
            isSuccess: true,
            error: () => null,
          ),
        );
        onSuccess?.call();
        navigation?.call();
      },
    );
  }

  Future<void> getDesignations({
    void Function(String)? onError,
    void Function()? onSuccess,
    void Function()? navigation,
  }) async {
    emit(state.copyWith(isLoading: true));
    final result = await getDesignationMasterDataUsecase.call(null);
    result.fold(
      (error) {
        onError?.call(error.message);
        emit(
          state.copyWith(
            isLoading: false,
            error: () => error,
            isSuccess: false,
          ),
        );
      },
      (data) {
        emit(
          state.copyWith(
            isLoading: false,
            designationsMasterData: () => data,
            isSuccess: true,
            error: () => null,
          ),
        );
        onSuccess?.call();
        navigation?.call();
      },
    );
  }

  void clearMasterData() {
    emit(state.copyWith(
      maritalStatusMasterData: () => null,
      jobTypesMasterData: () => null,
      designationsMasterData: () => null,
      gendersMasterData: () => null,
      religionsMasterData: () => null,
    ));
  }
}
