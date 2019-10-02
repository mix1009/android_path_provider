import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:android_path_provider/android_path_provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _alarmsPath = 'Unknown';
  // String _audiobooksPath = 'Unknown';
  String _dcimPath = 'Unknown';
  String _documentsPath = 'Unknown';
  String _downloadsPath = 'Unknown';
  String _moviesPath = 'Unknown';
  String _musicPath = 'Unknown';
  String _notificationsPath = 'Unknown';
  String _picturesPath = 'Unknown';
  String _podcastsPath = 'Unknown';
  String _ringtonesPath = 'Unknown';
  // String _screenshotsPath = 'Unknown';

  @override
  void initState() {
    super.initState();
    initAndroidPaths();
  }

  Future<void> initAndroidPaths() async {
    String alarmsPath;
    // String audiobooksPath;
    String dcimPath;
    String documentsPath;
    String downloadsPath;
    String moviesPath;
    String musicPath;
    String notificationsPath;
    String picturesPath;
    String podcastsPath;
    String ringtonesPath;
    // String screenshotsPath;

    try {
      alarmsPath = await AndroidPathProvider.alarmsPath;
      // audiobooksPath = await AndroidPathProvider.audiobooksPath;
      dcimPath = await AndroidPathProvider.dcimPath;
      documentsPath = await AndroidPathProvider.documentsPath;
      downloadsPath = await AndroidPathProvider.downloadsPath;
      moviesPath = await AndroidPathProvider.moviesPath;
      musicPath = await AndroidPathProvider.musicPath;
      notificationsPath = await AndroidPathProvider.notificationsPath;
      picturesPath = await AndroidPathProvider.picturesPath;
      podcastsPath = await AndroidPathProvider.podcastsPath;
      ringtonesPath = await AndroidPathProvider.ringtonesPath;
      // screenshotsPath = await AndroidPathProvider.screenshotsPath;
    } on PlatformException {}

    if (!mounted) return;

    setState(() {
      _alarmsPath = alarmsPath;
      // _audiobooksPath = audiobooksPath;
      _dcimPath = dcimPath;
      _documentsPath = documentsPath;
      _downloadsPath = downloadsPath;
      _moviesPath = moviesPath;
      _musicPath = musicPath;
      _notificationsPath = notificationsPath;
      _picturesPath = picturesPath;
      _podcastsPath = podcastsPath;
      _ringtonesPath = ringtonesPath;
      // _screenshotsPath = screenshotsPath;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('android_path_provider'),
        ),
        body: Column(
          children: <Widget>[
            Center(
              child: Text('alarmsPath: $_alarmsPath'),
            ),
            // Center(
            //   child: Text('audiobooksPath: $_audiobooksPath'),
            // ),
            Center(
              child: Text('dcimPath: $_dcimPath'),
            ),
            Center(
              child: Text('documentsPath: $_documentsPath'),
            ),
            Center(
              child: Text('downloadsPath: $_downloadsPath'),
            ),
            Center(
              child: Text('moviesPath: $_moviesPath'),
            ),
            Center(
              child: Text('musicPath: $_musicPath'),
            ),
            Center(
              child: Text('notificationsPath: $_notificationsPath'),
            ),
            Center(
              child: Text('picturesPath: $_picturesPath'),
            ),
            Center(
              child: Text('podcastsPath: $_podcastsPath'),
            ),
            Center(
              child: Text('ringtonesPath: $_ringtonesPath'),
            ),
            // Center(
            //   child: Text('screenshotsPath: $_screenshotsPath'),
            // ),
          ],
        ),
      ),
    );
  }
}
