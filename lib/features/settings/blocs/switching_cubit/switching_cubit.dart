import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../settings_service/settings_service.dart';

part 'switching_state.dart';

class SwitchingCubit extends Cubit<SwitchingState> {
  final SettingsService _settingsService = GetIt.I<SettingsService>();

  SwitchingCubit()
    : super(
        SwitchingState(
          music: GetIt.I<SettingsService>().getMusic(),
          sound: GetIt.I<SettingsService>().getSound(),
          notification: GetIt.I<SettingsService>().getNotification(),
          vibration: GetIt.I<SettingsService>().getVibration(),
        ),
      );

  void switchMusic() {
    final newValue = !state.music;
    emit(state.copyWith(music: newValue));
    _settingsService.setMusic(newValue);
  }

  void switchSound() {
    final newValue = !state.sound;
    emit(state.copyWith(sound: newValue));
    _settingsService.setSound(newValue);
  }

  void switchNotification() {
    final newValue = !state.notification;
    emit(state.copyWith(notification: newValue));
    _settingsService.setNotification(newValue);
  }

  void switchVibration() {
    final newValue = !state.vibration;
    emit(state.copyWith(vibration: newValue));
    _settingsService.setVibration(newValue);
  }
}
