import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TabCubit extends Cubit<void> {
  TabController controller;

  TabCubit(this.controller) : super(null);

  void skip() {
    controller.animateTo(controller.length - 1);
  }

  void next() {
    if (controller.index < controller.length - 1) {
      controller.animateTo(controller.index + 1);
    }
  }
}
