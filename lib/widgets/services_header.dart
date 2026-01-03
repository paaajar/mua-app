import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ServicesHeader extends StatelessWidget {
  const ServicesHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Menu Icon
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: SizedBox(
              width: 24,
              height: 24,
              child: CustomPaint(
                painter: MenuIconPainter(),
              ),
            ),
          ),
          
          // Services Title
          Text(
            'SERVICES',
            style: GoogleFonts.plusJakartaSans(
              fontSize: 24,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
          ),
          
          // Spacer to balance the layout
          const SizedBox(width: 24),
        ],
      ),
    );
  }
}

class MenuIconPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color(0xFF14142B)
      ..strokeWidth = 1
      ..style = PaintingStyle.stroke;

    // Top line
    canvas.drawLine(
      Offset(0.3, size.height * 0.2),
      Offset(size.width, size.height * 0.2),
      paint,
    );

    // Middle line
    canvas.drawLine(
      Offset(0.3, size.height * 0.5),
      Offset(size.width * 0.67, size.height * 0.5),
      paint,
    );

    // Bottom line
    canvas.drawLine(
      Offset(0.3, size.height * 0.8),
      Offset(size.width, size.height * 0.8),
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
