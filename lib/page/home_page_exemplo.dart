import 'package:flutter/material.dart';

class HomePageExemplo extends StatefulWidget {
  const HomePageExemplo({super.key});

  @override
  State<HomePageExemplo> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePageExemplo> {
  bool showSlider = false;
  double sliderValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exemplo de Slider'),
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              setState(() {
                showSlider = !showSlider;
              });
            },
          ),
        ],
      ),
      body: Column(
        children: [
          if (showSlider)
            Container(
              padding: EdgeInsets.all(16.0),
              child: Slider(
                value: sliderValue,
                onChanged: (newValue) {
                  setState(() {
                    sliderValue = newValue;
                  });
                },
                min: 0.0,
                max: 100.0,
              ),
            ),
          Expanded(
            child: Center(
              child: Text('Conteúdo principal'),
            ),
          ),
        ],
      ),
    );
  }
}
