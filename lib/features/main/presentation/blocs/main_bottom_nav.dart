import 'package:flutter_bloc/flutter_bloc.dart';

class MainBottomNavCubit extends Cubit<int> {
  MainBottomNavCubit() : super(0);

  void select(int index){
    emit(index);
  }
}
