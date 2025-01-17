import 'package:daisy/core/config/core_strings.dart';

abstract class IApiOption {
  String get baseUrl;
  Duration get receiveTimeout;
  Duration get connectionTimeout;
}

class ApiOption implements IApiOption {
  const ApiOption(
    this.baseUrl,
    this.receiveTimeout,
    this.connectionTimeout,
  );

  ApiOption.development()
      : baseUrl = CoreStrings.devUrl,
        receiveTimeout = duration,
        connectionTimeout = duration;
  ApiOption.staging()
      : baseUrl = CoreStrings.stgUrl,
        receiveTimeout = duration,
        connectionTimeout = duration;
  ApiOption.production()
      : baseUrl = CoreStrings.prodUrl,
        receiveTimeout = duration,
        connectionTimeout = duration;

  static Duration get duration => const Duration(seconds: 10);

  @override
  final String baseUrl;
  @override
  final Duration receiveTimeout;
  @override
  final Duration connectionTimeout;
}
