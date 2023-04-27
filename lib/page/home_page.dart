import 'package:app_projeto_oracoes/page/prayer_page.dart';
import 'package:app_projeto_oracoes/repositories/prayer_repositories.dart';
import 'package:flutter/material.dart';

import '../models/prayer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    goPrayer(Prayer prayer) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => PrayerPage(prayer: prayer),
        ),
      );
    }

    final prayer = PrayerRepository.prayers;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Orações',
            style: TextStyle(color: Colors.amber[100]),
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
            child: ListView.builder(
              itemBuilder: (context, indexPrayer) {
                return ListTile(
                  leading: const Icon(Icons.church),
                  title: Text(
                    prayer[indexPrayer].prayerTitle,
                    style: const TextStyle(
                      fontFamily: 'Playfair_Display',
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  onTap: () => goPrayer(prayer[indexPrayer]),
                );
              },
              padding: const EdgeInsets.all(10),
              itemCount: prayer.length,
            )),
      ),
    );
  }
}
