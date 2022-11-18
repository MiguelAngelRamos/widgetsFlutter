import 'package:flutter/material.dart';
import 'package:intro_widgets/pages/counter/counter_page.dart';
import 'package:intro_widgets/pages/timer/timer_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      // home: const CounterPage(initialValue: 45)
      // home: const TimerPage()
      home: const HomePage()
    );
  }
}

