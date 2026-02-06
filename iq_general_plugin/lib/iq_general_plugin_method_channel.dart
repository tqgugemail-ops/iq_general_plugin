import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'iq_general_plugin_platform_interface.dart';

/// An implementation of [IqGeneralPluginPlatform] that uses method channels.
class MethodChannelIqGeneralPlugin extends IqGeneralPluginPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('iq_general_plugin');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
