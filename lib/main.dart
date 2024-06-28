import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:clash_royale_stats/theme/theme.dart';
import 'package:clash_royale_stats/screens/home.dart';

Future main() async {
  await dotenv.load(fileName: ".env");
  runApp(const ProviderScope(
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clash Royale Stats',
      theme: getTheme(),
      home: HomeScreen(),
    );
  }
}
