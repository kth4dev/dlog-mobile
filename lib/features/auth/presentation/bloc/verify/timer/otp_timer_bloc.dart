

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'otp_timer_event.dart';
part 'otp_timer_state.dart';

class OtpTimerBloc extends Bloc<OtpTimerEvent, OtpTimerState> {
  OtpTimerBloc() : super(OtpTimerInitial()) {
    on<OtpTimerEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
