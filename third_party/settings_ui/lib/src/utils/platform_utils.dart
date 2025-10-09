import 'dart:io' show Platform;
import 'package:flutter/foundation.dart';

enum DevicePlatform {
  /// Android: <https://www.android.com/>
  android,

  /// Fuchsia: <https://fuchsia.dev/fuchsia-src/concepts>
  fuchsia,

  /// iOS: <https://www.apple.com/ios/>
  iOS,

  /// Linux: <https://www.linux.org>
  linux,

  /// macOS: <https://www.apple.com/macos>
  macOS,

  /// Windows: <https://www.windows.com>
  windows,

  /// Web
  web,

  /// Use this to specify you want to use the default device platform
  custom;

  static DevicePlatform detect() {
    if (kIsWeb) {
      return DevicePlatform.web;
    }
    if (Platform.isAndroid) {
      return DevicePlatform.android;
    }
    if (Platform.isFuchsia) {
      return DevicePlatform.fuchsia;
    }
    if (Platform.isLinux) {
      return DevicePlatform.linux;
    }
    if (Platform.isIOS) {
      return DevicePlatform.iOS;
    }
    if (Platform.isMacOS) {
      return DevicePlatform.macOS;
    }
    if (Platform.isWindows) {
      return DevicePlatform.windows;
    }
    return DevicePlatform.custom;
  }
}
