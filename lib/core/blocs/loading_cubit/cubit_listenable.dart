import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CubitListenable<T> extends ChangeNotifier {
  final Cubit<T> _cubit;
  late final StreamSubscription<T> _subscription;

  CubitListenable(this._cubit) {
    _subscription = _cubit.stream.listen((_) {
      notifyListeners();
    });
  }

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}
