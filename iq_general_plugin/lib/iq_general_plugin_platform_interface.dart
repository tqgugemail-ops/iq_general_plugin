import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'iq_general_plugin_method_channel.dart';

abstract class IqGeneralPluginPlatform extends PlatformInterface {
  /// Constructs a IqGeneralPluginPlatform.
  IqGeneralPluginPlatform() : super(token: _token);

  static final Object _token = Object();

  static IqGeneralPluginPlatform _instance = MethodChannelIqGeneralPlugin();

  /// The default instance of [IqGeneralPluginPlatform] to use.
  ///
  /// Defaults to [MethodChannelIqGeneralPlugin].
  static IqGeneralPluginPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [IqGeneralPluginPlatform] when
  /// they register themselves.
  static set instance(IqGeneralPluginPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
