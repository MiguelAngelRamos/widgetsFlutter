import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
//* StatefulWidget es una clase abstracta lo que significa que necesitamos sobreescribir los métodos que no tienen implementacion

 //* createState necesita retornar un dato de tipo state y este lo obtenemos de la clase _CounterPageState
 @override
 State createState() {
  // return new _CounterPageState(); //* es un instancia de clase no es necesario en new
  return _CounterPageState(); //* retornamos una instancia de CounterPageState y esta instancia sera el estado de nuestro Statefulwidget
 }
}

class _CounterPageState extends State {
  int counter = 0; //* la variable de contador
  String name = "";
  @override
  Widget build(BuildContext context) {
    print("Se ejecuta el método build");
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text("$counter", style: const TextStyle(fontSize: 40)),
      ),
      floatingActionButton: FloatingActionButton(

        onPressed: () {
          counter = counter + 1;
          print("presionado el boton en el funcion onPressed()");

          //* setState pertenece a la clase "State", notifica los cambios del estado
          //* llama nuevamente al método build y reconstruye la vista con el nuevo del state
          setState(() {
            // counter = counter + 1;
            counter++;
            name = "pedro";
          });
        },
      ),
    );
  }
}