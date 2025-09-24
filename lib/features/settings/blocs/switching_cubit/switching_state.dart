part of 'switching_cubit.dart';

class SwitchingState extends Equatable {
  const SwitchingState({
    required this.music,
    required this.sound,
    required this.notification,
    required this.vibration,
  });

  final bool music;
  final bool sound;
  final bool notification;
  final bool vibration;

  @override
  List<Object?> get props => [music, sound, notification, vibration];

  SwitchingState copyWith({
    bool? music,
    bool? sound,
    bool? notification,
    bool? vibration,
  }) {
    return SwitchingState(
      music: music ?? this.music,
      sound: sound ?? this.sound,
      notification: notification ?? this.notification,
      vibration: notification ?? this.notification,
    );
  }
}
