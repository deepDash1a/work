import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:work/core/logic/shared_pref.dart';
import 'package:work/core/logic/shared_pref_keys.dart';
import 'package:work/features/business_logic/states.dart';

class WorkAppCubit extends Cubit<WorkAppState> {
  WorkAppCubit() : super(InitialWorkAppState());

// login section
  var loginFormKey = GlobalKey<FormState>();
  var loginEmailController = TextEditingController();
  var loginPasswordController = TextEditingController();

  Future login() async {
    emit(LoadingLoginWorkAppState());

    try {
      final response = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: loginEmailController.text,
        password: loginPasswordController.text,
      );

      SharedPrefService.saveData(
        key: SharedPrefKeys.userId,
        value: response.user!.uid,
      );

      print(
          'uiddddddddd ${SharedPrefService.getData(key: SharedPrefKeys.userId)}');

      emit(SuccessLoginWorkAppState());
    } catch (error) {
      emit(ErrorLoginWorkAppState(error: error.toString()));
    }
  }

// register section
  var registerFormKey = GlobalKey<FormState>();
  var registerNameController = TextEditingController();
  var registerEmailController = TextEditingController();
  var registerPhoneController = TextEditingController();
  var registerPasswordController = TextEditingController();
  var registerConfirmPasswordController = TextEditingController();

  Future register() async {
    emit(LoadingRegisterWorkAppState());

    try {
      final response =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: registerEmailController.text,
        password: registerPasswordController.text,
      );

      SharedPrefService.saveData(
          key: SharedPrefKeys.userName, value: registerNameController.text);
      SharedPrefService.saveData(
          key: SharedPrefKeys.userPhone, value: registerPhoneController.text);

      emit(SuccessRegisterWorkAppState());
    } catch (error) {
      emit(ErrorRegisterWorkAppState(error: error.toString()));
    }
  }

  // Ai Section
  int aiExamDegree = 0;

  void increaseAiExamDegree() {
    aiExamDegree++;
    emit(AiExamDegree());
  }

  // Math Section
  int mathExamDegree = 0;

  void increaseMathExamDegree() {
    mathExamDegree++;
    emit(MathExamDegree());
  }
}
