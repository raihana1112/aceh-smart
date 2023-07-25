// ignore_for_file: unused_import, prefer_interpolation_to_compose_strings, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class prediksiKpnTanam extends StatelessWidget {
  final String Title;
  final String HargaPanen;
  final String TotalPendapatan;
  const prediksiKpnTanam(
      {super.key,
      required this.HargaPanen,
      required this.TotalPendapatan,
      required this.Title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.76,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(
                blurRadius: 1,
                color: Colors.black26,
                offset: Offset(0, 2),
                spreadRadius: 2)
          ],
          color: Color.fromARGB(255, 223, 255, 224)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromARGB(255, 62, 185, 138)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 15),
                        child: Text(
                          Title,
                          style: GoogleFonts.inter(
                              fontSize: 20,
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      "Harga Panen : " + HargaPanen,
                      style: GoogleFonts.inter(
                          fontSize: 12,
                          color: Colors.black,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Total Pendapatan : " + TotalPendapatan,
                      style: GoogleFonts.inter(
                          fontSize: 12,
                          color: Colors.black,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
