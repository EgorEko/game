import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'loading_state.dart';

class LoadingCubit extends Cubit<LoadingState> {
  LoadingCubit()
    : super(LoadingState(progress: 0, percent: 0, isLoading: false));

  Timer? _timer;
  static const double _animationSpeed = 0.01;
  static const Duration _updateDuration = Duration(milliseconds: 16);

  void startAnimation() {
    _timer?.cancel();
    emit(state.copyWith(isLoading: true));
    _timer = Timer.periodic(_updateDuration, (timer) {
      double newProgress = state.progress! + _animationSpeed;
      double normalizedProgress = (newProgress + 1.0) / 2.0;
      int newPercent = (normalizedProgress * 100).toInt();

      if (newProgress >= 1.0) {
        stopAnimation();
        emit(state.copyWith(progress: 1.0, percent: 100, isLoading: false));
        return;
      }

      emit(state.copyWith(progress: newProgress, percent: newPercent));
    });
  }

  void stopAnimation() {
    _timer?.cancel();
  }

  @override
  Future<void> close() {
    _timer?.cancel();
    return super.close();
  }
}
