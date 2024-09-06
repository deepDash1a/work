import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:work/core/widgets/custom_button.dart';
import 'package:work/core/widgets/texts.dart';
import 'package:work/features/presentation/authentication/login/ui/screens/login.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 20.00.w,
              vertical: 20.00.h,
            ),
            child: Column(
              children: [
                Image.asset('assets/images/start.png'),
                SizedBox(
                  height: 20.00.h,
                ),
                const BoldText16dark(
                  text:
                      'Learning is a lifelong process that involves gaining new knowledge and skills',
                ),
                SizedBox(
                  height: 40.00.h,
                ),
                CustomButton(
                  text: 'Start',
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginScreen()),
                        (Route<dynamic> route) => false);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
