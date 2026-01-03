import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:url_launcher/url_launcher.dart';

class ServicesHero extends StatelessWidget {
  const ServicesHero({Key? key}) : super(key: key);

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
    return Container(
      width: double.infinity,
      height: 375,
      color: const Color(0xFFF1DDDD),
      child: Stack(
        children: [
          // Background Image
          Positioned.fill(
            child: CachedNetworkImage(
              imageUrl:
                  'https://api.builder.io/api/v1/image/assets/TEMP/49b113a19129fac7580cc4eb7124ad87adc00ac0?width=1142',
              fit: BoxFit.cover,
              placeholder: (context, url) => Container(
                color: const Color(0xFFF1DDDD),
              ),
            ),
          ),

          // Content Overlay
          Positioned.fill(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 25),

                // Main Title
                Text(
                  'Griya Rias Rahma',
                  style: GoogleFonts.getFont(
                    'Great Vibes',
                    fontSize: 28,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),

                const SizedBox(height: 5),

                // Subtitle
                Text(
                  'BANYUWANGI',
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: 12,
                    fontWeight: FontWeight.w200,
                    color: Colors.black,
                  ),
                ),

                const Spacer(),

                // Question
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 51),
                  child: Text(
                    'Kamu butuh apa cantik ?',
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.italic,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),

                const SizedBox(height: 8),

                // Subtext
                Text(
                  'semuanya aku usahain :)',
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: 12,
                    fontWeight: FontWeight.w200,
                    color: Colors.black,
                  ),
                ),

                const SizedBox(height: 46),

                // Book Now Button
                ElevatedButton(
                  onPressed: _launchWhatsApp,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 8,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    minimumSize: const Size(160, 40),
                  ),
                  child: Text(
                    'BOOK NOW',
                    style: GoogleFonts.getFont(
                      'Tenor Sans',
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFFFCFCFC),
                      letterSpacing: 0.5,
                    ),
                  ),
                ),

                const SizedBox(height: 14),

                // Social Media Icons
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _SocialIcon(
                      iconType: 'tiktok',
                      onTap: () {},
                    ),
                    const SizedBox(width: 10),
                    _SocialIcon(
                      iconType: 'instagram',
                      onTap: () {},
                    ),
                    const SizedBox(width: 10),
                    _SocialIcon(
                      iconType: 'youtube',
                      onTap: () {},
                    ),
                  ],
                ),

                const SizedBox(height: 25),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _SocialIcon extends StatelessWidget {
  final String iconType;
  final VoidCallback onTap;

  const _SocialIcon({
    required this.iconType,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    late IconData icon;

    switch (iconType) {
      case 'tiktok':
        icon = Icons.music_note;
        break;
      case 'instagram':
        icon = Icons.photo_camera;
        break;
      case 'youtube':
        icon = Icons.play_circle_outline;
        break;
      default:
        icon = Icons.link;
    }

    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 24,
        height: 24,
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.1),
          shape: BoxShape.circle,
        ),
        child: Icon(
          icon,
          size: 16,
          color: Colors.black.withOpacity(0.8),
        ),
      ),
    );
  }
}
