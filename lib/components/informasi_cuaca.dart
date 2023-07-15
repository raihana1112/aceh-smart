// ignore_for_file: unused_import, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class informasi_cuaca extends StatelessWidget {
  final String curahHujan;
  final String suhu;
  final String kelembapan;
  final String status;
  final String title;
  final Color colorHujan;
  final Color colorSuhu;
  final Color colorKelembapan;
  final Color colortext;
  const informasi_cuaca({super.key, required this.curahHujan, required this.suhu, required this.kelembapan, required this.status, required this.title, required this.colorHujan, required this.colorSuhu, required this.colorKelembapan, required this.colortext});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: GoogleFonts.inter(
                    fontSize: 18,
                    color: colortext,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                status,
                style: GoogleFonts.inter(
                    fontSize: 13,
                    color: colortext,
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                child: Column(
                  children: [
                    Icon(
                      Icons.cloudy_snowing,
                      color: colorHujan,
                    ),
                    Text(
                      curahHujan,
                      style: GoogleFonts.inter(
                          fontSize: 13,
                          color: colorHujan,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 25,
              ),
              Container(
                child: Column(
                  children: [
                    Icon(
                      Icons.thermostat,
                      color: colorSuhu,
                    ),
                    Text(
                      suhu,
                      style: GoogleFonts.inter(
                          fontSize: 13,
                          color: colorSuhu,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 25,
              ),
              Container(
                child: Column(
                  children: [
                    Icon(
                      Icons.water_drop,
                      color: colorKelembapan,
                    ),
                    Text(
                      kelembapan,
                      style: GoogleFonts.inter(
                          fontSize: 13,
                          color: colorKelembapan,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
