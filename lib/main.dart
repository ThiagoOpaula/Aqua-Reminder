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
          color: Colors.black,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Column(
                  children: [
                    const Icon(
                      Icons.water_drop_sharp,
                      color: Colors.blue,
                    ),
                    const Text(
                      '0',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    const Text(
                      '/2000 ml',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        InkWell(
                          child: Icon(
                            Icons.add_circle,
                            color: Colors.blue,
                            size: 24,
                          ),
                        ),
                        InkWell(
                          child: Icon(
                            Icons.remove_circle,
                            color: Colors.blue,
                            size: 24,
                          ),
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 172,
                  width: 172,
                  child: CircularProgressIndicator(
                    strokeWidth: 4,
                    value: 1,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
