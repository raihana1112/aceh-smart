// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types
import 'dart:convert';
import 'dart:core';

import 'package:app_tanaman_ui/pages/hasil_rekomendasi_penentuan_tanam.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

class rekomendasi_kapan_tanam extends StatefulWidget {
  const rekomendasi_kapan_tanam({super.key});

  @override
  State<rekomendasi_kapan_tanam> createState() =>
      _rekomendasi_kapan_tanamState();
}

String? komoditasText;
String? kota;
String? bulan;
int? bulanInteger;
int lahan = 0;
List listItem = ["cabai", "bawang", "padi"];
List listItem1 = ["banda aceh", "aceh besar", "lhokseumawe"];
List listItem2 = [
  '1',
  '2',
  '3',
  '4',
  '5',
  '6',
  '7',
  '8',
  '9',
  '10',
  '11',
  '12'
];

class _rekomendasi_kapan_tanamState extends State<rekomendasi_kapan_tanam> {
  TextEditingController namaLahan = TextEditingController();
  TextEditingController luasLahan = TextEditingController();
  TextEditingController kecamatan = TextEditingController();
  TextEditingController desa = TextEditingController();

  Future<List> _check() async {
    try {
      final response = await http.post(
          Uri.parse("http://192.168.100.198/login_app/data_waktu_tanam.php"),
          body: {
            "lokasi": kota,
            "jenis": komoditasText,
            "lahan": luasLahan.text,
            "bulan": bulan,
          });

      var hasil = json.decode(response.body);
      setState(() {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => hasil_rekomendasi_penentuan_tanam(
                    hasil: hasil, nama_lahan: namaLahan.text)));
      });
    } catch (e) {
      print(e);
    }
    return [];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //backbutton
              Padding(
                padding: const EdgeInsets.only(
                    top: 15, bottom: 25.0, left: 15, right: 15),
                child: SafeArea(
                  child: Row(
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
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Rekomendasi Kapan Tanam",
                      style: GoogleFonts.inter(
                          fontSize: 25,
                          color: Colors.black,
                          fontWeight: FontWeight.w400),
                    ),
                    Text(
                      "Silahkan Masukkan Data Dibawah Ini",
                      style: GoogleFonts.inter(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),

              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15.0, vertical: 45),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 237, 237, 237),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 15,
                            ),
                            Expanded(
                              child: TextField(
                                //SizedBox(height: 15),
                                style: GoogleFonts.inter(
                                  fontSize: 14,
                                ),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Nama Lahan",
                                  hintStyle: GoogleFonts.inter(
                                      fontSize: 14,
                                      color: Colors.black38,
                                      fontWeight: FontWeight.w400),
                                ),
                                controller: namaLahan,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 237, 237, 237),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 15,
                            ),
                            Expanded(
                              child: TextField(
                                //SizedBox(height: 15),
                                style: GoogleFonts.inter(
                                  fontSize: 14,
                                ),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Luas Lahan (m2) (Wajib Diisi)",
                                  hintStyle: GoogleFonts.inter(
                                      fontSize: 14,
                                      color: Colors.black38,
                                      fontWeight: FontWeight.w400),
                                ),
                                controller: luasLahan,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    //textfield
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 237, 237, 237),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: Row(
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: 15,
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.75,
                              child: Expanded(
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton(
                                    isExpanded: true,
                                    value: komoditasText,
                                    hint: Text(
                                      'Pilihan Komoditas (Wajib Diisi)',
                                      style: GoogleFonts.inter(
                                          fontSize: 14,
                                          color: Colors.black38,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    items: listItem.map((x) {
                                      return DropdownMenuItem(
                                        value: x.toString(),
                                        child: Text(x),
                                      );
                                    }).toList(),
                                    onChanged: (value) {
                                      setState(() {
                                        komoditasText = value.toString();
                                      });
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 237, 237, 237),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: Row(
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: 15,
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.75,
                              child: Expanded(
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton(
                                    isExpanded: true,
                                    value: bulan,
                                    hint: Text(
                                      'Perkiraan Bulan Tanam (Wajib Diisi)',
                                      style: GoogleFonts.inter(
                                          fontSize: 14,
                                          color: Colors.black38,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    items: listItem2.map((x) {
                                      return DropdownMenuItem(
                                        value: x,
                                        child: Text(x.toString()),
                                      );
                                    }).toList(),
                                    onChanged: (value) {
                                      setState(() {
                                        bulan = value.toString();
                                        bulanInteger = setBulan(bulan!);
                                      });
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 237, 237, 237),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: Row(
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: 15,
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.75,
                              child: Expanded(
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton(
                                    isExpanded: true,
                                    value: kota,
                                    hint: Text(
                                      'Pilihan Kota/Kabupaten (Wajib Diisi)',
                                      style: GoogleFonts.inter(
                                          fontSize: 14,
                                          color: Colors.black38,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    items: listItem1.map((x) {
                                      return DropdownMenuItem(
                                        value: x.toString(),
                                        child: Text(x),
                                      );
                                    }).toList(),
                                    onChanged: (value) {
                                      setState(() {
                                        kota = value.toString();
                                      });
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 237, 237, 237),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 15,
                            ),
                            Expanded(
                              child: TextField(
                                //SizedBox(height: 15),
                                style: GoogleFonts.inter(
                                  fontSize: 14,
                                ),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Kecamatan",
                                  hintStyle: GoogleFonts.inter(
                                      fontSize: 14,
                                      color: Colors.black38,
                                      fontWeight: FontWeight.w400),
                                ),
                                controller: luasLahan,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    //textfield
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 237, 237, 237),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 15,
                            ),
                            Expanded(
                              child: TextField(
                                //SizedBox(height: 15),
                                style: GoogleFonts.inter(
                                  fontSize: 14,
                                ),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Desa",
                                  hintStyle: GoogleFonts.inter(
                                      fontSize: 14,
                                      color: Colors.black38,
                                      fontWeight: FontWeight.w400),
                                ),
                                controller: luasLahan,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    //textfield
                    SizedBox(
                      height: 40,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 169, 240, 135),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30))),
                        onPressed: () {
                          _check();
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Minta Rekomendasi",
                            style: GoogleFonts.inter(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  int setBulan(String bulan) {
    switch (bulan) {
      case '1':
        return 1;
      case '2':
        return 2;
      case '3':
        return 3;
      case '4':
        return 4;
      case '5':
        return 5;
      case '6':
        return 6;
      case '7':
        return 7;
      case '8':
        return 8;
      case '9':
        return 9;
      case '10':
        return 10;
      case '11':
        return 11;
      case '12':
        return 12;
    }

    return 0;
  }
}
