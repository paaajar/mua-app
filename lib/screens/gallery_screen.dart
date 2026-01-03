import 'package:flutter/material.dart';
import '../widgets/navbar.dart';
import '../widgets/gallery_section.dart';
import '../widgets/footer.dart';

class GalleryScreen extends StatelessWidget {
  const GalleryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Navbar(),
            const GallerySection(),
            const Footer(),
          ],
        ),
      ),
    );
  }
}
