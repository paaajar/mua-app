import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class AboutHero extends StatelessWidget {
  const AboutHero({Key? key}) : super(key: key);

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
              imageUrl: 'https://api.builder.io/api/v1/image/assets/TEMP/4dd5040cf7851dd178ab82ee67473778e6c482b6?width=1126',
              fit: BoxFit.cover,
              placeholder: (context, url) => Container(
                color: const Color(0xFFF1DDDD),
                child: const Center(
                  child: Icon(
                    Icons.image,
                    size: 40,
                    color: Colors.white54,
                  ),
                ),
              ),
              errorWidget: (context, url, error) => Container(
                color: const Color(0xFFF1DDDD),
                child: const Center(
                  child: Icon(
                    Icons.broken_image,
                    size: 40,
                    color: Colors.white54,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
