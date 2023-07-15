// ignore_for_file: unused_import, prefer_interpolation_to_compose_strings, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class text_perkiraan_cuaca extends StatelessWidget {
  final String hari;
  final int kelembapan;
  final int suhu1, suhu2;
  const text_perkiraan_cuaca({super.key, required this.hari, required this.kelembapan, required this.suhu1, required this.suhu2});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 75,
          child: Text(
            hari,
            style: GoogleFonts.inter(
                fontSize: 16, color: Colors.black, fontWeight: FontWeight.w500),
          ),
        ),
        Row(
          children: [
            Icon(Icons.water_drop_outlined),
            Text(
              kelembapan.toString() + "%",
              style: GoogleFonts.inter(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
        Text(
          "$suhu1\u00B0 $suhu2\u00B0",
          style: GoogleFonts.inter(
              fontSize: 16, color: Colors.black, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
