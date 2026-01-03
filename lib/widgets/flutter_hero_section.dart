import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({Key? key}) : super(key: key);

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Stack(
      children: [
        // Hero Background Image
        Container(
          height: screenHeight * 0.5,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Color(0xFFF1DDDD),
          ),
          child: Image.network(
            'https://api.builder.io/api/v1/image/assets/TEMP/7432b0e96c8180179067d89b0b9069d14d22978a?width=1124',
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              return Container(
                color: const Color(0xFFF1DDDD),
                child: const Center(
                  child: Icon(Icons.image, size: 50, color: Colors.grey),
                ),
              );
            },
          ),
        ),

        // Dark Overlay
        Container(
          height: screenHeight * 0.5,
          width: double.infinity,
          color: Colors.black.withOpacity(0.2),
        ),

        // Hero Content - Centered
        Positioned.fill(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Business Name - Great Vibes Font
              Text(
                'Griya Rias Rahma',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'GreatVibes',
                  fontSize: screenWidth * 0.12,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                  shadows: [
                    Shadow(
                      offset: const Offset(1, 1),
                      blurRadius: 2,
                      color: Colors.black.withOpacity(0.1),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 4),

              // Location
              Text(
                'BANYUWANGI',
                style: TextStyle(
                  fontFamily: 'PlusJakartaSans',
                  fontSize: screenWidth * 0.028,
                  fontWeight: FontWeight.w200,
                  letterSpacing: 1.5,
                  color: Colors.black,
                  shadows: [
                    Shadow(
                      offset: const Offset(1, 1),
                      blurRadius: 2,
                      color: Colors.black.withOpacity(0.1),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 32),

              // Tagline/Quote
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
                child: Text(
                  '"Every smile captured,\nEvery story remembered"',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'PlusJakartaSans',
                    fontSize: screenWidth * 0.055,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                    height: 1.3,
                    shadows: [
                      Shadow(
                        offset: const Offset(1, 1),
                        blurRadius: 2,
                        color: Colors.black.withOpacity(0.1),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 32),

              // Book Now Button
              Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {
                    _showBookingDialog(context);
                  },
                  borderRadius: BorderRadius.circular(24),
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: screenWidth * 0.15,
                      vertical: 12,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(24),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          blurRadius: 8,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Text(
                      'BOOK NOW',
                      style: TextStyle(
                        fontFamily: 'TenorSans',
                        fontSize: screenWidth * 0.04,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 1,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 32),

              // Social Icons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // TikTok
                  _buildSocialIcon(
                    onTap: () =>
                        _launchURL('https://www.tiktok.com'),
                  ),

                  const SizedBox(width: 24),

                  // Instagram
                  _buildSocialIcon(
                    icon: Icons.camera_alt,
                    onTap: () =>
                        _launchURL('https://www.instagram.com'),
                  ),

                  const SizedBox(width: 24),

                  // YouTube
                  _buildSocialIcon(
                    icon: Icons.play_circle_outline,
                    onTap: () =>
                        _launchURL('https://www.youtube.com'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildSocialIcon({
    IconData icon = Icons.share,
    required VoidCallback onTap,
  }) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        child: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.black.withOpacity(0.6),
          ),
          child: Icon(
            icon,
            color: Colors.white,
            size: 20,
          ),
        ),
      ),
    );
  }

  void _showBookingDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Book Now'),
        content: const Text(
          'Contact Griya Rias Rahma for booking:\n\nsupport@openui.design\n+60 825 876\n\n08:00 - 22:00 - Everyday',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Close'),
          ),
          TextButton(
            onPressed: () {
              _launchURL('mailto:support@openui.design');
              Navigator.pop(context);
            },
            child: const Text('Email'),
          ),
        ],
      ),
    );
  }
}
