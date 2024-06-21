import 'package:mero_cloud_school/core/common/exports.dart';

class AuthenticationCubit extends Cubit<AuthenticationState> {
  AuthenticationCubit({
    required this.loginUsecase,
  }) : super(AuthenticationState.initial());

  final LoginUsecase loginUsecase;

  Future<void> login({
    void Function(String)? onError,
    void Function()? onSuccess,
    void Function()? navigation,
    required String email,
    required String password,
  }) async {
    emit(state.copyWith(
      isLoading: true,
      isSuccess: false,
      error: () => null,
      loginDTOEntity: () => null,
    ));

    final result = await loginUsecase(
      LoginParams(
        email: email,
        password: password,
      ),
    );

    result.fold(
      (error) {
        emit(state.copyWith(
          isLoading: false,
          isSuccess: false,
          error: () => error,
          loginDTOEntity: () => null,
        ));
        onError?.call(error.message);
      },
      (loginDTOEntity) {
        emit(state.copyWith(
          isLoading: false,
          isSuccess: true,
          error: () => null,
          loginDTOEntity: () => loginDTOEntity,
        ));
        onSuccess?.call();
        navigation?.call();
      },
    );
  }
}
