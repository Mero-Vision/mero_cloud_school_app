import 'package:mero_cloud_school/core/common/exports.dart';

class TeacherCubit extends Cubit<TeacherState> {
  TeacherCubit({
    required this.getAllTeacherUsecase,
    required this.createTeacherUsecase,
  }) : super(TeacherState.initial());

  final GetAllTeacherUsecase getAllTeacherUsecase;
  final CreateTeacherUsecase createTeacherUsecase;

  Future<void> getAllTeachers({
    void Function(String)? onError,
    void Function()? onSuccess,
    void Function()? navigation,
  }) async {
    emit(state.copyWith(
      isLoading: true,
      isSuccess: false,
      error: () => null,
    ));

    final result = await getAllTeacherUsecase(null);

    result.fold(
      (error) {
        emit(state.copyWith(
          isLoading: false,
          isSuccess: false,
          error: () => error,
        ));
        onError?.call(error.message);
      },
      (teacherEntities) {
        emit(state.copyWith(
          isLoading: false,
          isSuccess: true,
          error: () => null,
          allTeachers: teacherEntities,
        ));
        onSuccess?.call();
        navigation?.call();
      },
    );
  }

  Future<void> createTeacher({
    void Function(String)? onError,
    void Function()? onSuccess,
    void Function()? navigation,
    required CreateTeacherParams params,
  }) async {
    emit(state.copyWith(
      isLoading: true,
      isSuccess: false,
      error: () => null,
    ));

    final result = await createTeacherUsecase(params);

    result.fold(
      (error) {
        emit(state.copyWith(
          isLoading: false,
          isSuccess: false,
          error: () => error,
        ));
        onError?.call(error.message);
      },
      (teacherEntity) async {
        emit(state.copyWith(
          isLoading: false,
          isSuccess: true,
          error: () => null,
        ));
        await getAllTeachers(
          onError: onError,
        );
        onSuccess?.call();
        navigation?.call();
      },
    );
  }
}
