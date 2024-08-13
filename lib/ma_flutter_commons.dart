
import 'ma_flutter_commons_platform_interface.dart';

class MaFlutterCommons {
  Future<String?> getPlatformVersion() {
    return MaFlutterCommonsPlatform.instance.getPlatformVersion();
  }
}
