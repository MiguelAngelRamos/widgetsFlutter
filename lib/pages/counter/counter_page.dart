import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
 final int initialValue;

const CounterPage({super.key, this.initialValue = 0});

//* StatefulWidget es una clase abstracta lo que significa que necesitamos sobreescribir los métodos que no tienen implementacion
 //* createState necesita retornar un dato de tipo state y este lo obtenemos de la clase _CounterPageState
 @override
 State<CounterPage> createState() {
  // return new _CounterPageState(); //* es un instancia de clase no es necesario en new
  return _CounterPageState(); //* retornamos una instancia de CounterPageState y esta instancia sera el estado de nuestro Statefulwidget
 }
}
//* Nuestro state esta vincunlado a nuestro "CounterPage"
class _CounterPageState extends State<CounterPage> {
  late int counter; //* la variable de contador

  @override
  void initState() {
    //* Es llamado una unica vez, cuando es creado el estado y cuando nuestro widget es insertado en el arbol
    super.initState();
    print('Ejecutando Init State');
    //* Cualquier clase que extiende de "State", en este caso seria "_CounterPageState", puede utilizar la propiedad "widget"
    // widget.initialValue
    counter = widget.initialValue;
  }
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
          print("presionado el boton en el funcion onPressed()");
          //* setState pertenece a la clase "State", notifica los cambios del estado
          //* llama nuevamente al método build y reconstruye la vista con el nuevo del state
          setState(() { counter++;});
        },
      ),
    );
  }
}