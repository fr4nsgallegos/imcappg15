import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  State<SliderPage> createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double variable = 5;
  bool isActive = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Slider Page")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // SLIDER
            Slider(
              min: 1, //valor mínimo, si no se define entonces es 0
              max: 15, // valor máximo, si no se define entonces es 1
              divisions: 4, //divide el slider en partes iguales
              label: variable.toStringAsFixed(
                0,
              ), //texto que aparece sobre el slider al usar divisiones
              activeColor: Colors.blue, //Color de la parque se rellena
              inactiveColor:
                  Colors.amber, //Colors de la parque que NO se rellena
              thumbColor: Colors.red, //Color de la bolita
              value: variable,
              onChanged: (double v) {
                print(v);
                variable = v;
                setState(() {});
              },
            ),
            // CHEKBOXLISTILE
            CheckboxListTile(
              // tileColor: Colors.red,
              value: isActive,
              title: Text("Activación del plan"),
              subtitle: Text("Plan contratado mensual S/ 80.5"),
              secondary: Icon(
                Icons.local_activity_rounded,
              ), //Espacio a la izquierda del título y subtítulo
              activeColor: Colors.red, //Color del checkbox
              checkColor: Colors.blue, //Color de la palomita
              controlAffinity: ListTileControlAffinity
                  .leading, //para que el checkbox aparezca a la izquierda
              contentPadding: EdgeInsets.all(16),
              selected: isActive, //marcar visualmente todo el widget
              dense: true, //se vuelve mas compacto
              // onChanged: null, //sirve para inabilitar el chebox y tile
              onChanged: (bool? mandarina) {
                isActive = mandarina!;
                print(isActive);
                setState(() {});
              },
            ),
          ],
        ),
      ),
    );
  }
}
