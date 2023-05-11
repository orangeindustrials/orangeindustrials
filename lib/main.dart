import 'package:orange_industrials/screens/contact_us_screen.dart';
import 'package:orange_industrials/screens/home_screen.dart';
import 'package:orange_industrials/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) => ResponsiveWrapper.builder(ClampingScrollWrapper.builder(context, child!),
          defaultScale: true,
          minWidth: 480,
          defaultName: MOBILE,
          breakpoints: [
            const ResponsiveBreakpoint.autoScale(480, name: MOBILE),
            const ResponsiveBreakpoint.resize(600, name: MOBILE),
            const ResponsiveBreakpoint.resize(850, name: TABLET),
            const ResponsiveBreakpoint.resize(1080, name: DESKTOP),
          ],
          // background: Container(color: background),
      ),
      title: 'Orange Industrials',

      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.grey,
        scaffoldBackgroundColor: Colors.white,
        canvasColor: Colors.white,
      ),

      routes: {
        '/': (context) => const HomeScreen(),
        '/contact_us': (context) => const ContactUsScreen(),
        '/Yash_Shah': (context) => const ProfileScreen(),

      },

      initialRoute: '/',
    );
  }
}
