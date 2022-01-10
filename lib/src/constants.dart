import 'package:realtime_client/src/version.dart';

class Constants {
  static const String vsn = '1.0.0';
  static const Duration defaultTimeout = Duration(milliseconds: 10000);
  static const int wsCloseNormal = 1000;
  static const Map<String, String> defaultHeaders = {
    'X-Client-Info': 'realtime-dart/$version',
  };
}

enum SocketStates { connecting, open, closing, closed, disconnected }

enum ChannelStates { closed, errored, joined, joining, leaving }

enum ChannelEvents { close, error, join, reply, leave, heartbeat, accessToken }

extension SocketStatesName on SocketStates {
  String name() {
    return toString().split('.').last;
  }
}

extension ChannelEventsName on ChannelEvents {
  String eventName() {
    return 'phx_${toString().split('.').last}';
  }
}

class Transports {
  static const String websocket = 'websocket';
}
