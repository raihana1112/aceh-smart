// ignore_for_file: unused_import, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../components/navigation_button.dart';
import '../Petani/home_page_petani.dart';
import 'daftar_akun_penyuluh.dart';
import 'daftar_akun_petani.dart';
import 'daftart_akun_pemerintah.dart';

class choice_rule extends StatefulWidget {
  const choice_rule({super.key});

  @override
  State<choice_rule> createState() => _choice_ruleState();
}

class _choice_ruleState extends State<choice_rule> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 70),
              child: Center(
                child: Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(15)),
                    child: Image.asset(
                      "images/pilih.png",
                      width: 150,
                    )),
              ),
            ),
            SizedBox(
              height: 15,
            ),

            //text
            Text(
              "Silahkan masuk dengan pilihan\nberikut : ",
              style: GoogleFonts.inter(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w400),
              textAlign: TextAlign.center,
            ),

            SizedBox(
              height: 100,
            ),

            //pilihan
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 25.0,
              ),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    index = 1;
                  });
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      border: index == 1
                          ? Border.all(color: Colors.green, width: 3)
                          : null,
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(255, 228, 228, 228)),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Center(
                      child: Text(
                        "Petani",
                        style: GoogleFonts.inter(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 25.0,
              ),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    index = 2;
                  });
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      border: index == 2
                          ? Border.all(color: Colors.green, width: 3)
                          : null,
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(255, 228, 228, 228)),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Center(
                      child: Text(
                        "Pemerintah",
                        style: GoogleFonts.inter(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    index = 3;
                  });
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      border: index == 3
                          ? Border.all(color: Colors.green, width: 3)
                          : null,
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(255, 228, 228, 228)),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Center(
                      child: Text(
                        "Penyuluh",
                        style: GoogleFonts.inter(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 100,
            ),

            //bagian bawah
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: SizedBox(
                width: double.infinity,
                height: 45,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 169, 240, 135),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50))),
                  onPressed: () {
                    if (index == 1) {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => daftar_akun_petani()));
                    } else if (index == 2) {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => daftar_akun_pemerintah()));
                    } else if (index == 3) {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => daftar_akun_penyuluhan()));
                    }
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Pilih",
                      style: GoogleFonts.inter(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    ));
  }
}
