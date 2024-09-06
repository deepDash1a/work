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

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<WorkAppCubit, WorkAppState>(
      listener: (context, state) {
        if (state is SuccessRegisterWorkAppState) {
          customSnackBar(
            context: context,
            text: 'Registered Successfully',
            color: Colors.green,
          );
          Navigator.pop(context);
        }
        if (state is ErrorRegisterWorkAppState) {
          customSnackBar(
            context: context,
            text: state.error,
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
                  key: cubit.registerFormKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const ExtraBoldText25dark(text: 'Register'),
                      SizedBox(
                        height: 10.00.h,
                      ),
                      const BoldText20dark(
                          text: 'Welcome, It is your first time with us!'),
                      SizedBox(
                        height: 30.00.h,
                      ),
                      CustomTextFormField(
                        controller: cubit.registerNameController,
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return 'it is required';
                          }
                          return null;
                        },
                        hint: 'Enter your name',
                      ),
                      SizedBox(
                        height: 15.00.h,
                      ),
                      CustomTextFormField(
                        controller: cubit.registerEmailController,
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
                        controller: cubit.registerPhoneController,
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return 'it is required';
                          }
                          return null;
                        },
                        hint: 'Enter your phone',
                        textInputType: TextInputType.phone,
                      ),
                      SizedBox(
                        height: 15.00.h,
                      ),
                      CustomTextFormField(
                        controller: cubit.registerPasswordController,
                        obscureText: true,
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return 'it is required';
                          }
                          return null;
                        },
                        hint: 'Enter your password',
                      ),
                      SizedBox(
                        height: 15.00.h,
                      ),
                      CustomTextFormField(
                        controller: cubit.registerConfirmPasswordController,
                        obscureText: true,
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return 'it is required';
                          }
                          return null;
                        },
                        hint: 'Confirm your password',
                      ),
                      SizedBox(
                        height: 30.00.h,
                      ),
                      state is LoadingRegisterWorkAppState
                          ? const Center(
                              child: CircularProgressIndicator(),
                            )
                          : Center(
                              child: CustomButton(
                                text: 'Register',
                                onPressed: () {
                                  if (cubit.registerFormKey.currentState!
                                      .validate()) {
                                    if (cubit.registerPasswordController.text ==
                                        cubit.registerConfirmPasswordController
                                            .text) {
                                      cubit.register();
                                    } else {
                                      customSnackBar(
                                          context: context,
                                          text: 'passwords do not matches',
                                          color: Colors.red);
                                    }
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
                              text: 'Already have an account? '),
                          CustomTextButton(
                            text: 'Login',
                            function: () {
                              Navigator.pop(context);
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
