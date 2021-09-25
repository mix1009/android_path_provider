# android_path_provider

[![pub package](https://img.shields.io/pub/v/android_path_provider.svg)](https://pub.dartlang.org/packages/android_path_provider)

Flutter plugin for getting Android directories. (Downloads, Movies, Pictures...). This plugin only works on Android platform.

## Usage
    void getAndroidPaths() async {
        var alarmsPath = await AndroidPathProvider.alarmsPath;
        var dcimPath = await AndroidPathProvider.dcimPath;
        var documentsPath = await AndroidPathProvider.documentsPath;
        var downloadsPath = await AndroidPathProvider.downloadsPath;
        var moviesPath = await AndroidPathProvider.moviesPath;
        var musicPath = await AndroidPathProvider.musicPath;
        var notificationsPath = await AndroidPathProvider.notificationsPath;
        var picturesPath = await AndroidPathProvider.picturesPath;
        var podcastsPath = await AndroidPathProvider.podcastsPath;
        var ringtonesPath = await AndroidPathProvider.ringtonesPath;
    }

