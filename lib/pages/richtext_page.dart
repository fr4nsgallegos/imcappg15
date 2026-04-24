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
              text: TextSpan(
                text: "Hola ",
                style: TextStyle(color: Colors.black, fontSize: 25),
                children: [
                  TextSpan(
                    text: "Mundo",
                    style: TextStyle(color: Colors.red, fontSize: 40),
                  ),
                  TextSpan(
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
