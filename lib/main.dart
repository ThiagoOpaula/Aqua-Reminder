import 'package:aqua_reminder/widgets/progress_page.dart';
import 'package:flutter/material.dart';
import 'package:wear/wear.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Wear app',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: WatchShape(
        builder: (BuildContext context, WearShape shape, Widget? child) {
          return AmbientMode(builder: ((context, mode, child) {
            return const ProgressPage();
          }));
        },
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
