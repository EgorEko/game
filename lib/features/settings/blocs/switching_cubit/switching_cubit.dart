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

  void switchMusic(bool value) {
    emit(state.copyWith(music: value));
  }

  void switchSound(bool value) {
    emit(state.copyWith(sound: value));
  }

  void switchNotification(bool value) {
    emit(state.copyWith(notification: value));
  }

  void switchVibration(bool value) {
    emit(state.copyWith(vibration: value));
  }

  Future<void> save() async {
    final music = !state.music;
    final sound = !state.sound;
    final notification = !state.notification;
    final vibration = !state.vibration;
    await _settingsService.setMusic(music);
    await _settingsService.setSound(sound);
    await _settingsService.setNotification(notification);
    await _settingsService.setVibration(vibration);
  }
}
