import 'package:e_commerce_app/config/routes/pages_route_name.dart';
import 'package:e_commerce_app/core/components/reuseable_components/custom_button.dart';
import 'package:e_commerce_app/core/components/reuseable_components/custom_text_form_field.dart';
import 'package:e_commerce_app/core/utils/app_colors.dart';
import 'package:e_commerce_app/core/utils/app_strings.dart';
import 'package:e_commerce_app/core/utils/styles.dart';
import 'package:e_commerce_app/features/sign_in/data/data_sources/remote/signin_remote_ds_impl.dart';
import 'package:e_commerce_app/features/sign_in/data/repository/signIn_repo_implement.dart';
import 'package:e_commerce_app/features/sign_in/domain/use_cases/signin_use_case.dart';
import 'package:e_commerce_app/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/enums/enums.dart';
import '../../../../core/utils/app_images.dart';
import '../bloc/sign_in_bloc.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  var emailController = TextEditingController();

  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignInBloc(
        SignInUseCase(
          SignInRepoImplement(
            SignInRemoteDSImpl(),
          ),
        ),
      ),
      child: BlocConsumer<SignInBloc, SignInState>(
        listener: (context, state) {
          if (state.status == ScreenStatus.loading) {
            showDialog(
              context: context,
              builder: (context) => const Center(
                child: CircularProgressIndicator(
                  color: AppColors.primaryColor,
                ),
              ),
            );
          } else if (state.status == ScreenStatus.success) {
            navigatorKey.currentState!
                .pushNamedAndRemoveUntil(PagesRouteName.home, (route) => false);
          } else if (state.status == ScreenStatus.failure) {
            showDialog(
              context: context,
              builder: (context) => Center(
                child: AlertDialog(
                  title: const Text(AppStrings.error),
                  content: Text(
                    state.failures?.message ?? AppStrings.wrong,
                  ),
                ),
              ),
            );
          }
        },
        builder: (context, state) {
          return Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: AppColors.primaryColor,
            body: Padding(
              padding: EdgeInsets.only(left: 16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 91.h,
                      left: 76.w,
                      right: 90.w,
                    ),
                    child: const ImageIcon(
                      AssetImage(AppImages.logo),
                      color: AppColors.whiteColor,
                      size: 100,
                    ),
                  ),
                  SizedBox(
                    height: 86.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 110.w),
                    child: Text(
                      AppStrings.welcome,
                      style: Styles.titleLarge,
                    ),
                  ),
                  Text(
                    AppStrings.please,
                    style: Styles.titleSmall,
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  Text(
                    AppStrings.userTitle,
                    style: Styles.titleMedian,
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  CustomTextFormField(
                    controller: emailController,
                    hintText: AppStrings.hintName,
                  ),
                  SizedBox(
                    height: 32.h,
                  ),
                  Text(
                    AppStrings.passwordTitle,
                    style: Styles.titleMedian,
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  CustomTextFormField(
                    controller: passwordController,
                    hintText: AppStrings.hintPassword,
                    isPassword: true,
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 15.r),
                    child: Text(
                      textAlign: TextAlign.end,
                      AppStrings.frgPassword,
                      style: Styles.titleMedian
                          .copyWith(fontWeight: FontWeight.normal),
                    ),
                  ),
                  SizedBox(
                    height: 56.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 15.w),
                    child: CustomButton(
                      text: AppStrings.signIn,
                      onPressed: () {
                        BlocProvider.of<SignInBloc>(context).add(
                          SignInButtonEvent(
                            emailController.text,
                            passwordController.text,
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 32.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 20.w, left: 5.w),
                    child: Row(
                      children: [
                        Text(
                          AppStrings.dontHaveAccount,
                          style: Styles.titleMedian,
                        ),
                        InkWell(
                          onTap: () {
                            navigatorKey.currentState!
                                .pushNamed(PagesRouteName.signUp);
                          },
                          child: Text(
                            AppStrings.createAccount,
                            style: Styles.titleMedian,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
