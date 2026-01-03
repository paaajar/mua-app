import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:url_launcher/url_launcher.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({Key? key}) : super(key: key);

  void _launchWhatsApp() async {
    const String phoneNumber =
        '+6281234567890'; // Ganti dengan nomor WhatsApp Anda
    final String url = 'https://wa.me/$phoneNumber';
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication);
    }
  }

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 768;

    return Stack(
      children: [
        // Background Image
        CachedNetworkImage(
          imageUrl:
              'https://api.builder.io/api/v1/image/assets/TEMP/7a22740f82dceb987733641b5b91447ec7c301ef?width=2880',
          width: double.infinity,
          height: isMobile ? 500 : 700,
          fit: BoxFit.cover,
          placeholder: (context, url) => Container(
            color: Color(0xFFC9C1C1),
          ),
        ),

        // Content Overlay
        Container(
          color: Colors.black.withOpacity(0.15),
          width: double.infinity,
          height: isMobile ? 500 : 700,
        ),

        // Text Content
        Positioned.fill(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Main Title
              Text(
                'Griya Rias Rahma',
                style: GoogleFonts.playfairDisplay(
                  fontSize: isMobile ? 36 : 60,
                  fontStyle: FontStyle.italic,
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.center,
              ),

              SizedBox(height: 8),

              // Subtitle
              Text(
                'BANYUWANGI',
                style: GoogleFonts.plusJakartaSans(
                  fontSize: isMobile ? 20 : 28,
                  fontWeight: FontWeight.w300,
                  color: Colors.black,
                ),
              ),

              SizedBox(height: 16),

              // Tagline
              SizedBox(
                width: isMobile ? 300 : 600,
                child: Text(
                  '"Crafting Moments, Creating Memories."',
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: isMobile ? 18 : 28,
                    fontWeight: FontWeight.w300,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),

              SizedBox(height: 8),

              // Trusted Since
              Text(
                'Trusted since 2015',
                style: GoogleFonts.plusJakartaSans(
                  fontSize: isMobile ? 14 : 16,
                  fontWeight: FontWeight.w300,
                  color: Colors.black,
                ),
              ),

              SizedBox(height: 24),

              // Book Now Button
              ElevatedButton(
                onPressed: _launchWhatsApp,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  padding: EdgeInsets.symmetric(
                    horizontal: isMobile ? 24 : 32,
                    vertical: 12,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Text(
                  'BOOK NOW',
                  style: GoogleFonts.tenorSans(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                    letterSpacing: 0.5,
                  ),
                ),
              ),

              SizedBox(height: 24),

              // Social Media Icons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _SocialIcon('tiktok'),
                  SizedBox(width: 32),
                  _SocialIcon('instagram'),
                  SizedBox(width: 32),
                  _SocialIcon('youtube'),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _SocialIcon extends StatelessWidget {
  final String platform;

  const _SocialIcon(this.platform);

  @override
  Widget build(BuildContext context) {
    late IconData icon;
    late VoidCallback onTap;

    switch (platform) {
      case 'tiktok':
        icon = Icons.music_video;
        onTap = () {
          // Launch TikTok
        };
        break;
      case 'instagram':
        icon = Icons.photo_camera;
        onTap = () {
          // Launch Instagram
        };
        break;
      case 'youtube':
        icon = Icons.play_circle;
        onTap = () {
          // Launch YouTube
        };
        break;
      default:
        icon = Icons.link;
        onTap = () {};
    }

    return GestureDetector(
      onTap: onTap,
      child: Icon(
        icon,
        size: 28,
        color: Colors.black.withOpacity(0.8),
      ),
    );
  }
}
