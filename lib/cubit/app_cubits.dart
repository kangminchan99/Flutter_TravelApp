import 'package:bloc/bloc.dart';
import 'package:travel_app/cubit/app_cubit_states.dart';
import 'package:travel_app/services/data_services.dart';

// Cubit<CubitStates> - 앱을 호출 할 수 있는 상태 유형
class AppCubits extends Cubit<CubitStates> {
  // 초기화가 완료된 다음 WelcomeState가 작동하는 방식
  AppCubits({required this.data}) : super(InitialState()) {
    emit(WelcomeState());
  }
  final DataServices data;
  late final places;
  void getData() {
    try {
      emit(LoadedState());
      places = data.getInfo();
    } catch (e) {}
  }
}
