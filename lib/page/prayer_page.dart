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
                // sizedLitte();
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
                        ValueListenableBuilder(
                          valueListenable: titleSize,
                          builder: (_, value, __) => Text(
                            widget.prayer.prayerTitle,
                            style: TextStyle(
                              fontFamily: 'Playfair_Display',
                              fontSize: titleSize.value,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        ValueListenableBuilder(
                          valueListenable: titleSize,
                          builder: (_, value, __) => Text(
                            widget.prayer.prayerAuthor,
                            style: TextStyle(
                              fontFamily: 'Playfair_Display',
                              fontSize: textSize.value,
                              color: Colors.red[800],
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  ValueListenableBuilder(
                    valueListenable: titleSize,
                    builder: (_, value, __) => Text(
                      widget.prayer.prayerText,
                      style: TextStyle(
                        fontFamily: 'Playfair_Display',
                        fontSize: textSize.value,
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  ValueListenableBuilder(
                    valueListenable: titleSize,
                    builder: (_, value, __) => Text(
                      widget.prayer.inLatim,
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: textSize.value,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Center(
                    child: ValueListenableBuilder(
                      valueListenable: titleSize,
                      builder: (_, value, __) => Text(
                        widget.prayer.latimTitle,
                        style: TextStyle(
                          fontFamily: 'Playfair_Display',
                          fontSize: titleSize.value,
                          fontWeight: FontWeight.w800,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  ValueListenableBuilder(
                    valueListenable: titleSize,
                    builder: (_, value, __) => Text(
                      widget.prayer.latimText,
                      style: TextStyle(
                        fontFamily: 'Playfair_Display',
                        fontSize: textSize.value,
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.justify,
                    ),
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

  // void sizedLitte() {
  //   showDialog(
  //     context: context,
  //     builder: (context) => AlertDialog(
  //       actions: [
  //         Row(
  //           mainAxisAlignment: MainAxisAlignment.center,
  //           children: [
  //             const Text('A'),
  //             const Text(
  //               'A',
  //               style: TextStyle(fontSize: 18),
  //             ),
  //             StatefulBuilder(
  //               builder: (context, state) {
  //                 return Slider(
  //                   activeColor: Colors.orange[200],
  //                   inactiveColor: Colors.grey[300],
  //                   value: textSize.value,
  //                   onChanged: (double newSize) {
  //                     state(() {});

  //                     textSize.value = newSize;
  //                     titleSize.value = newSize;
  //                   },
  //                   min: 10.0,
  //                   max: 20.0,
  //                 );
  //               },
  //             ),
  //             const Text(
  //               'A',
  //               style: TextStyle(fontSize: 18),
  //             ),
  //             const Text(
  //               'A',
  //               style: TextStyle(fontSize: 23),
  //             ),
  //           ],
  //         )
  //       ],
  //     ),
  //   );
  // }
}
