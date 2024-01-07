import 'package:flutter/foundation.dart';

class DevicePlatforms{
  // check if platform is mobile
  static bool get isMobile => ((defaultTargetPlatform == TargetPlatform.iOS)
      || (defaultTargetPlatform == TargetPlatform.android));
  // check if platform is desktop
  static bool get isDesktop => ((defaultTargetPlatform == TargetPlatform.macOS)
      || (defaultTargetPlatform == TargetPlatform.windows)
      || (defaultTargetPlatform == TargetPlatform.linux));
  // check if application is running on desktop browser
  static bool get isDesktopBrowser => (kIsWeb &&
      (defaultTargetPlatform == TargetPlatform.windows ||
          defaultTargetPlatform == TargetPlatform.macOS
          || defaultTargetPlatform == TargetPlatform.linux));
  // check if application is running on mobile browser
  static bool get isMobileBrowser => (kIsWeb
      && (defaultTargetPlatform == TargetPlatform.iOS
          || defaultTargetPlatform == TargetPlatform.android));
  // check if application is running on mac browser
  static bool get isBrowserOnMac => (kIsWeb &&
      (defaultTargetPlatform == TargetPlatform.macOS));
  // check if application is running on windows browser
  static bool get isBrowserOnWindows => (kIsWeb &&
      (defaultTargetPlatform == TargetPlatform.windows));
  // check if application is running on linux browser
  static bool get isBrowserOnLinux => (kIsWeb &&
      (defaultTargetPlatform == TargetPlatform.linux));
  // check if application is running on android browser
  static bool get isBrowserOnAndroid => (kIsWeb &&
      (defaultTargetPlatform == TargetPlatform.android));
  // check if application is running on ios browser
  static bool get isBrowserOnIos => (kIsWeb &&
      (defaultTargetPlatform == TargetPlatform.iOS));
  // check if application is running on android
  static bool get isOnAndroid => (defaultTargetPlatform == TargetPlatform.android);
  // check if application is running on ios
  static bool get isOnIos => (defaultTargetPlatform == TargetPlatform.android);
}