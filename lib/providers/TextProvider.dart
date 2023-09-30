import 'package:flutter/material.dart';

class TextProvider with ChangeNotifier {

  final List<String> _textos = [];

  void addText(String texto) {
    _textos.add(texto);
    notifyListeners();
  }

  void removeText(String texto) {
    _textos.remove(texto);
    notifyListeners();
  }

  void removeAll() {
    _textos.clear();
    notifyListeners();
  }

  List<String> get getTextos {
    return _textos;
  }

  int get getTextosLength {
    return _textos.length;
  }

  String getTexto(int index) {
    return _textos[index];
  }

  void updateTexto(String texto, int index) {
    _textos[index] = texto;
    notifyListeners();
  }




}
