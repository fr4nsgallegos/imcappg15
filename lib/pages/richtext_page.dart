import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class RichtextPage extends StatefulWidget {
  @override
  State<RichtextPage> createState() => _RichtextPageState();
}

class _RichtextPageState extends State<RichtextPage> {
  bool isImportant = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          isImportant = !isImportant;
          setState(() {});
        },
      ),
      appBar: AppBar(title: Text("RichtextPage")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Hola mundo!"),
            RichText(
              //widget principal
              text: TextSpan(
                //contenedor del texto
                text: "Hola ", //texto inicial
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                ), //estilo principal
                children: [
                  TextSpan(
                    //hijo1
                    text: "Mundo",
                    style: TextStyle(color: Colors.red, fontSize: 40),
                  ),
                  TextSpan(
                    //hijo2
                    text: " Desde Flutter",
                    style: TextStyle(color: Colors.blue),
                    children: [TextSpan(text: " Que tal")],
                  ),
                ],
              ),
            ),
            SizedBox(height: 32),

            // Recibo interacción del usuario en la palabra
            RichText(
              text: TextSpan(
                text: "Hac clic",
                style: TextStyle(color: Colors.black, fontSize: 30),
                children: [
                  TextSpan(
                    text: " Aquí",
                    style: TextStyle(
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        print("Texto cliceado");
                      },
                  ),
                ],
              ),
            ),
            SizedBox(height: 32),
            // Simulando subindices
            RichText(
              text: TextSpan(
                text: "H",
                style: TextStyle(color: Colors.cyan, fontSize: 50),
                children: [
                  TextSpan(
                    text: "2",
                    style: TextStyle(color: Colors.red, fontSize: 30),
                  ),
                  TextSpan(text: "O"),
                ],
              ),
            ),
            // Texto con imágenes
            RichText(
              text: TextSpan(
                text: "Texto con imágenes",
                style: TextStyle(color: Colors.orange, fontSize: 25),
                children: [
                  WidgetSpan(child: Icon(Icons.favorite, color: Colors.red)),
                  TextSpan(
                    text: " mÁS TEXTO",
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
            ),
            SizedBox(height: 32),
            // Con condicionales
            RichText(
              text: TextSpan(
                text: "Este es un texto",
                style: TextStyle(color: Colors.black),
                children: [
                  TextSpan(
                    text: isImportant ? " IMPORTANTE" : " normal",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: isImportant
                          ? FontWeight.bold
                          : FontWeight.normal,
                      color: isImportant ? Colors.red : Colors.orange,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
