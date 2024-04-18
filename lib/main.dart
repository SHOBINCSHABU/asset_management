import 'package:asset_management/model/adaptor.dart';
import 'package:asset_management/view/home_screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

Future<void> main() async{
  await Hive.initFlutter();
  Hive.registerAdapter(AssetModelAdaptor());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}