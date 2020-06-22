import 'package:flutter/material.dart';
import 'app.dart';
import 'loading.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'search.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'W-Im',
      debugShowCheckedModeBanner: false,
      theme: mDefaultTheme,
      home: LoadingPage(),
      routes: <String, WidgetBuilder>{
        "app": (BuildContext context) => App(),
        "/friends": (_) => WebviewScaffold(
              url: "https://pub.flutter-io.cn/",
              appBar: AppBar(
                title: Text("Flutter官网"),
              ),
              withZoom: true,
              withLocalStorage: true,
            ),
        "search": (BuildContext context) => Search()
      },
    );
  }
}

final ThemeData mDefaultTheme = ThemeData(
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Color(0xFFebebeb),
    cardColor: Colors.blue);
