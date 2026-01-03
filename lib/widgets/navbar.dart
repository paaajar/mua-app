import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Navbar extends StatefulWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  bool _isMenuOpen = false;

  void _navigateToServices() {
    Navigator.pushNamed(context, '/services');
  }

  void _navigateToHome() {
    Navigator.pushNamed(context, '/');
  }

  void _navigateToGallery() {
    Navigator.pushNamed(context, '/gallery');
  }

  void _navigateToAbout() {
    Navigator.pushNamed(context, '/about');
  }

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 768;

    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 16 : 24,
        vertical: 12,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Logo
              Image.network(
                'https://api.builder.io/api/v1/image/assets/TEMP/27d6fb8f09a9a10b73b057f3375f7df51269724b?width=446',
                height: isMobile ? 60 : 80,
                fit: BoxFit.contain,
              ),

              // Desktop Menu
              if (!isMobile)
                Row(
                  children: [
                    _NavLink('HOME', _navigateToHome),
                    SizedBox(width: 40),
                    _NavLink('SERVICES', _navigateToServices),
                    SizedBox(width: 40),
                    _NavLink('GALLERY', _navigateToGallery),
                    SizedBox(width: 40),
                    _NavLink('ABOUT', _navigateToAbout),
                  ],
                )
              else
                IconButton(
                  icon: Icon(_isMenuOpen ? Icons.close : Icons.menu),
                  onPressed: () {
                    setState(() {
                      _isMenuOpen = !_isMenuOpen;
                    });
                  },
                ),
            ],
          ),
          // Mobile Menu
          if (_isMenuOpen && isMobile)
            Container(
              margin: EdgeInsets.only(top: 12),
              padding: EdgeInsets.symmetric(vertical: 8),
              child: Column(
                children: [
                  _NavLink('HOME', _navigateToHome),
                  SizedBox(height: 12),
                  _NavLink('SERVICES', _navigateToServices),
                  SizedBox(height: 12),
                  _NavLink('GALLERY', _navigateToGallery),
                  SizedBox(height: 12),
                  _NavLink('ABOUT', _navigateToAbout),
                ],
              ),
            ),
        ],
      ),
    );
  }
}

class _NavLink extends StatelessWidget {
  final String label;
  final VoidCallback onTap;

  const _NavLink(this.label, this.onTap);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        label,
        style: GoogleFonts.plusJakartaSans(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: Colors.black,
        ),
      ),
    );
  }
}
