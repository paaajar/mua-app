import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  void _launchSocialMedia(String platform) async {
    late String url;
    switch (platform) {
      case 'tiktok':
        url =
            'https://www.tiktok.com/@griyariasrahma'; 
        break;
      case 'instagram':
        url =
            'https://www.instagram.com/griya_rias_rahma2'; 
        break;
      case 'youtube':
        url =
            'https://www.youtube.com/channel/UCxxxxx'; 
        break;
      default:
        return;
    }

    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication);
    }
  }

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 768;

    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(isMobile ? 16 : 24),
      child: Column(
        children: [
          // Social Media Icons
          Wrap(
            alignment: WrapAlignment.center,
            spacing: 48,
            runSpacing: 16,
            children: [
              _SocialIconButton(
                icon: Icons.music_video,
                onTap: () => _launchSocialMedia('tiktok'),
              ),
              _SocialIconButton(
                icon: Icons.photo_camera,
                onTap: () => _launchSocialMedia('instagram'),
              ),
              _SocialIconButton(
                icon: Icons.play_circle,
                onTap: () => _launchSocialMedia('youtube'),
              ),
            ],
          ),

          SizedBox(height: 16),

          // Contact Information
          Text(
            'support@openui.design | +60 825 876 | 08:00 - 22:00 - Everyday',
            style: GoogleFonts.tenorSans(
              fontSize: isMobile ? 14 : 16,
              color: Color(0xFF333333),
            ),
            textAlign: TextAlign.center,
          ),

          SizedBox(height: 16),

          // Copyright
          Text(
            'Copyright© Griya Rias Rahma All Rights Reserved.',
            style: GoogleFonts.tenorSans(
              fontSize: 12,
              color: Color(0xFF555555),
            ),
            textAlign: TextAlign.center,
          ),

          SizedBox(height: 16),
        ],
      ),
    );
  }
}

class _SocialIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;

  const _SocialIconButton({
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Icon(
        icon,
        size: 32,
        color: Colors.black.withOpacity(0.8),
      ),
    );
  }
}
