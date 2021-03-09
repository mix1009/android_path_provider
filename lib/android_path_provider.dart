import 'dart:async';

import 'package:flutter/services.dart';

class AndroidPathProvider {
  static const MethodChannel _channel =
      const MethodChannel('android_path_provider');

  /// get alarms path.
  static Future<String> get alarmsPath async {
    return await _channel.invokeMethod('getAlarmsPath') ?? '';
  }

  // static Future<String> get audiobooksPath async {
  //   final String version = await _channel.invokeMethod('getAudiobooksPath');
  //   return version;
  // }

  /// get DCIM path.
  static Future<String> get dcimPath async {
    return await _channel.invokeMethod('getDCIMPath') ?? '';
  }

  /// get Documents path.
  static Future<String> get documentsPath async {
    return await _channel.invokeMethod('getDocumentsPath') ?? '';
  }

  /// get Downloads path.
  static Future<String> get downloadsPath async {
    return await _channel.invokeMethod('getDownloadsPath') ?? '';
  }

  /// get Movies path.
  static Future<String> get moviesPath async {
    return await _channel.invokeMethod('getMoviesPath') ?? '';
  }

  /// get Music path.
  static Future<String> get musicPath async {
    return await _channel.invokeMethod('getMusicPath') ?? '';
  }

  /// get Notifications path.
  static Future<String> get notificationsPath async {
    return await _channel.invokeMethod('getNotificationsPath') ?? '';
  }

  /// get Pictures path.
  static Future<String> get picturesPath async {
    return await _channel.invokeMethod('getPicturesPath') ?? '';
  }

  /// get Podcasts path.
  static Future<String> get podcastsPath async {
    return await _channel.invokeMethod('getPodcastsPath') ?? '';
  }

  /// get Ringtones path.
  static Future<String> get ringtonesPath async {
    return await _channel.invokeMethod('getRingtonesPath') ?? '';
  }

  // static Future<String> get screenshotsPath async {
  //   final String version = await _channel.invokeMethod('getScreenshotsPath');
  //   return version;
  // }
}
