import 'package:app_projeto_oracoes/global/string_constants.dart';
import 'package:app_projeto_oracoes/models/prayer.dart';
import 'package:flutter/material.dart';

class PrayerPage extends StatefulWidget {
  const PrayerPage({super.key, required this.prayer});
  final Prayer prayer;

  @override
  State<PrayerPage> createState() => _PrayerPageState();
}

class _PrayerPageState extends State<PrayerPage> {
  double textSize = 14.0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            '${StringConstants.titleAppBarPrayer}: ${widget.prayer.prayerTitle}',
            style: TextStyle(
              color: Colors.amber[100],
              fontSize: 18,
            ),
          ),
          backgroundColor: Colors.black,
          actions: <Widget>[
            TextButton(
              onPressed: () {
                sizedLitte();
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: const [
                    Text('A'),
                    Text(
                      'A',
                      style: TextStyle(fontSize: 18),
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
          child: ListView(children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center(
                  child: Column(
                    children: [
                      Text(
                        widget.prayer.prayerTitle,
                        style: const TextStyle(
                          fontFamily: 'Playfair_Display',
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        widget.prayer.prayerAuthor,
                        style: TextStyle(
                          fontFamily: 'Playfair_Display',
                          fontSize: textSize,
                          color: Colors.red[800],
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  widget.prayer.prayerText,
                  style: TextStyle(
                    fontFamily: 'Playfair_Display',
                    fontSize: textSize,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  widget.prayer.inLatim,
                  style: const TextStyle(
                    color: Colors.red,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Center(
                  child: Text(
                    widget.prayer.latimTitle,
                    style: const TextStyle(
                      fontFamily: 'Playfair_Display',
                      fontSize: 16,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  widget.prayer.latimText,
                  style: const TextStyle(
                    fontFamily: 'Playfair_Display',
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }

  void sizedLitte() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('A'),
              const Text(
                'A',
                style: TextStyle(fontSize: 18),
              ),
              Slider(
                activeColor: Colors.amber,
                inactiveColor: Colors.grey,
                onChanged: (double newSize) {
                  setState(() {
                    textSize = newSize;
                  });
                  print(textSize);
                },
                value: textSize,
                min: 10.0,
                max: 25.0,
              ),
              const Text('A'),
              const Text(
                'A',
                style: TextStyle(fontSize: 18),
              ),
            ],
          )
        ],
      ),
    );
  }
}
