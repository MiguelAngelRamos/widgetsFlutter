import 'dart:async';
import 'package:flutter/material.dart';
// importM

// statefulW
class TimerPage extends StatefulWidget {

  const TimerPage({super.key});

  @override
  State<TimerPage> createState() {
    return _TimerPageState();
  }
}

class _TimerPageState extends State<TimerPage> {

  int _tiempo = 0;

  @override
  void initState() {
    super.initState();
    //* vamos a crear un código que se va ejecutar cada segundo y va incrementar el contador automaticamente
    Timer.periodic(const Duration(seconds: 1), (timer) {
      _tiempo++; //* _tiempo = _tiempo + 1;
      setState((){});
      if(_tiempo >= 10) {
        timer.cancel();
      }
    });
  }
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    body: Center(
      child: Text("$_tiempo", style: const TextStyle(fontSize: 50) ,)
      ),
   );
  }
}