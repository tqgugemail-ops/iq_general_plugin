import 'package:flutter_test/flutter_test.dart';
import 'package:iq_general_plugin/iq_general_plugin.dart';
import 'package:iq_general_plugin/iq_general_plugin_platform_interface.dart';
import 'package:iq_general_plugin/iq_general_plugin_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockIqGeneralPluginPlatform
    with MockPlatformInterfaceMixin
    implements IqGeneralPluginPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final IqGeneralPluginPlatform initialPlatform = IqGeneralPluginPlatform.instance;

  test('$MethodChannelIqGeneralPlugin is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelIqGeneralPlugin>());
  });

  test('getPlatformVersion', () async {
    IqGeneralPlugin iqGeneralPlugin = IqGeneralPlugin();
    MockIqGeneralPluginPlatform fakePlatform = MockIqGeneralPluginPlatform();
    IqGeneralPluginPlatform.instance = fakePlatform;

    expect(await iqGeneralPlugin.getPlatformVersion(), '42');
  });
}
