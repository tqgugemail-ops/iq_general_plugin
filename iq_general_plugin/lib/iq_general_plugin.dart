
import 'iq_general_plugin_platform_interface.dart';

class IqGeneralPlugin {
  Future<String?> getPlatformVersion() {
    return IqGeneralPluginPlatform.instance.getPlatformVersion();
  }
}
