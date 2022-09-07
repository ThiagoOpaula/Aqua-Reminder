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
            return const ActiveWatchFace();
          }));
        },
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ActiveWatchFace extends StatelessWidget {
  const ActiveWatchFace({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 220,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.blueAccent,
              Colors.blue,
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                Column(
                  children: const [
                    Text(
                      'Beba agua',
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      '0/2000 ml',
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 160,
                  width: 160,
                  child: CircularProgressIndicator(
                    strokeWidth: 4,
                    value: 0.5,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
