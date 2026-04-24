import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class RichtextPage extends StatelessWidget {
  const RichtextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            RichText(text: TextSpan()),
          ],
        ),
      ),
    );
  }
}
