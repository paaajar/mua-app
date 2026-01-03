import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/navbar.dart';
import '../widgets/about_hero.dart';
import '../widgets/about_content.dart';
import '../widgets/footer.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header
            const Navbar(),

            // Hero Image Section
            const AboutHero(),

            // About Content
            const AboutContent(),

            // See More Button
            // Padding(
            //   padding: const EdgeInsets.symmetric(vertical: 24),
            //   child: ElevatedButton(
            //     onPressed: () {
            //       // Handle see more action
            //     },
            //     style: ElevatedButton.styleFrom(
            //       backgroundColor: Colors.black,
            //       padding: const EdgeInsets.symmetric(
            //         horizontal: 30,
            //         vertical: 8,
            //       ),
            //       shape: RoundedRectangleBorder(
            //         borderRadius: BorderRadius.circular(20),
            //       ),
            //       minimumSize: const Size(147, 40),
            //     ),
            //     child: Text(
            //       'SEE MORE',
            //       style: GoogleFonts.getFont(
            //         'Tenor Sans',
            //         fontSize: 16,
            //         fontWeight: FontWeight.w400,
            //         color: const Color(0xFFFCFCFC),
            //         letterSpacing: 0.5,
            //       ),
            //     ),
            //   ),
            // ),

            // Footer
            const Footer(),

            // Home Indicator Space
            const SizedBox(height: 34),
          ],
        ),
      ),
    );
  }
}
