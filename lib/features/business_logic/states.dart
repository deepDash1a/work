abstract class WorkAppState {}

// login
class InitialWorkAppState extends WorkAppState {}

class LoadingLoginWorkAppState extends WorkAppState {}

class SuccessLoginWorkAppState extends WorkAppState {}

class ErrorLoginWorkAppState extends WorkAppState {
  final String error;

  ErrorLoginWorkAppState({required this.error});
}

// register
class LoadingRegisterWorkAppState extends WorkAppState {}

class SuccessRegisterWorkAppState extends WorkAppState {}

class ErrorRegisterWorkAppState extends WorkAppState {
  final String error;

  ErrorRegisterWorkAppState({required this.error});
}


class AiExamDegree extends WorkAppState {}
class MathExamDegree extends WorkAppState {}

