import 'dart:async';

import 'package:flutter/services.dart';

class AndroidPathProvider {
  static const MethodChannel _channel =
      const MethodChannel('android_path_provider');

  static Future<String> get alarmsPath async {
    final String version = await _channel.invokeMethod('getAlarmsPath');
    return version;
  }

  // static Future<String> get audiobooksPath async {
  //   final String version = await _channel.invokeMethod('getAudiobooksPath');
  //   return version;
  // }

  static Future<String> get dcimPath async {
    final String version = await _channel.invokeMethod('getDCIMPath');
    return version;
  }

  static Future<String> get documentsPath async {
    final String version = await _channel.invokeMethod('getDocumentsPath');
    return version;
  }

  static Future<String> get downloadsPath async {
    final String version = await _channel.invokeMethod('getDownloadsPath');
    return version;
  }

  static Future<String> get moviesPath async {
    final String version = await _channel.invokeMethod('getMoviesPath');
    return version;
  }

  static Future<String> get musicPath async {
    final String version = await _channel.invokeMethod('getMusicPath');
    return version;
  }

  static Future<String> get notificationsPath async {
    final String version = await _channel.invokeMethod('getNotificationsPath');
    return version;
  }

  static Future<String> get picturesPath async {
    final String version = await _channel.invokeMethod('getPicturesPath');
    return version;
  }

  static Future<String> get podcastsPath async {
    final String version = await _channel.invokeMethod('getPodcastsPath');
    return version;
  }

  static Future<String> get ringtonesPath async {
    final String version = await _channel.invokeMethod('getRingtonesPath');
    return version;
  }

  // static Future<String> get screenshotsPath async {
  //   final String version = await _channel.invokeMethod('getScreenshotsPath');
  //   return version;
  // }
}
