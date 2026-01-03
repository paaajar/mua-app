import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/navbar.dart';
import '../widgets/services_hero.dart';
import '../widgets/services_card.dart';
import '../widgets/footer.dart';

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Status Bar Space
            SizedBox(height: MediaQuery.of(context).padding.top),

            // Header
            const Navbar(),

            // Hero Section
            const ServicesHero(),

            // Service Cards
            const SizedBox(height: 24),

            ServiceCard(
              title: 'ENGAGEMENT',
              imageUrl:
                  'https://api.builder.io/api/v1/image/assets/TEMP/408a30c9ec567d17e3dec1370206b2692bcfe047?width=612',
            ),

            const SizedBox(height: 24),

            ServiceCard(
              title: 'PREWEDDING',
              imageUrl:
                  'https://api.builder.io/api/v1/image/assets/TEMP/e05d90be6afd96489fdcfc82e7d36f87182e63df?width=722',
            ),

            const SizedBox(height: 24),

            ServiceCard(
              title: 'WEDDING',
              imageUrl:
                  'https://api.builder.io/api/v1/image/assets/TEMP/65a2acba3c675ffeee764f9397c8f3b4ed6382f7?width=612',
            ),

            const SizedBox(height: 24),

            ServiceCard(
              title: 'GRADUATION',
              imageUrl:
                  'https://api.builder.io/api/v1/image/assets/TEMP/f9970ba1ca9a25fee854cfc9add699783539c830?width=608',
            ),

            const SizedBox(height: 24),

            ServiceCard(
              title: 'PERSONAL SERVICE',
              imageUrl:
                  'https://api.builder.io/api/v1/image/assets/TEMP/72c059c9f35a92dcb12601944cd58bd7ddc3825f?width=636',
            ),

            const SizedBox(height: 24),

            ServiceCard(
              title: 'DECORATION',
              imageUrl:
                  'https://api.builder.io/api/v1/image/assets/TEMP/beec93ad193317cdf3ef8d6d1a1ebcb78dde40f6?width=612',
            ),

            const SizedBox(height: 24),

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
