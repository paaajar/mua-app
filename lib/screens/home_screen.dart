import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/navbar.dart';
import '../widgets/hero_section.dart';
import '../widgets/trust_us_section.dart';
import '../widgets/gallery_section.dart';
import '../widgets/about_nisa_section.dart';
import '../widgets/footer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Navbar(),
            const HeroSection(),
            const TrustUsSection(),
            const GallerySection(),
            const AboutNisaSection(),
            const Footer(),
          ],
        ),
      ),
    );
  }
}
