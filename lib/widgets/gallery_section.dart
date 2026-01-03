import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cached_network_image/cached_network_image.dart';

class GallerySection extends StatelessWidget {
  const GallerySection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 768;

    return Stack(
      children: [
        // Background Image
        CachedNetworkImage(
          imageUrl:
              'https://api.builder.io/api/v1/image/assets/TEMP/d7e53186a8b7e8d595fffa12bbf1c9ad05164137?width=2880',
          width: double.infinity,
          height: isMobile ? 800 : 1000,
          fit: BoxFit.cover,
          placeholder: (context, url) => Container(
            color: Colors.grey[300],
          ),
        ),

        // Gallery Grid
        Container(
          width: double.infinity,
          height: isMobile ? 800 : 1000,
          color: Colors.black.withOpacity(0.2),
        ),

        // Images Overlay
        Positioned.fill(
          child: Padding(
            padding: EdgeInsets.all(isMobile ? 16 : 24),
            child: isMobile
                ? Column(
                    children: [
                      Expanded(
                        child: _GalleryImage(
                          imageUrl:
                              'https://api.builder.io/api/v1/image/assets/TEMP/ea8cf4dc4985e11f041c4c2e6bce5388cbbdac33?width=1950',
                          backgroundColor: Color(0xFFB2ABAB),
                        ),
                      ),
                      SizedBox(height: 16),
                      Expanded(
                        child: _GalleryImage(
                          imageUrl:
                              'https://api.builder.io/api/v1/image/assets/TEMP/c399ab87b7e078ab78be7236c6e48c6e82272bf1?width=1598',
                          backgroundColor: Color(0xFFB2ABAB),
                        ),
                      ),
                      SizedBox(height: 16),
                      Expanded(
                        child: _GalleryImage(
                          imageUrl:
                              'https://api.builder.io/api/v1/image/assets/TEMP/44b3f78a938dc60a04b01acbceffb000b4d8ed71?width=2160',
                          backgroundColor: Color(0xFFB2ABAB),
                        ),
                      ),
                    ],
                  )
                : Stack(
                    children: [
                      // Image 1
                      Positioned(
                        left: 40,
                        top: 20,
                        width: 300,
                        height: 300,
                        child: _GalleryImage(
                          imageUrl:
                              'https://api.builder.io/api/v1/image/assets/TEMP/ea8cf4dc4985e11f041c4c2e6bce5388cbbdac33?width=1950',
                          backgroundColor: Color(0xFFB2ABAB),
                        ),
                      ),

                      // Image 2
                      Positioned(
                        right: 40,
                        top: 20,
                        width: 300,
                        height: 300,
                        child: _GalleryImage(
                          imageUrl:
                              'https://api.builder.io/api/v1/image/assets/TEMP/c399ab87b7e078ab78be7236c6e48c6e82272bf1?width=1598',
                          backgroundColor: Color(0xFFB2ABAB),
                        ),
                      ),

                      // Image 3 - Center
                      Positioned(
                        left: 200,
                        top: 250,
                        width: 300,
                        height: 300,
                        child: _GalleryImage(
                          imageUrl:
                              'https://api.builder.io/api/v1/image/assets/TEMP/44b3f78a938dc60a04b01acbceffb000b4d8ed71?width=2160',
                          backgroundColor: Color(0xFFB2ABAB),
                        ),
                      ),
                    ],
                  ),
          ),
        ),

        // See More Button
      ],
    );
  }
}

class _GalleryImage extends StatelessWidget {
  final String imageUrl;
  final Color backgroundColor;

  const _GalleryImage({
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
