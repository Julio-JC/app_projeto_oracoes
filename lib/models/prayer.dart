import 'package:app_projeto_oracoes/global/constants.dart';

class Prayer {
  Prayer({
    required this.prayerTitle,
    required this.prayerAuthor,
    required this.prayerText,
    required this.latimTitle,
    required this.latimText,
    required this.inLatim,
    this.textSize = Constants.textSize,
    this.titleSize = Constants.titleSize,
  });
  String prayerTitle;
  String prayerAuthor;
  String prayerText;
  String latimTitle;
  String latimText;
  String inLatim;
  double textSize;
  double titleSize;

  Map<String, dynamic> toJson() {
    return {
      'textSize': textSize,
      'tileSize': titleSize,
    };
  }
}
