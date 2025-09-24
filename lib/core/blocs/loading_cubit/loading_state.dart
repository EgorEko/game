part of 'loading_cubit.dart';

class LoadingState extends Equatable {
  const LoadingState({this.progress, this.percent, this.isLoading});

  final bool? isLoading;
  final double? progress;
  final int? percent;

  @override
  List<Object?> get props => [isLoading, progress, percent];

  LoadingState copyWith({double? progress, int? percent, bool? isLoading}) {
    return LoadingState(
      isLoading: isLoading ?? this.isLoading,
      progress: progress ?? this.progress,
      percent: percent ?? this.percent,
    );
  }
}
