import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'ma_flutter_commons_method_channel.dart';

abstract class MaFlutterCommonsPlatform extends PlatformInterface {
  /// Constructs a MaFlutterCommonsPlatform.
  MaFlutterCommonsPlatform() : super(token: _token);

  static final Object _token = Object();

  static MaFlutterCommonsPlatform _instance = MethodChannelMaFlutterCommons();

  /// The default instance of [MaFlutterCommonsPlatform] to use.
  ///
  /// Defaults to [MethodChannelMaFlutterCommons].
  static MaFlutterCommonsPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [MaFlutterCommonsPlatform] when
  /// they register themselves.
  static set instance(MaFlutterCommonsPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
