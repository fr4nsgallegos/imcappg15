import 'package:flutter/material.dart';

class ExamplePage extends StatefulWidget {
  const ExamplePage({super.key});

  @override
  State<ExamplePage> createState() => _ExamplePageState();
}

class _ExamplePageState extends State<ExamplePage> {
  double textSize = 10;
  double rojo = 0, verde = 0, azul = 0;

  Widget _buildSlider(
    String title,
    double value,
    Color color,
    Function(double) onchanged,
  ) {
    return Column(
      children: [
        Text(title),
        Slider(
          min: 0,
          max: 255,
          value: value,
          onChanged: onchanged,
          activeColor: color,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Slyder Editro")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "La noche está estrellada,y tiritan, azules, los astros, a lo lejos",
              style: TextStyle(
                // decoration: TextDecoration.lineThrough, //linea en medio
                // decoration: TextDecoration.underline, //linea abajo
                // decoration: TextDecoration.overline, //linea arriba
                decoration: TextDecoration.combine([
                  TextDecoration.lineThrough,
                  TextDecoration.underline,
                  TextDecoration.overline,
                ]),
                fontSize: textSize,
                color: Color.fromRGBO(
                  rojo.toInt(),
                  verde.toInt(),
                  azul.toInt(),
                  1,
                ),
              ),
            ),
            Slider(
              min: 5,
              max: 35,
              activeColor: Colors.black,
              value: textSize,
              onChanged: (double valor) {
                textSize = valor;
                setState(() {});
              },
            ),
            _buildSlider(
              "Color Rojo",
              rojo,
              Colors.red,
              (v) => setState(() {
                rojo = v;
              }),
            ),
            _buildSlider(
              "Color verde",
              verde,
              Colors.green,
              (v) => setState(() {
                verde = v;
              }),
            ),
            _buildSlider(
              "Color azul",
              azul,
              Colors.blue,
              (v) => setState(() {
                azul = v;
              }),
            ),
          ],
        ),
      ),
    );
  }
}
