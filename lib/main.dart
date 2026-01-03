import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'screens/home_screen.dart';
import 'screens/services_screen.dart';
import 'screens/gallery_screen.dart';
import 'screens/about_us_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Griya Rias Rahma',
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.grey,
        textTheme: GoogleFonts.plusJakartaSansTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/services': (context) => const ServicesScreen(),
        '/gallery': (context) => const GalleryScreen(),
        '/about': (context) => const AboutUsScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
