import 'package:flutter/material.dart';

class TextPage {
  late Widget textWidget;

  Widget tituloDaOracao(String titulo) {
    textWidget = Text(
      titulo,
      style: const TextStyle(
        fontFamily: 'Playfair_Display',
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
    );
    return textWidget;
  }

  Widget autorDaOracao(String autor) {
    textWidget = Text(
      autor,
      style: TextStyle(
        fontFamily: 'Playfair_Display',
        color: Colors.red[800],
      ),
    );
    return textWidget;
  }

  Widget textoDaOracao(String texto) {
    textWidget = Text(
      texto,
      style: const TextStyle(
        fontFamily: 'Playfair_Display',
        fontWeight: FontWeight.w600,
      ),
    );
    return textWidget;
  }

  Widget tituloEmLatim(String titulo) {
    textWidget = Text(
      titulo,
      style: const TextStyle(
        fontFamily: 'Playfair_Display',
        fontSize: 16,
        fontWeight: FontWeight.w800,
      ),
    );
    return textWidget;
  }

  Widget textoEmLatim(String texto) {
    textWidget = Text(
      texto,
      style: const TextStyle(
        fontFamily: 'Playfair_Display',
        fontWeight: FontWeight.w600,
      ),
    );
    return textWidget;
  }
}
