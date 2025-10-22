import 'package:flutter/material.dart';
import 'package:sanberapp71/get_started.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: GetStarted());
  }
}

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    print('Direbuild Ulang');
    return Scaffold(
      appBar: AppBar(title: Text('Counter Page')),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                counter++;
                setState(() {});
                print('Nilai Counter $counter');
              },
              child: Icon(Icons.add),
            ),
            SizedBox(width: 15),
            Text('Counter : $counter', style: TextStyle(fontSize: 20)),
            SizedBox(width: 15),

            InkWell(
              onTap: () {
                counter--;
                setState(() {});

                print('Nilai Counter $counter');
              },
              child: Icon(Icons.remove),
            ),
          ],
        ),
      ),
    );
  }
}
