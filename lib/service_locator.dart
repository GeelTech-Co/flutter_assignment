import 'package:assignment_test/main.dart';
import 'package:assignment_test/repositories/local_data/local_storage_imp.dart';
import 'package:assignment_test/resources/assets_responses.dart';
import 'package:assignment_test/utils/auth_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Future serviceLocater() async {
  WidgetsFlutterBinding.ensureInitialized();
  await LocalStorage.instance.init();
  await AssetsFile.instance.getAssets();
  AuthSetting.instance.onOpen();
  runApp(const ProviderScope(child: MyApp()));
}
