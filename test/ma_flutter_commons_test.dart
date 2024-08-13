import 'package:flutter_test/flutter_test.dart';
import 'package:ma_flutter_commons/ma_flutter_commons.dart';
import 'package:ma_flutter_commons/ma_flutter_commons_platform_interface.dart';
import 'package:ma_flutter_commons/ma_flutter_commons_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockMaFlutterCommonsPlatform
    with MockPlatformInterfaceMixin
    implements MaFlutterCommonsPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final MaFlutterCommonsPlatform initialPlatform = MaFlutterCommonsPlatform.instance;

  test('$MethodChannelMaFlutterCommons is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelMaFlutterCommons>());
  });

  test('getPlatformVersion', () async {
    MaFlutterCommons maFlutterCommonsPlugin = MaFlutterCommons();
    MockMaFlutterCommonsPlatform fakePlatform = MockMaFlutterCommonsPlatform();
    MaFlutterCommonsPlatform.instance = fakePlatform;

    expect(await maFlutterCommonsPlugin.getPlatformVersion(), '42');
  });
}
