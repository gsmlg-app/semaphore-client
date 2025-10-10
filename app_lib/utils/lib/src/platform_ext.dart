import 'dart:io';

/// Platform extension utilities
class PlatformExt {
  static bool get isDesktop => !isMobile;
  
  static bool get isMobile => isIOS || isAndroid;
  
  static bool get isIOS => Platform.isIOS;
  
  static bool get isAndroid => Platform.isAndroid;
  
  static bool get isWindows => Platform.isWindows;
  
  static bool get isMacOS => Platform.isMacOS;
  
  static bool get isLinux => Platform.isLinux;
  
  static bool get isWeb => identical(0, 0.0);
}