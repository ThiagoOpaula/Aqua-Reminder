import 'package:flutter/material.dart';

class ProgressPage extends StatefulWidget {
  const ProgressPage({Key? key}) : super(key: key);

  @override
  State<ProgressPage> createState() => _ProgressPageState();
}

class _ProgressPageState extends State<ProgressPage> {
  int consumedWater = 200;

  void increment() {
    consumedWater = consumedWater >= 2000 ? 2000 : consumedWater += 200;
    setState(() {});
  }

  void decrement() {
    consumedWater = consumedWater <= 200 ? 0 : consumedWater -= 200;
    setState(() {});
  }

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
                const SizedBox(
                  height: 172,
                  width: 172,
                  child: CircularProgressIndicator(
                    strokeWidth: 4,
                    value: 1,
                    color: Colors.blue,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Icon(
                      Icons.water_drop_sharp,
                      color: Colors.blue,
                    ),
                    Text(
                      '$consumedWater',
                      style: const TextStyle(
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
                      children: [
                        InkWell(
                          onTap: () => decrement(),
                          child: const Icon(
                            Icons.remove_circle,
                            color: Colors.blue,
                            size: 28,
                          ),
                        ),
                        InkWell(
                          onTap: () => increment(),
                          child: const Icon(
                            Icons.add_circle,
                            color: Colors.blue,
                            size: 28,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
