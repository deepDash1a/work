import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:work/core/logic/bloc_observer.dart';
import 'package:work/core/logic/shared_pref.dart';
import 'package:work/core/logic/shared_pref_keys.dart';
import 'package:work/core/routes/app_router.dart';
import 'package:work/core/routes/routes.dart';
import 'package:work/features/business_logic/cubit.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  Bloc.observer = MyBlocObserver();
  await SharedPrefService.init();
  runApp(
    WorkShop(
      appRouter: AppRouter(),
    ),
  );
}

class WorkShop extends StatelessWidget {
  WorkShop({super.key, required this.appRouter});

  AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: BlocProvider(
        create: (context) => WorkAppCubit(),
        child: MaterialApp(
          title: 'Work Shop',
          theme: ThemeData(
            scaffoldBackgroundColor: Colors.white,
            colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.blueGrey,
            ),
            useMaterial3: true,
          ),
          initialRoute: getStart(),
          onGenerateRoute: appRouter.generateRoute,
        ),
      ),
    );
  }

  String getStart() {
    if (SharedPrefService.getData(
          key: SharedPrefKeys.userId,
        ) !=
        null) {
      return Routes.homeScreen;
    }
    return Routes.startScreen;
  }
}
