part of 'network_connection_bloc.dart';

@freezed
class NetworkConnectionEvent with _$NetworkConnectionEvent {
  const factory NetworkConnectionEvent.started() = Started;
  const factory NetworkConnectionEvent.connected() = Connected;
  const factory NetworkConnectionEvent.disConnected() = Disconnected;
}
