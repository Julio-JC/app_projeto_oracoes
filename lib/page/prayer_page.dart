import 'package:app_projeto_oracoes/componets/text/custom_text_component.dart';
import 'package:app_projeto_oracoes/global/constants.dart';
import 'package:app_projeto_oracoes/models/prayer.dart';
import 'package:flutter/material.dart';

class PrayerPage extends StatefulWidget {
  const PrayerPage({super.key, required this.prayer});
  final Prayer prayer;

  @override
  State<PrayerPage> createState() => _PrayerPageState();
}

class _PrayerPageState extends State<PrayerPage> {
  ValueNotifier<double> textSize = ValueNotifier<double>(Constants.textSize);
  ValueNotifier<double> titleSize = ValueNotifier<double>(Constants.titleSize);
  bool showSlider = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            '${Constants.titleAppBarPrayer}: ${widget.prayer.prayerTitle}',
            style: TextStyle(
              color: Colors.amber[100],
              fontSize: Constants.textsSizeAppBar,
            ),
          ),
          backgroundColor: Colors.black,
          actions: <Widget>[
            TextButton(
              onPressed: () {
                setState(() {
                  showSlider = !showSlider;
                });
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'A',
                      style: TextStyle(
                        color: Colors.amber[100],
                      ),
                    ),
                    Text(
                      'A',
                      style: TextStyle(
                        fontSize: Constants.textsSizeAppBar,
                        color: Colors.amber[100],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        body: Container(
          padding: const EdgeInsets.all(20),
          decoration: const BoxDecoration(
            image: DecorationImage(
                opacity: 0.6,
                image: AssetImage(
                  'assets/images/wallpaper.jpg',
                ),
                fit: BoxFit.cover),
          ),
          child: Stack(children: <Widget>[
            ListView(children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Center(
                    child: Column(
                      children: [
                        CustomTextComponent(
                          text: widget.prayer.prayerTitle,
                          textSize: titleSize,
                          fontFamily: 'Playfair_Display',
                          fontWeight: FontWeight.bold,
                          textAlign: TextAlign.center,
                        ),
                        CustomTextComponent(
                          text: widget.prayer.prayerAuthor,
                          textSize: textSize,
                          fontFamily: 'Playfair_Display',
                          color: Colors.red[800],
                          fontWeight: FontWeight.bold,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  CustomTextComponent(
                    text: widget.prayer.prayerText,
                    textSize: textSize,
                    fontFamily: 'Playfair_Display',
                    fontWeight: FontWeight.w600,
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  CustomTextComponent(
                    text: widget.prayer.inLatim,
                    textSize: textSize,
                    color: Colors.red,
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Center(
                    child: CustomTextComponent(
                      text: widget.prayer.latimTitle,
                      textSize: titleSize,
                      fontFamily: 'Playfair_Display',
                      fontWeight: FontWeight.w800,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  CustomTextComponent(
                    text: widget.prayer.latimText,
                    textSize: textSize,
                    fontFamily: 'Playfair_Display',
                    fontWeight: FontWeight.w600,
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ]),
            if (showSlider)
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 100),
                    color: Colors.white,
                    child: Slider(
                      activeColor: Colors.orange[200],
                      inactiveColor: Colors.grey[300],
                      value: textSize.value,
                      onChanged: (double newSize) {
                        setState(() {
                          textSize.value = newSize;
                          titleSize.value = newSize;
                        });
                      },
                      min: 10.0,
                      max: 20.0,
                    ),
                  ),
                ],
              )
          ]),
        ),
      ),
    );
  }
}
