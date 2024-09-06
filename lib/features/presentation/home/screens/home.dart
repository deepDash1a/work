import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:work/core/logic/shared_pref.dart';
import 'package:work/core/logic/shared_pref_keys.dart';
import 'package:work/core/widgets/texts.dart';
import 'package:work/features/business_logic/cubit.dart';
import 'package:work/features/presentation/authentication/login/ui/screens/login.dart';
import 'package:work/features/presentation/home/widgets/ai/artificial_intelligence.dart';
import 'package:work/features/presentation/home/widgets/image/image_processing.dart';
import 'package:work/features/presentation/home/widgets/math/mathematics.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SafeArea(
        child: Drawer(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 30.00.w),
            child: Column(
              children: [
                SizedBox(
                  height: 50.00.h,
                ),
                CircleAvatar(
                  radius: 70.00.r,
                  backgroundImage: const AssetImage('assets/images/person.jpg'),
                ),
                SizedBox(
                  height: 50.00.h,
                ),
                Container(
                    width: double.infinity.w,
                    height: 50.00.h,
                    decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(10.00.r),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset:
                              const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Center(
                        child: ExtraBoldText20dark(
                      text:
                          '${SharedPrefService.getData(key: SharedPrefKeys.userName)}',
                      color: Colors.white,
                    ))),
                SizedBox(
                  height: 20.00.h,
                ),
                Container(
                    width: double.infinity.w,
                    height: 50.00.h,
                    decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(10.00.r),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset:
                              const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: const Center(
                        child: ExtraBoldText20dark(
                      text: 'NUB University',
                      color: Colors.white,
                    ))),
                SizedBox(
                  height: 20.00.h,
                ),
                Container(
                    width: double.infinity.w,
                    height: 50.00.h,
                    decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(10.00.r),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset:
                              const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Center(
                        child: ExtraBoldText20dark(
                      text:
                          '${SharedPrefService.getData(key: SharedPrefKeys.userPhone)}',
                      color: Colors.white,
                    ))),
                SizedBox(
                  height: 20.00.h,
                ),
              ],
            ),
          ),
        ),
      ),
      appBar: AppBar(
        leading: Builder(builder: (context) {
          return IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: const Icon(
              Icons.menu,
            ),
          );
        }),
        title: BoldText20dark(
          text: '${SharedPrefService.getData(
            key: SharedPrefKeys.userName,
          )}',
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => const LoginScreen()),
                (Route<dynamic> route) => false,
              );

              SharedPrefService.removeData(key: SharedPrefKeys.userId);

              context.read<WorkAppCubit>().loginEmailController.clear();
              context.read<WorkAppCubit>().loginPasswordController.clear();

              context.read<WorkAppCubit>().registerNameController.clear();
              context.read<WorkAppCubit>().registerEmailController.clear();
              context.read<WorkAppCubit>().registerPhoneController.clear();
              context.read<WorkAppCubit>().registerPasswordController.clear();
              context
                  .read<WorkAppCubit>()
                  .registerConfirmPasswordController
                  .clear();
            },
            icon: const Icon(
              Icons.logout_outlined,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 20.00.w,
            vertical: 20.00.h,
          ),
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const ArtificialIntelligence(),
                      ),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset:
                              const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                      borderRadius: BorderRadius.circular(20.00.r),
                      color: Colors.blueGrey,
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20.00.w,
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: 150.00.w,
                            height: 150.00.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.00.r),
                              image: const DecorationImage(
                                image: AssetImage('assets/images/ai.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10.00.w,
                          ),
                          const Expanded(
                            child: ExtraBoldText20dark(
                              text: 'Artificial Intelligence',
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.00.h),
              Expanded(
                flex: 1,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const Mathematics(),
                      ),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset:
                              const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                      borderRadius: BorderRadius.circular(20.00.r),
                      color: Colors.blueGrey,
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20.00.w,
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: 150.00.w,
                            height: 150.00.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.00.r),
                              image: const DecorationImage(
                                image: AssetImage('assets/images/math.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10.00.w,
                          ),
                          const Expanded(
                            child: ExtraBoldText20dark(
                              text: 'Mathematics',
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.00.h),
              Expanded(
                flex: 1,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const ImageProcessing(),
                      ),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset:
                          const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                      borderRadius: BorderRadius.circular(20.00.r),
                      color: Colors.blueGrey,
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20.00.w,
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: 150.00.w,
                            height: 150.00.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.00.r),
                              image: const DecorationImage(
                                image: AssetImage('assets/images/image.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10.00.w,
                          ),
                          const Expanded(
                            child: ExtraBoldText20dark(
                              text: 'Image Processing',
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
