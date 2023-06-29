import 'package:shared_preferences/shared_preferences.dart';

class SizeRepository {
  SizeRepository() {
    SharedPreferences.getInstance().then((value) => sharedPreference = value);
  }

  late SharedPreferences sharedPreference;

  void saveTextSize(Prayer) {}
}
