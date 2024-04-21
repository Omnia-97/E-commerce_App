import 'package:e_commerce_app/features/sign_up/data/data_sources/sign_up_remote_ds_impl.dart';
import 'package:e_commerce_app/features/sign_up/data/repository/sign_up_repo_impl.dart';
import 'package:e_commerce_app/features/sign_up/domain/entities/SignUpRequestModel.dart';
import 'package:e_commerce_app/features/sign_up/domain/use_cases/sign_up_useCase.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../config/routes/pages_route_name.dart';
import '../../../../core/components/reusable_components/custom_button.dart';
import '../../../../core/components/reusable_components/custom_text_form_field.dart';
import '../../../../core/enums/enums.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_images.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/styles.dart';
import '../../../../main.dart';
import '../bloc/sign_up_bloc.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  var fullNameController = TextEditingController();

  var mobileController = TextEditingController();

  var emailController = TextEditingController();

  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignUpBloc(
        SignUpUseCase(
          SignUpRepoImplement(
            SignUpDsImpl(),
          ),
        ),
      ),
      child: BlocConsumer<SignUpBloc, SignUpState>(
        listener: (context, state) {
          if (state.status == RequestStatus.loading) {
            showDialog(
              context: context,
              builder: (context) => const Center(
                child: CircularProgressIndicator(
                  color: AppColors.primaryColor,
                ),
              ),
            );
          } else if (state.status == RequestStatus.success) {
            navigatorKey.currentState!.pushNamedAndRemoveUntil(
                PagesRouteName.layout, (route) => false);
          } else if (state.status == RequestStatus.failure) {
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
            extendBody: true,
            backgroundColor: AppColors.primaryColor,
            body: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(left: 16.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 85.h,
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
                      height: 46.h,
                    ),
                    Text(
                      AppStrings.fullName,
                      style: Styles.titleMedian,
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    CustomTextFormField(
                        controller: fullNameController,
                        hintText: AppStrings.fullNameHint),
                    SizedBox(
                      height: 32.h,
                    ),
                    Text(
                      AppStrings.mobile,
                      style: Styles.titleMedian,
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    CustomTextFormField(
                      controller: mobileController,
                      hintText: AppStrings.mobileHint,
                    ),
                    SizedBox(
                      height: 32.h,
                    ),
                    Text(
                      AppStrings.email,
                      style: Styles.titleMedian,
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    CustomTextFormField(
                      controller: emailController,
                      hintText: AppStrings.emailHint,
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
                    SizedBox(
                      height: 56.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 16.w),
                      child: CustomButton(
                        text: AppStrings.signUp,
                        onPressed: () {
                          SignUpRequestModel request = SignUpRequestModel(
                            name: fullNameController.text,
                            email: emailController.text,
                            password: passwordController.text,
                            rePassword: passwordController.text,
                            phone: mobileController.text,
                          );
                          BlocProvider.of<SignUpBloc>(context)
                              .add(SignUpButtonEvent(request));
                        },
                      ),
                    ),
                    SizedBox(
                      height: 32.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 20.w, left: 2.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            AppStrings.haveAccount,
                            style: Styles.titleMedian,
                          ),
                          InkWell(
                            onTap: () {
                              navigatorKey.currentState!
                                  .pushNamed(PagesRouteName.signIn);
                            },
                            child: Text(
                              AppStrings.signIn,
                              style: Styles.titleMedian,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 32.h,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
