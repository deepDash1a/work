import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:work/core/functions/shared_functions.dart';
import 'package:work/core/widgets/custom_button.dart';
import 'package:work/core/widgets/custom_text_button.dart';
import 'package:work/core/widgets/texts.dart';
import 'package:work/features/business_logic/cubit.dart';
import 'package:work/features/business_logic/states.dart';
import 'package:work/features/presentation/home/screens/home.dart';
import 'package:work/features/presentation/home/widgets/ai/artificial_intelligence.dart';

class Mathematics extends StatelessWidget {
  const Mathematics({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const BoldText18dark(
          text: 'Mathematics',
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MathExam(),
                ),
              );
            },
            icon: const Icon(
              Icons.book_outlined,
            ),
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 20.00.w,
          vertical: 20.00.h,
        ),
        child: Center(
          child: Column(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const TutorialOne(),
                      ),
                    );
                  },
                  child: Container(
                    width: double.infinity.w,
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
                    child: const Center(
                      child: BoldText20dark(
                        text: 'Tutorial one',
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.00.h,
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const TutorialTwo(),
                      ),
                    );
                  },
                  child: Container(
                    width: double.infinity.w,
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
                    child: const Center(
                      child: BoldText20dark(
                        text: 'Tutorial Two',
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.00.h,
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const TutorialThree(),
                      ),
                    );
                  },
                  child: Container(
                    width: double.infinity.w,
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
                    child: const Center(
                      child: BoldText20dark(
                        text: 'Tutorial Three',
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.00.h,
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const TutorialFour(),
                      ),
                    );
                  },
                  child: Container(
                    width: double.infinity.w,
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
                    child: const Center(
                      child: BoldText20dark(
                        text: 'Tutorial Four',
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.00.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TutorialOne extends StatelessWidget {
  const TutorialOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const BoldText20dark(
          text: 'Tutorial One',
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 20.00.w,
          vertical: 20.00.h,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                  child: ExtraBoldText22dark(
                      text: 'بعض المفاهيم الأساسية في التفاضل')),
              SizedBox(
                height: 20.00.h,
              ),
              Image.asset(
                'assets/images/ma1.png',
                width: double.infinity.w,
                height: 400.00.h,
                fit: BoxFit.fill,
              ),
              SizedBox(
                height: 20.00.h,
              ),
              SizedBox(
                height: 20.00.h,
              ),
              Image.asset(
                'assets/images/ma2.png',
                width: double.infinity.w,
                height: 400.00.h,
                fit: BoxFit.fill,
              ),
              SizedBox(
                height: 20.00.h,
              ),
              SizedBox(
                height: 20.00.h,
              ),
              Image.asset(
                'assets/images/ma3.png',
                width: double.infinity.w,
                height: 400.00.h,
                fit: BoxFit.fill,
              ),
              SizedBox(
                height: 20.00.h,
              ),
              SizedBox(
                height: 20.00.h,
              ),
              Image.asset(
                'assets/images/ma4.png',
                width: double.infinity.w,
                height: 400.00.h,
                fit: BoxFit.fill,
              ),
              SizedBox(
                height: 20.00.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TutorialTwo extends StatelessWidget {
  const TutorialTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const BoldText20dark(
          text: 'Tutorial Two',
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 20.00.w,
          vertical: 20.00.h,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: ExtraBoldText22dark(
                  text: 'INAQUALITIES VALUE ABS',
                ),
              ),
              SizedBox(
                height: 20.00.h,
              ),
              Image.asset(
                'assets/images/ma5.png',
                width: double.infinity.w,
                height: 400.00.h,
                fit: BoxFit.fill,
              ),
              SizedBox(
                height: 20.00.h,
              ),
              Image.asset(
                'assets/images/ma6.png',
                width: double.infinity.w,
                height: 400.00.h,
                fit: BoxFit.fill,
              ),
              SizedBox(
                height: 20.00.h,
              ),
              Image.asset(
                'assets/images/ma7.png',
                width: double.infinity.w,
                height: 400.00.h,
                fit: BoxFit.fill,
              ),
              SizedBox(
                height: 20.00.h,
              ),
              Image.asset(
                'assets/images/ma8.png',
                width: double.infinity.w,
                height: 400.00.h,
                fit: BoxFit.fill,
              ),
              SizedBox(
                height: 20.00.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TutorialThree extends StatelessWidget {
  const TutorialThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const BoldText20dark(
          text: 'Tutorial Three',
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 20.00.w,
          vertical: 20.00.h,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: ExtraBoldText22dark(
                  text: 'THE DOMAIN AND RANGE OF THE FUNCTION: ',
                ),
              ),
              SizedBox(
                height: 20.00.h,
              ),
              Image.asset(
                'assets/images/ma9.png',
                width: double.infinity.w,
                height: 400.00.h,
                fit: BoxFit.fill,
              ),
              SizedBox(
                height: 20.00.h,
              ),
              Image.asset(
                'assets/images/ma10.png',
                width: double.infinity.w,
                height: 400.00.h,
                fit: BoxFit.fill,
              ),
              SizedBox(
                height: 20.00.h,
              ),
              Image.asset(
                'assets/images/ma11.png',
                width: double.infinity.w,
                height: 400.00.h,
                fit: BoxFit.fill,
              ),
              SizedBox(
                height: 20.00.h,
              ),
              Image.asset(
                'assets/images/ma12.png',
                width: double.infinity.w,
                height: 400.00.h,
                fit: BoxFit.fill,
              ),
              SizedBox(
                height: 20.00.h,
              ),
              Image.asset(
                'assets/images/ma13.png',
                width: double.infinity.w,
                height: 400.00.h,
                fit: BoxFit.fill,
              ),
              SizedBox(
                height: 20.00.h,
              ),
              Image.asset(
                'assets/images/ma14.png',
                width: double.infinity.w,
                height: 400.00.h,
                fit: BoxFit.fill,
              ),
              SizedBox(
                height: 20.00.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TutorialFour extends StatelessWidget {
  const TutorialFour({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const BoldText20dark(
          text: 'Tutorial Four',
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 20.00.w,
          vertical: 20.00.h,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: ExtraBoldText22dark(
                  text: 'THE DOMAIN AND RANGE OF THE FUNCTION',
                ),
              ),
              SizedBox(
                height: 20.00.h,
              ),
              Image.asset(
                'assets/images/ma15.png',
                width: double.infinity.w,
                height: 400.00.h,
                fit: BoxFit.fill,
              ),
              SizedBox(
                height: 20.00.h,
              ),
              Image.asset(
                'assets/images/ma16.png',
                width: double.infinity.w,
                height: 400.00.h,
                fit: BoxFit.fill,
              ),
              SizedBox(
                height: 20.00.h,
              ),
              Image.asset(
                'assets/images/ma17.png',
                width: double.infinity.w,
                height: 400.00.h,
                fit: BoxFit.fill,
              ),
              SizedBox(
                height: 20.00.h,
              ),
              Image.asset(
                'assets/images/ma18.png',
                width: double.infinity.w,
                height: 400.00.h,
                fit: BoxFit.fill,
              ),
              SizedBox(
                height: 20.00.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MathExam extends StatelessWidget {
  const MathExam({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<WorkAppCubit, WorkAppState>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = context.read<WorkAppCubit>();
        return Scaffold(
          appBar: AppBar(),
          body: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 20.00.w,
              vertical: 20.00.h,
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity.w,
                    height: 40.00.h,
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
                      borderRadius: BorderRadius.circular(8.00.r),
                      color: Colors.red,
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20.00.w,
                      ),
                      child: const Center(
                        child: BoldText20dark(
                          text: 'Math Test Exam',
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40.00.h,
                  ),
                  const BoldText20dark(
                    text: '1- If f(x) = sqrt(x)sin(x), what is f'
                        '(x), the second derivative?',
                    textAlign: TextAlign.start,
                  ),
                  CustomTextButton(
                      text: 'sqrt(x)cos(x) - 2sin(x)/√(x)',
                      function: () {
                        customSnackBar(
                            context: context,
                            text:
                                'Your answer has been successfully registered.',
                            color: Colors.green);
                        cubit.increaseMathExamDegree();
                      }),
                  CustomTextButton(
                      text: 'sqrt(x)cos(x) + 2sin(x)/√(x)',
                      function: () {
                        customSnackBar(
                            context: context,
                            text:
                                'Your answer has been successfully registered.',
                            color: Colors.green);
                      }),
                  CustomTextButton(
                      text: 'sqrt(x)cos(x) - sin(x)/√(x)',
                      textAlign: TextAlign.start,
                      function: () {
                        customSnackBar(
                            context: context,
                            text:
                                'Your answer has been successfully registered.',
                            color: Colors.green);
                      }),
                  CustomTextButton(
                      text: 'sqrt(x)cos(x) + sin(x)/√(x)',
                      textAlign: TextAlign.start,
                      function: () {
                        customSnackBar(
                            context: context,
                            text:
                                'Your answer has been successfully registered.',
                            color: Colors.green);
                      }),
                  SizedBox(
                    height: 20.00.h,
                  ),
                  const BoldText16dark(
                    text: 'Discuss it',
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(
                    height: 20.00.h,
                  ),
                  Container(
                    width: double.infinity.w,
                    height: 2.00.h,
                    color: Colors.blueGrey.withOpacity(0.5),
                  ),
                  SizedBox(
                    height: 20.00.h,
                  ),
                  const BoldText20dark(
                    text:
                        '2- If f(x) = x^3 + 2x^2 - 4x + 1, what is the absolute minimum value of f(x)?',
                    textAlign: TextAlign.start,
                  ),
                  CustomTextButton(
                      text: '-∞',
                      function: () {
                        customSnackBar(
                            context: context,
                            text:
                                'Your answer has been successfully registered.',
                            color: Colors.green);
                      }),
                  CustomTextButton(
                      text: '-8',
                      function: () {
                        customSnackBar(
                            context: context,
                            text:
                                'Your answer has been successfully registered.',
                            color: Colors.green);
                        cubit.increaseMathExamDegree();
                      }),
                  CustomTextButton(
                      text: '1',
                      textAlign: TextAlign.start,
                      function: () {
                        customSnackBar(
                            context: context,
                            text:
                                'Your answer has been successfully registered.',
                            color: Colors.green);
                      }),
                  CustomTextButton(
                      text: '2',
                      textAlign: TextAlign.start,
                      function: () {
                        customSnackBar(
                            context: context,
                            text:
                                'Your answer has been successfully registered.',
                            color: Colors.green);
                      }),
                  SizedBox(
                    height: 20.00.h,
                  ),
                  Container(
                    width: double.infinity.w,
                    height: 2.00.h,
                    color: Colors.blueGrey.withOpacity(0.5),
                  ),
                  SizedBox(
                    height: 20.00.h,
                  ),
                  const BoldText20dark(
                    text: '3- What does the derivative represent in calculus?',
                    textAlign: TextAlign.start,
                  ),
                  CustomTextButton(
                      text: 'Slope of the tangent line',
                      function: () {
                        customSnackBar(
                            context: context,
                            text:
                                'Your answer has been successfully registered.',
                            color: Colors.green);
                        cubit.increaseMathExamDegree();
                      }),
                  CustomTextButton(
                      text: 'Area under the curve',
                      function: () {
                        customSnackBar(
                            context: context,
                            text:
                                'Your answer has been successfully registered.',
                            color: Colors.green);
                      }),
                  CustomTextButton(
                      text: 'Accumulated sum',
                      textAlign: TextAlign.start,
                      function: () {
                        customSnackBar(
                            context: context,
                            text:
                                'Your answer has been successfully registered.',
                            color: Colors.green);
                      }),
                  CustomTextButton(
                      text: 'Average value',
                      textAlign: TextAlign.start,
                      function: () {
                        customSnackBar(
                            context: context,
                            text:
                                'Your answer has been successfully registered.',
                            color: Colors.green);
                      }),
                  SizedBox(
                    height: 20.00.h,
                  ),
                  Container(
                    width: double.infinity.w,
                    height: 2.00.h,
                    color: Colors.blueGrey.withOpacity(0.5),
                  ),
                  SizedBox(
                    height: 20.00.h,
                  ),
                  const BoldText20dark(
                    text:
                        '4- What is the derivative of the constant function f(x) = 7?',
                    textAlign: TextAlign.start,
                  ),
                  CustomTextButton(
                      text: '0',
                      function: () {
                        customSnackBar(
                            context: context,
                            text:
                                'Your answer has been successfully registered.',
                            color: Colors.green);
                        cubit.increaseMathExamDegree();
                      }),
                  CustomTextButton(
                      text: '7',
                      function: () {
                        customSnackBar(
                            context: context,
                            text:
                                'Your answer has been successfully registered.',
                            color: Colors.green);
                      }),
                  CustomTextButton(
                      text: '1',
                      textAlign: TextAlign.start,
                      function: () {
                        customSnackBar(
                            context: context,
                            text:
                                'Your answer has been successfully registered.',
                            color: Colors.green);
                      }),
                  CustomTextButton(
                      text: '-7',
                      textAlign: TextAlign.start,
                      function: () {
                        customSnackBar(
                            context: context,
                            text:
                                'Your answer has been successfully registered.',
                            color: Colors.green);
                      }),
                  SizedBox(
                    height: 20.00.h,
                  ),
                  Container(
                    width: double.infinity.w,
                    height: 2.00.h,
                    color: Colors.blueGrey.withOpacity(0.5),
                  ),
                  SizedBox(
                    height: 20.00.h,
                  ),
                  const BoldText20dark(
                    text: '5- If f(x) = 4x^3 - 2x^2 + 5x, what is f\'(x)? ',
                    textAlign: TextAlign.start,
                  ),
                  CustomTextButton(
                      text: '12x^2 - 4x + 5',
                      function: () {
                        customSnackBar(
                            context: context,
                            text:
                                'Your answer has been successfully registered.',
                            color: Colors.green);
                      }),
                  CustomTextButton(
                      text: '6x^2 - 2x + 5',
                      function: () {
                        customSnackBar(
                            context: context,
                            text:
                                'Your answer has been successfully registered.',
                            color: Colors.green);
                      }),
                  CustomTextButton(
                      text: '12x^2 - 4x',
                      textAlign: TextAlign.start,
                      function: () {
                        customSnackBar(
                            context: context,
                            text:
                                'Your answer has been successfully registered.',
                            color: Colors.green);
                        cubit.increaseMathExamDegree();
                      }),
                  CustomTextButton(
                      text: '6x^2 - 2x',
                      textAlign: TextAlign.start,
                      function: () {
                        customSnackBar(
                            context: context,
                            text:
                                'Your answer has been successfully registered.',
                            color: Colors.green);
                      }),
                  SizedBox(
                    height: 20.00.h,
                  ),
                  Container(
                    width: double.infinity.w,
                    height: 2.00.h,
                    color: Colors.blueGrey.withOpacity(0.5),
                  ),
                  SizedBox(
                    height: 20.00.h,
                  ),
                  const BoldText20dark(
                    text: '6- If g(x) = 2x + 3, what is g\'(x)? ',
                    textAlign: TextAlign.start,
                  ),
                  CustomTextButton(
                      text: '2',
                      function: () {
                        customSnackBar(
                            context: context,
                            text:
                                'Your answer has been successfully registered.',
                            color: Colors.green);
                        cubit.increaseMathExamDegree();
                      }),
                  CustomTextButton(
                      text: '3',
                      function: () {
                        customSnackBar(
                            context: context,
                            text:
                                'Your answer has been successfully registered.',
                            color: Colors.green);
                      }),
                  CustomTextButton(
                      text: '2x ',
                      textAlign: TextAlign.start,
                      function: () {
                        customSnackBar(
                            context: context,
                            text:
                                'Your answer has been successfully registered.',
                            color: Colors.green);
                      }),
                  CustomTextButton(
                      text: '2x + 3',
                      textAlign: TextAlign.start,
                      function: () {
                        customSnackBar(
                            context: context,
                            text:
                                'Your answer has been successfully registered.',
                            color: Colors.green);
                      }),
                  SizedBox(
                    height: 100.00.h,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: CustomButton(
                        text: 'Submit',
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const WaitResultAiExam(),
                            ),
                          );
                        }),
                  ),
                  SizedBox(
                    height: 20.00.h,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class WaitResultMathExam extends StatefulWidget {
  const WaitResultMathExam({super.key});

  @override
  _WaitResultMathExamState createState() => _WaitResultMathExamState();
}

class _WaitResultMathExamState extends State<WaitResultMathExam> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 20), () {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => const AiResult()),
        (Route<dynamic> route) => false,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/wait_result.gif'),
            SizedBox(
              height: 20.00.h,
            ),
            const BoldText20dark(
              text: 'Congratulations you finished the exam',
            ),
          ],
        ),
      ),
    );
  }
}

class MathResult extends StatelessWidget {
  const MathResult({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<WorkAppCubit, WorkAppState>(
      listener: (BuildContext context, WorkAppState state) {},
      builder: (BuildContext context, WorkAppState state) {
        var cubit = context.read<WorkAppCubit>();
        return Scaffold(
          body: SafeArea(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const ExtraBoldText25dark(text: 'Your result:'),
                  ExtraBoldText25dark(text: '${cubit.mathExamDegree}/ 6'),
                  SizedBox(
                    height: 50.00.h,
                  ),
                  CustomButton(
                    text: 'Back',
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeScreen()),
                        (Route<dynamic> route) => false,
                      );
                      cubit.aiExamDegree = 0;
                    },
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
