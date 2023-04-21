import 'package:equatable/equatable.dart';

abstract class CubitStates extends Equatable {}

// 모든 큐빗 앱은 처음에 하나의 초기 상태를 가져야한다.
class InitialState extends CubitStates {
  @override
  // 변수를 기반으로 새 빌드를 다시 트리거하고 싶으면 변수를 설정하고, []안에 값을 넣어준다.
  List<Object?> get props => [];
}

// 초기 상태가 완료되면 새 상태(welcomepage)를 트리거한다.
class WelcomeState extends CubitStates {
  @override
  List<Object?> get props => [];
}
