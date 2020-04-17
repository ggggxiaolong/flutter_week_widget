import 'package:shared_preferences/shared_preferences.dart';
import 'package:synchronized/synchronized.dart';

class SPUtil {
  SPUtil._();

  static SharedPreferences _sp;
  static Lock _lock = Lock();

  static Future init() async {
    if (_sp == null) {
      await _lock.synchronized(() async {
        if (_sp == null) {
          _sp = await SharedPreferences.getInstance();
        }
      });
    }
  }

  static String getString(String key, {String defValue = ""}) {
    return _sp.getString(key) ?? defValue;
  }

  static void putString(String key, String value){
    _sp.setString(key, value);
  }

  static void remove(String key){
    _sp.remove(key);
  }
}
