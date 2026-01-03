import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cached_network_image/cached_network_image.dart';

class TrustUsSection extends StatelessWidget {
  const TrustUsSection({Key? key}) : super(key: key);

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
        children: [
          // Images Section
          if (isMobile)
            Column(
              children: [
                _ImageCard(
                  imageUrl:
                      'https://api.builder.io/api/v1/image/assets/TEMP/526cdb5a7ddb28a70f866dcb59c7837c8b4c9669?width=1734',
                  backgroundColor: Color(0xFFE1D3D3),
                ),
                SizedBox(height: 24),
                _ImageCard(
                  imageUrl:
                      'https://api.builder.io/api/v1/image/assets/TEMP/39c7c5b2162c3bb1650d95804c7757c542b4913a?width=900',
                  backgroundColor: Color(0xFFCEB0B0),
                ),
              ],
            )
          else
            SizedBox(
              height: 450,
              child: Row(
                children: [
                  Expanded(
                    child: _ImageCard(
                      imageUrl:
                          'https://api.builder.io/api/v1/image/assets/TEMP/526cdb5a7ddb28a70f866dcb59c7837c8b4c9669?width=1734',
                      backgroundColor: Color(0xFFE1D3D3),
                    ),
                  ),
                  SizedBox(width: 24),
                  Expanded(
                    child: _ImageCard(
                      imageUrl:
                          'https://api.builder.io/api/v1/image/assets/TEMP/39c7c5b2162c3bb1650d95804c7757c542b4913a?width=900',
                      backgroundColor: Color(0xFFCEB0B0),
                    ),
                  ),
                ],
              ),
            ),

          SizedBox(height: isMobile ? 24 : 32),

          // Content Section
          Container(
            padding: EdgeInsets.all(isMobile ? 16 : 24),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
                width: 2,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Title
                Text(
                  'Trust Us!',
                  style: GoogleFonts.playfairDisplay(
                    fontSize: isMobile ? 36 : 48,
                    fontStyle: FontStyle.italic,
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                  ),
                ),

                SizedBox(height: 16),

                // Paragraph 1
                Text(
                  'Kami percaya bahwa setiap wajah memiliki cerita.\nDengan sentuhan yang lembut dan teknik artistik,\nGriya Rias Rahma menghadirkan riasan\nyang tak hanya memperindah,\nnamun juga mempertegas karakter anggun\ndalam diri setiap wanita.',
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: isMobile ? 14 : 16,
                    fontWeight: FontWeight.w300,
                    color: Colors.black,
                    height: 1.6,
                  ),
                ),

                SizedBox(height: 16),

                // Paragraph 2
                Text(
                  'Dari tampilan natural nan lembut hingga glamour\nyang berkelas, setiap riasan kami dirancang\nsecara personal sesuai kebutuhan Anda.\nKami meresapi konsep acara,\nmemahami karakter, dan menyelaraskan\nsemuanya menjadi tampilan yang sempurna.',
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: isMobile ? 14 : 16,
                    fontWeight: FontWeight.w300,
                    color: Colors.black,
                    height: 1.6,
                  ),
                ),

                SizedBox(height: 16),

                // Paragraph 3
                Text(
                  'Dengan pelayanan yang ramah dan profesional,\nsetiap sesi rias menjadi pengalaman yang\nnyaman dan menyenangkan.\nKarena Anda layak tampil percaya diri,\nkapan pun dan di mana pun.',
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: isMobile ? 14 : 16,
                    fontWeight: FontWeight.w300,
                    color: Colors.black,
                    height: 1.6,
                  ),
                ),

                SizedBox(height: 16),

                // Paragraph 4
                Text(
                  'Kami bukan hanya merias,\nKami merawat kepercayaan diri Anda!',
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: isMobile ? 14 : 16,
                    fontWeight: FontWeight.w300,
                    color: Colors.black,
                    height: 1.6,
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 24),

        ],
      ),
    );
  }
}

class _ImageCard extends StatelessWidget {
  final String imageUrl;
  final Color backgroundColor;

  const _ImageCard({
    required this.imageUrl,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      child: CachedNetworkImage(
        imageUrl: imageUrl,
        fit: BoxFit.cover,
        placeholder: (context, url) => Container(
          color: backgroundColor,
        ),
      ),
    );
  }
}
