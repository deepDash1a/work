import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:work/core/functions/shared_functions.dart';
import 'package:work/core/widgets/custom_button.dart';
import 'package:work/core/widgets/custom_text_button.dart';
import 'package:work/core/widgets/custom_text_form_field.dart';
import 'package:work/core/widgets/texts.dart';
import 'package:work/features/business_logic/cubit.dart';
import 'package:work/features/business_logic/states.dart';
import 'package:work/features/presentation/authentication/register/ui/screens/register.dart';
import 'package:work/features/presentation/home/screens/home.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<WorkAppCubit, WorkAppState>(
      listener: (context, state) {
        if (state is SuccessLoginWorkAppState) {
          customSnackBar(
            context: context,
            text: 'Logged Successfully',
            color: Colors.green,
          );
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => const HomeScreen()),
            (Route<dynamic> route) => false,
          );
        }
        if (state is ErrorLoginWorkAppState) {
          customSnackBar(
            context: context,
            text: 'Check your connection or Enter your data correctly',
            color: Colors.red,
          );
        }
      },
      builder: (context, state) {
        var cubit = context.read<WorkAppCubit>();
        return Scaffold(
          body: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 20.00.w,
              vertical: 20.00.h,
            ),
            child: Center(
              child: SingleChildScrollView(
                child: Form(
                  key: cubit.loginFormKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const ExtraBoldText25dark(text: 'Login'),
                      SizedBox(
                        height: 10.00.h,
                      ),
                      const BoldText20dark(text: 'Welcome with us'),
                      SizedBox(
                        height: 30.00.h,
                      ),
                      CustomTextFormField(
                        controller: cubit.loginEmailController,
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return 'it is required';
                          }
                          return null;
                        },
                        hint: 'Enter your email',
                      ),
                      SizedBox(
                        height: 15.00.h,
                      ),
                      CustomTextFormField(
                        obscureText: true,
                        controller: cubit.loginPasswordController,
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return 'it is required';
                          }
                          return null;
                        },
                        hint: 'Enter your password',
                      ),
                      SizedBox(
                        height: 30.00.h,
                      ),
                      state is LoadingLoginWorkAppState
                          ? const Center(
                              child: CircularProgressIndicator(),
                            )
                          : Center(
                              child: CustomButton(
                                text: 'Login',
                                onPressed: () {
                                  if (cubit.loginFormKey.currentState!
                                      .validate()) {
                                    cubit.login();
                                  }
                                },
                              ),
                            ),
                      SizedBox(
                        height: 15.00.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const RegularText16dark(
                              text: 'Do not have an account? '),
                          CustomTextButton(
                            text: 'Register',
                            function: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => const RegisterScreen(),
                                ),
                              );
                            },
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
