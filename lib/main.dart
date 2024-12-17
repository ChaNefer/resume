import 'package:cv/providers/skill_provider.dart';
import 'package:cv/screens/about_me.dart';
import 'package:cv/screens/contact.dart';
import 'package:cv/screens/skills.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(MyCVApp());
}

class MyCVApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => SkillProvider()),
      ],
      child: MaterialApp(
        title: 'Moje CV',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => HomeScreen(),
          '/about': (context) => AboutMeScreen(),
          '/skills': (context) => SkillsScreen(),
          '/contact': (context) => ContactScreen(),
        },
      ),
    );
  }
}



