import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  State<SliderPage> createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double variable = 5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Slider Page")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Slider(
              min: 1, //valor mínimo, si no se define entonces es 0
              max: 15, // valor máximo, si no se define entonces es 1
              divisions: 4, //divide el slider en partes iguales
              label:
                  "${variable.toStringAsFixed(0)}", //texto que aparece sobre el slider al usar divisiones
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
          ],
        ),
      ),
    );
  }
}
