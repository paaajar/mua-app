import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutNisaSection extends StatelessWidget {
  const AboutNisaSection({Key? key}) : super(key: key);

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

    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 16 : 24,
        vertical: isMobile ? 24 : 40,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title
          Text(
            'About nisa',
            style: GoogleFonts.playfairDisplay(
              fontSize: isMobile ? 36 : 48,
              fontStyle: FontStyle.italic,
              color: Colors.black,
              fontWeight: FontWeight.w400,
            ),
          ),

          SizedBox(height: isMobile ? 16 : 24),

          // Main Content
          if (isMobile)
            Column(
              children: [
                // Text Content
                _TextContent(),

                SizedBox(height: 24),

                // Images - Mobile Layout
                Column(
                  children: [
                    _PortraitImage(
                      imageUrl:
                          'https://api.builder.io/api/v1/image/assets/TEMP/8b7c52c83960b4dedc4f4cdcb1ff7dfcd6ccaf6f?width=1156',
                    ),
                    SizedBox(height: 16),
                    _PortraitImage(
                      imageUrl:
                          'https://api.builder.io/api/v1/image/assets/TEMP/8b7c52c83960b4dedc4f4cdcb1ff7dfcd6ccaf6f?width=1156',
                    ),
                  ],
                ),
              ],
            )
          else
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Left Column - Text
                Expanded(
                  child: _TextContent(),
                ),

                SizedBox(width: 24),

                // Right Column - Images
                Expanded(
                  child: Column(
                    children: [
                      _PortraitImage(
                        imageUrl:
                            'https://api.builder.io/api/v1/image/assets/TEMP/8b7c52c83960b4dedc4f4cdcb1ff7dfcd6ccaf6f?width=1156',
                      ),
                      SizedBox(height: 16),
                      _PortraitImage(
                        imageUrl:
                            'https://api.builder.io/api/v1/image/assets/TEMP/8b7c52c83960b4dedc4f4cdcb1ff7dfcd6ccaf6f?width=1156',
                      ),
                    ],
                  ),
                ),
              ],
            ),

          SizedBox(height: isMobile ? 24 : 32),

          // Bottom Portfolio Images
          GridView.count(
            crossAxisCount: isMobile ? 1 : 3,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: List.generate(
              3,
              (index) => _PortfolioImage(
                imageUrl:
                    'https://api.builder.io/api/v1/image/assets/TEMP/8b7c52c83960b4dedc4f4cdcb1ff7dfcd6ccaf6f?width=1156',
              ),
            ),
          ),

          SizedBox(height: 24),

          // Book Now Button
          Center(
            child: ElevatedButton(
              onPressed: _launchWhatsApp,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                padding: EdgeInsets.symmetric(
                  horizontal: isMobile ? 20 : 32,
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
          ),
        ],
      ),
    );
  }
}

class _TextContent extends StatelessWidget {
  const _TextContent();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Dengan 10 tahun lebih pengalaman,\nNisa telah dipercaya oleh ratusan klien untuk\nmenjadikan momen terpenting mereka lebih\nberkesan. Beliau percaya bahwa setiap wanita\nberhak untuk tampil cantik dan memukau di hari\nistimewa mereka.',
          style: GoogleFonts.plusJakartaSans(
            fontSize: 14,
            fontWeight: FontWeight.w300,
            color: Colors.black,
            height: 1.6,
          ),
        ),
        SizedBox(height: 16),
        Text(
          'Keahlian Nisa tidak hanya terbatas pada riasan\npengantin. Ia juga ahli dalam riasan untuk acara\nformal, pemotretan, dan berbagai kebutuhan\nkecantikan lainnya. Dengan perhatian terhadap\ndetail dan dedikasi yang tinggi, Nisa\nmemastikan setiap klien meninggalkan studio\ndengan senyuman dan kepercayaan diri yang\nmeningkat.',
          style: GoogleFonts.plusJakartaSans(
            fontSize: 14,
            fontWeight: FontWeight.w300,
            color: Colors.black,
            height: 1.6,
          ),
        ),
      ],
    );
  }
}

class _PortraitImage extends StatelessWidget {
  final String imageUrl;

  const _PortraitImage({required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[300],
      child: AspectRatio(
        aspectRatio: 4 / 5,
        child: CachedNetworkImage(
          imageUrl: imageUrl,
          fit: BoxFit.cover,
          placeholder: (context, url) => Container(
            color: Colors.grey[300],
          ),
        ),
      ),
    );
  }
}

class _PortfolioImage extends StatelessWidget {
  final String imageUrl;

  const _PortfolioImage({required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[300],
      child: AspectRatio(
        aspectRatio: 3 / 4,
        child: CachedNetworkImage(
          imageUrl: imageUrl,
          fit: BoxFit.cover,
          placeholder: (context, url) => Container(
            color: Colors.grey[300],
          ),
        ),
      ),
    );
  }
}
