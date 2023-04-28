import 'package:app_projeto_oracoes/global/string_constants.dart';
import 'package:app_projeto_oracoes/models/prayer.dart';
import 'package:flutter/material.dart';

class PrayerPage extends StatelessWidget {
  const PrayerPage({super.key, required this.prayer});
  final Prayer prayer;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            '${StringConstants.titleAppBarPrayer}: ${prayer.prayerTitle} ',
            style: TextStyle(
              color: Colors.amber[100],
              fontSize: 18,
            ),
          ),
          backgroundColor: Colors.black,
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                child: Column(
                  children: [
                    Text(
                      prayer.prayerTitle,
                      style: const TextStyle(
                        fontFamily: 'Playfair_Display',
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      prayer.prayerAuthor,
                      style: TextStyle(
                        fontFamily: 'Playfair_Display',
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
                prayer.prayerText,
                style: const TextStyle(
                  fontFamily: 'Playfair_Display',
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                prayer.inLatim,
                style: const TextStyle(
                  color: Colors.red,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Center(
                child: Text(
                  prayer.latimTitle,
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
                prayer.latimText,
                style: const TextStyle(
                  fontFamily: 'Playfair_Display',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
