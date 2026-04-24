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
          ],
        ),
      ),
    );
  }
}
