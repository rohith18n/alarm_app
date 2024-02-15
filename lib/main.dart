import 'dart:async';
import 'package:alarm_app/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:alarm_app/alarm.dart';
import 'package:flutter/services.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  await Alarm.init(showDebugLogs: true);

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          useMaterial3: false,
          appBarTheme: const AppBarTheme(
              centerTitle: true,
              backgroundColor: Colors.white,
              elevation: 0,
              foregroundColor: Colors.black)),
      home: const ExampleAlarmHomeScreen(),
    ),
  );
}
