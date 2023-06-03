import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'provider/theme_provider.dart';
import 'screens/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    ChangeNotifierProvider<ThemeProvider>(
      create: (BuildContext context) => ThemeProvider(),
      child: const TravelApp(),
    ),
  );
}

class TravelApp extends StatelessWidget {
  const TravelApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Travel App',
      theme: Provider.of<ThemeProvider>(context).currentTheme,
      home: const HomeScreen(),
    );
  }
}
