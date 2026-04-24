import 'package:flutter/material.dart';

class ExamplePage extends StatefulWidget {
  @override
  State<ExamplePage> createState() => _ExamplePageState();
}

class _ExamplePageState extends State<ExamplePage> {
  double textSize = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Style Editor")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley",
              style: TextStyle(
                fontSize: textSize,
                color: Color.fromRGBO(100, 250, 100, 1),
              ),
            ),
            Text("Editor de tamaño"),
            Slider(
              min: 5,
              max: 35,
              value: textSize,
              onChanged: (double mandarina) {
                textSize = mandarina;
                setState(() {});
              },
            ),
            // ACTIVIDAD
            // Realizar 3 Sliders que manipulem los valores de R(red) G(green) B (blue), de modo que se modifique el color del texto a medida que voy alterando los sliders.
          ],
        ),
      ),
    );
  }
}
