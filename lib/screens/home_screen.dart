import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int counter = 0;

  void incrementCounter(int p) {
    setState(() {
      counter += p;
    });
  }

  void decrementCounter(int p) {
    setState(() {
      counter -= p;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My App"),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Counter",
              style: TextStyle(fontSize: 20),
            ),

            const SizedBox(height: 20),

            Text(
              "$counter",
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium,
            ),

            const SizedBox(height: 20),


            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () => incrementCounter(1),
                      style: ElevatedButton.styleFrom(
                        fixedSize: const Size(70, 50)
                      ),
                      child: const Text("+1"),
                    ),
                    const SizedBox(width: 12),
                    ElevatedButton(
                      onPressed: () => incrementCounter(10),
                      style: ElevatedButton.styleFrom(
                        fixedSize: const Size(70, 50)
                      ),
                      child: const Text("+10"),
                    ),
                  ],
                ),

                const SizedBox(height: 12),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () => decrementCounter(1),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        fixedSize: const Size(70, 50)
                      ),
                      child: const Text("-1"),
                    ),
                    const SizedBox(width: 12),
                    ElevatedButton(
                      onPressed: () => decrementCounter(10),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        fixedSize: const Size(70, 50)
                      ),
                      child: const Text("-10"),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}