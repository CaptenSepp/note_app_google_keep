import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:sepp_note/src/core/my_app.dart';
import 'package:sepp_note/src/helper/hive_db_initializer.dart';
import 'package:sepp_note/src/helper/register_hive_adapter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  registerHiveAdapter();
  await hiveDBInitializer();
  runApp(
    const MyApp(),
  );
}
