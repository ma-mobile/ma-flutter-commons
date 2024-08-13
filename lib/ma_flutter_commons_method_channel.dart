import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'ma_flutter_commons_platform_interface.dart';

/// An implementation of [MaFlutterCommonsPlatform] that uses method channels.
class MethodChannelMaFlutterCommons extends MaFlutterCommonsPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('ma_flutter_commons');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
