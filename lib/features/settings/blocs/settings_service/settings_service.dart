import 'package:shared_preferences/shared_preferences.dart';

class SettingsService {
  static const _musicKey = 'music';
  static const _soundKey = 'sound';
  static const _notificationKey = 'notification';
  static const _vibrationKey = 'vibration';

  final SharedPreferences _prefs;

  SettingsService(this._prefs);

  bool getMusic() => _prefs.getBool(_musicKey) ?? false;
  bool getSound() => _prefs.getBool(_soundKey) ?? false;
  bool getNotification() => _prefs.getBool(_notificationKey) ?? false;
  bool getVibration() => _prefs.getBool(_vibrationKey) ?? false;

  Future<void> setMusic(bool value) async => _prefs.setBool(_musicKey, value);

  Future<void> setSound(bool value) async => _prefs.setBool(_soundKey, value);

  Future<void> setNotification(bool value) async =>
      _prefs.setBool(_notificationKey, value);

  Future<void> setVibration(bool value) async =>
      _prefs.setBool(_vibrationKey, value);
}
