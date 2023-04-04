import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_connection_event.dart';
part 'network_connection_state.dart';
part 'network_connection_bloc.freezed.dart';

class NetworkConnectionBloc
    extends Bloc<NetworkConnectionEvent, NetworkConnectionState> {
  StreamSubscription? _subscription;
  NetworkConnectionBloc() : super(const Initial()) {
    _subscription = Connectivity().onConnectivityChanged.listen(
      (ConnectivityResult result) {
        if (result == ConnectivityResult.wifi ||
            result == ConnectivityResult.mobile) {
          add(const Connected());
        } else {
          add(const Disconnected());
        }
      },
    );

    on<Connected>((event, emit) {
      emit(const ConnectionSuccess());
    });
    on<Disconnected>((event, emit) {
      emit(const ConnectionFailure());
    });
  }
  @override
  Future<void> close() {
    _subscription!.cancel();
    return super.close();
  }
}
