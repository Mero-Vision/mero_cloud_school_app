import 'package:mero_cloud_school/core/common/exports.dart';


class BlocProvidersList {
  static final blocList = [
    BlocProvider<LocaleCubit>(
      create: (context) => locator<LocaleCubit>(),
    ),
  ];
}

    