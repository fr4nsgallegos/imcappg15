class ImcModel {
  String title;
  String recomendation;
  String pathImage;
  ImcModel(this.title, this.recomendation, this.pathImage);
}

List<ImcModel> imcModelList = [
  ImcModel(
    "Bajo Peso",
    "Se debe alimentar con los nutrientes necesarios",
    "delgadez",
  ),
  ImcModel(
    "Normal",
    "El IMC es normal, mantenen tu dieta balanceada y toma agua",
    "normal",
  ),
  ImcModel(
    "Sobrepeso",
    "Salir a correr, hacer ejercicio y comer saludable",
    "sobrepeso",
  ),
  ImcModel(
    "Obesidad",
    "Realizar una dieta estricta y comenzar a hacer ejericio",
    "obesidad",
  ),
];
