package com.mix1009.android_path_provider


import androidx.annotation.NonNull

import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result
import android.os.Environment;

/** AndroidPathProviderPlugin */
class AndroidPathProviderPlugin: FlutterPlugin, MethodCallHandler {
  /// The MethodChannel that will the communication between Flutter and native Android
  ///
  /// This local reference serves to register the plugin with the Flutter Engine and unregister it
  /// when the Flutter Engine is detached from the Activity
  private lateinit var channel : MethodChannel

  override fun onAttachedToEngine(@NonNull flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
    channel = MethodChannel(flutterPluginBinding.binaryMessenger, "android_path_provider")
    channel.setMethodCallHandler(this)
  }
  override fun onMethodCall(@NonNull call: MethodCall, @NonNull result: Result) {
    if (call.method == "getAlarmsPath") {
      result.success(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_ALARMS).getAbsolutePath());
      // } else if (call.method == "getAudiobooksPath") {
      // result.success(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_AUDIOBOOKS).getAbsolutePath());
    } else if (call.method == "getDCIMPath") {
      result.success(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DCIM).getAbsolutePath());
    } else if (call.method == "getDocumentsPath") {
      result.success(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS).getAbsolutePath());
    } else if (call.method == "getDownloadsPath") {
      result.success(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS).getAbsolutePath());
    } else if (call.method == "getMoviesPath") {
      result.success(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_MOVIES).getAbsolutePath());
    } else if (call.method == "getMusicPath") {
      result.success(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_MUSIC).getAbsolutePath());
    } else if (call.method == "getNotificationsPath") {
      result.success(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_NOTIFICATIONS).getAbsolutePath());
    } else if (call.method == "getPicturesPath") {
      result.success(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_PICTURES).getAbsolutePath());
    } else if (call.method == "getPodcastsPath") {
      result.success(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_PODCASTS).getAbsolutePath());
    } else if (call.method == "getRingtonesPath") {
      result.success(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_RINGTONES).getAbsolutePath());
      // } else if (call.method == "getScreenshotsPath") {
      // result.success(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_SCREENSHOTS).getAbsolutePath());
    } else {
      result.notImplemented()
    }
  }


  override fun onDetachedFromEngine(@NonNull binding: FlutterPlugin.FlutterPluginBinding) {
    channel.setMethodCallHandler(null)
  }
}