import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ma_flutter_commons/ma_flutter_commons_method_channel.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  MethodChannelMaFlutterCommons platform = MethodChannelMaFlutterCommons();
  const MethodChannel channel = MethodChannel('ma_flutter_commons');

  setUp(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(
      channel,
      (MethodCall methodCall) async {
        return '42';
      },
    );
  });

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(channel, null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
