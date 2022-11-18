import 'dart:async';
import 'package:flutter/material.dart';
// importM
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _showTimer = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            if(_showTimer)
            const TimerView()
          ],
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
         _showTimer = !_showTimer;
         setState(() {});
      },
    ),
  );
}
}
// statefulW
class TimerView extends StatefulWidget {

  const TimerView({super.key});

  @override
  State<TimerView> createState() {
    return _TimerViewState();
  }
}

class _TimerViewState extends State<TimerView> {

  int _tiempo = 0;
  late Timer _timer;

  @override
  void initState() {
    print("Se ejecuta el initState: Iniciamos el valor del Estado...");
    super.initState();
    //* vamos a crear un código que se va ejecutar cada segundo y va incrementar el contador automaticamente
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      _tiempo++; //* _tiempo = _tiempo + 1;
      setState((){});
      // if(_tiempo >= 10) {
      //   timer.cancel();
      // }
    });
  }

  @override
  void dispose() {
    print("Se ejecuta el dispose y libera los recursos");
    //* antes del super.dispose(), es cuando debemos liberar los recursos
    _timer.cancel();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
   return Text("$_tiempo", style: const TextStyle(fontSize: 50));
  }
}