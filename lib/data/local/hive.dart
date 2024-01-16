import 'package:hive_flutter/hive_flutter.dart';

class HiveStorg {
  Box? box;
  Future<Box> initHive() async {
    box = await Hive.openBox('app_Storg');
    return box!;
  }

  Future<void> setToken(String tokenUser) async {
    box ??= await initHive();
    box?.put('tokenUser', tokenUser);
  }

  Future<String?> getToken() async {
    box ??= await initHive();
    return box?.get(
      'tokenUser',
    );
  }

  Future<void> removeToken() async {
    if (box != null) {
      box!.delete('tokenUser');
    }
  }
}
