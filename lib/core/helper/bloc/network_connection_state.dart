part of 'network_connection_bloc.dart';

@freezed
class NetworkConnectionState with _$NetworkConnectionState {
  const factory NetworkConnectionState.initial() = Initial;
  const factory NetworkConnectionState.connectionSuccess() = ConnectionSuccess;
  const factory NetworkConnectionState.connectionFailure() = ConnectionFailure;
}
