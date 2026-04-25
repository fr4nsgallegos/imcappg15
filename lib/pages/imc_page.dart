import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:imcappg15/models/imc_model.dart';

class ImcPage extends StatefulWidget {
  @override
  State<ImcPage> createState() => _ImcPageState();
}

class _ImcPageState extends State<ImcPage> {
  double altura = 1.3, peso = 40;
  double imcResult = 0;
  ImcModel? selectedImcModel;

  double calcularIMC() {
    double calculo = peso / (altura * altura);
    return double.parse(calculo.toStringAsFixed(2));
  }

  Widget _buildSlider({
    required double value,
    required bool isAltura,
    required Function(double) onChanged,
  }) {
    return Column(
      children: [
        Text(isAltura ? "Altura" : "Peso"),
        RichText(
          text: TextSpan(
            text: value.toStringAsFixed(1),
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            children: [
              TextSpan(
                text: " ${isAltura ? ' m' : ' kg'}.",
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        ),

        Slider(
          min: isAltura ? 1.3 : 40,
          max: isAltura ? 2.1 : 130,
          value: value,
          onChanged: onChanged,
        ),
      ],
    );
  }

  void imcResultSelected() {
    if (imcResult > 0 && imcResult < 18.5) {
      selectedImcModel = imcModelList[0];
    } else if (imcResult >= 18.5 && imcResult <= 24.9) {
      selectedImcModel = imcModelList[1];
    } else if (imcResult >= 25 && imcResult < 30) {
      selectedImcModel = imcModelList[2];
    } else {
      selectedImcModel = imcModelList[3];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff4157B2),
        foregroundColor: Colors.white,
        title: Text("Calculadora IMC"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildSlider(
              isAltura: true,
              value: altura,
              onChanged: (v) => setState(() {
                altura = v;
              }),
            ),
            _buildSlider(
              value: peso,
              isAltura: false,
              onChanged: (v) => setState(() {
                peso = v;
              }),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                width: double.infinity,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {
                    imcResult = calcularIMC();
                    imcResultSelected();
                    setState(() {});
                  },
                  child: Text("Calcular"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff2E90F5),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ),
            ),
            Text(
              imcResult.toString(),
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            Text(
              selectedImcModel?.title ?? "-",
              style: TextStyle(fontSize: 20),
            ),
            Text(selectedImcModel?.recomendation ?? "-"),
            SizedBox(height: 32),
            selectedImcModel == null
                ? Text("Realiza el calculo para ver el resultado")
                : SvgPicture.asset(
                    "assets/images/${selectedImcModel!.pathImage}.svg",
                    width: 150,
                  ),
          ],
        ),
      ),
    );
  }
}
