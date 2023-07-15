// ignore_for_file: unused_import, prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class tentang_perusahaan extends StatefulWidget {
  const tentang_perusahaan({super.key});

  @override
  State<tentang_perusahaan> createState() => _tentang_perusahaanState();
}

class _tentang_perusahaanState extends State<tentang_perusahaan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:
              const EdgeInsets.only(right: 15.0, left: 15, top: 25, bottom: 25),
          child: Column(children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            width: 3,
                            color: Color.fromARGB(255, 175, 243, 135),
                          ),
                          color: Color.fromARGB(255, 223, 255, 224)),
                      child: Padding(
                        padding: const EdgeInsets.all(9.0),
                        child: Icon(
                          Icons.arrow_back_ios_new_outlined,
                          color: Color.fromARGB(255, 175, 243, 135),
                        ),
                      )),
                ),
              ],
            ),
            SizedBox(height: 25,),
            Row(
              children: [
                Text(
                  "Tentang Perusahaan",
                  style: GoogleFonts.inter(
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
            SizedBox(height: 15,),
            Text(
              "PT. Saintek adalah perusahaan swasta Nasional yang bergerak dibidang Rekomendasi tepat tanam dan tanaman di wilayah Aceh sejak tahun 2023. Dengan kepercayaan mitra dari dalam dan luar negeri serta dukungan manajemen karyawan dan kinerja yang baik, perusahaan dapat berkembang dengan pesat dan sehat. ",
              style: GoogleFonts.inter(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.w500),
                  textAlign: TextAlign.justify,
            ),
            SizedBox(height: 15,),
            Text(
              "PT. Saintek juga mendukung industri dan usaha pertanian di Indonesia, dengan merekomendasi kapan tanam dan tanaman apa yang tepat untuk ditanam, sehingga para petani dapat mengetahui kapan para petani untuk menanam tanaman dan panen dari tanaman yang ditanam tersebut dan membantu pemerintah juga dalam melihat grafik stok kebutuhan komoditas bawang, cabe dan padi pada masyarakat. ",
              style: GoogleFonts.inter(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.w500),
                  textAlign: TextAlign.justify,
            ),

          ]),
        ),
      ),
    );
  }
}
