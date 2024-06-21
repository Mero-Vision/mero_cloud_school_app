import 'package:mero_cloud_school/core/common/exports.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  bool isPasswordVisible = true;

  final _formKey = GlobalKey<FormState>();

  _login() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }
    BlocProvider.of<AuthenticationCubit>(context).login(
      email: emailController.text,
      password: passwordController.text,
      onError: (errorMessage) {
        kShowSnackBar(
          message: errorMessage,
          context: context,
          backgroundColor: AppColors().errorContainer,
        );
      },
      onSuccess: () {
        kShowSnackBar(
          message: 'Login Successful',
          context: context,
        );
      },
      navigation: () {
        Navigator.pushNamed(
          context,
          AppRoutes.unknownRoute,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: BlocBuilder<AuthenticationCubit, AuthenticationState>(
        builder: (context, state) {
          return Stack(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 150.h),
                      Container(
                        height: 100.h,
                        width: 100.h,
                        color: Colors.red,
                      ),
                      SizedBox(height: 10.h),

                      Text(
                        'Mero Cloud School',
                        style: Theme.of(context).textTheme.f20W6,
                      ),

                      SizedBox(height: 100.h),

                      Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width,
                              child: KTextFormField(
                                autocorrect: false,
                                topLabelText: 'EMAIL',
                                topLabelStyle:
                                    Theme.of(context).textTheme.bBS.copyWith(
                                          letterSpacing: 1.5,
                                        ),
                                hintText: '',
                                keyboardType: TextInputType.emailAddress,
                                controller: emailController,
                                contentStyle: Theme.of(context).textTheme.mBM,
                                errorTextStyle: Theme.of(context)
                                    .textTheme
                                    .mBS
                                    .copyWith(
                                      color:
                                          Theme.of(context).colorScheme.error,
                                    ),
                                hintTextStyle:
                                    Theme.of(context).textTheme.mBM.copyWith(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onSurface
                                              .withOpacity(0.5),
                                        ),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Email is required';
                                  }
                                  return null;
                                },
                              ),
                            ),
                            SizedBox(height: 24.h),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'PASSWORD',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bBS
                                          .copyWith(
                                            letterSpacing: 1.5,
                                          ),
                                    ),
                                    // Forgot Password
                                    const Spacer(),
                                    Text(
                                      'Forgot Password?',
                                      style: Theme.of(context)
                                          .textTheme
                                          .mBS
                                          .copyWith(
                                            color: PrimitiveColors.tertiary800,
                                          ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 12.h),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width,
                                  child: KTextFormField(
                                    hintText: '',
                                    isTopLabelText: false,
                                    keyboardType: TextInputType.emailAddress,
                                    controller: passwordController,
                                    obscureText: isPasswordVisible,
                                    contentStyle:
                                        Theme.of(context).textTheme.mBM,
                                    errorTextStyle: Theme.of(context)
                                        .textTheme
                                        .mBS
                                        .copyWith(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .error,
                                        ),
                                    hintTextStyle: Theme.of(context)
                                        .textTheme
                                        .mBM
                                        .copyWith(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onSurface
                                              .withOpacity(0.5),
                                        ),
                                    suffixIcon: isPasswordVisible
                                        ? const Icon(Icons.visibility_outlined)
                                        : const Icon(
                                            Icons.visibility_off_outlined),
                                    onSuffixTap: () {
                                      isPasswordVisible = !isPasswordVisible;
                                      setState(() {});
                                    },
                                    validator: (p0) {
                                      if (p0!.isEmpty) {
                                        return 'Password is required';
                                      }
                                      if (p0.length < 6) {
                                        return 'Password must be at least 6 characters';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

                      // Login Button
                      SizedBox(
                        height: 24.h,
                      ),
                      KButton(
                        onPressed: () async {
                          if (!_formKey.currentState!.validate()) {
                            return;
                          }
                          await _login();
                        },
                        label: 'LOGIN',
                        backgroundColor: AppColors().primary,
                        foregroundColor: AppColors().onPrimary,
                        fixedSize:
                            Size(MediaQuery.of(context).size.width, 51.h),
                        borderRadius: 6.r,
                      ),
                      SizedBox(
                        height: 12.h,
                      ),
                      // Terms and Conditions
                      Wrap(
                        alignment: WrapAlignment.center,
                        children: [
                          Text(
                            'By logging in, you agree to Mero Cloud School',
                            style: Theme.of(context).textTheme.mBS.copyWith(
                                  color: AppColors().surfaceContainerLow,
                                ),
                          ),
                          Text(
                            'Terms and Conditions',
                            style: Theme.of(context).textTheme.mBS.copyWith(
                                  color: AppColors().surfaceContainerLow,
                                ),
                          ),
                        ],
                      ),
                      SizedBox(height: 170.h),
                      Text(
                        'Powered By Mero Vision.',
                        style: Theme.of(context).textTheme.f14W5,
                      ),
                    ],
                  ),
                ),
              ),
              // Loader
              if (state.isLoading) const Loader()
            ],
          );
        },
      ),
    );
  }
}
