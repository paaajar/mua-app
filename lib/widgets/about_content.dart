import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutContent extends StatelessWidget {
  const AboutContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 13),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // First Paragraph
          Text(
            'Griya Rias Rahma merupakan perusahaan\nprofesional yang bergerak di bidang\njasa tata rias wajah (make-up artist),\nyang berlokasi di Banyuwangi.\nDidirikan oleh Rahma sejak tahun 2015,\nperusahaan ini telah dikenal luas\nkarena kemampuannya menghadirkan sentuhan\nestetika yang elegan, modern, dan berkelas\npada setiap kesempatan.',
            style: GoogleFonts.plusJakartaSans(
              fontSize: 14,
              fontWeight: FontWeight.w200,
              color: Colors.black,
              height: 1.5,
            ),
          ),
          
          const SizedBox(height: 23),
          
          // Second Paragraph
          Text(
            'Dengan pengalaman lebih dari delapan tahun,\nGriya Rias Rahma konsisten memberikan\npelayanan terbaik melalui kreativitas tinggi,\npemilihan produk berkualitas premium,\nserta teknik tata rias yang selalu\nmengikuti tren terbaru.\nKomitmen kami adalah membantu setiap klien\ntampil percaya diri dan memukau,\nbaik untuk acara pernikahan, wisuda, photoshoot,\nmaupun event spesial lainnya.',
            style: GoogleFonts.plusJakartaSans(
              fontSize: 14,
              fontWeight: FontWeight.w200,
              color: Colors.black,
              height: 1.5,
            ),
          ),
          
          const SizedBox(height: 23),
          
          // Third Paragraph
          Text(
            'Bersama tim yang ramah dan profesional\ndi bawah arahan langsung Rahma,\nkami menjadikan setiap pelayanan kami\nsebagai karya seni yang unik dan personal,\ndisesuaikan dengan karakter serta keinginan klien.',
            style: GoogleFonts.plusJakartaSans(
              fontSize: 14,
              fontWeight: FontWeight.w200,
              color: Colors.black,
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}
