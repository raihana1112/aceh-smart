// ignore_for_file: unused_import, prefer_const_constructors, camel_case_types, prefer_const_literals_to_create_immutables

import 'package:app_tanaman_ui/components/navigation_button.dart';
import 'package:app_tanaman_ui/pages/Pemerintah/home_page_pemerintah.dart';
import 'package:app_tanaman_ui/pages/Pemerintah/profile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../components/text_fields.dart';

class ubah_profile_pemerintah extends StatefulWidget {
  const ubah_profile_pemerintah({super.key});

  @override
  State<ubah_profile_pemerintah> createState() =>
      _ubah_profile_pemerintahState();
}

class _ubah_profile_pemerintahState extends State<ubah_profile_pemerintah> {
  bool isView = true;
  bool isView2 = true;

  TextEditingController nama_lengkap = TextEditingController();
  TextEditingController alamat = TextEditingController();
  TextEditingController telp = TextEditingController();
  TextEditingController user = TextEditingController();
  TextEditingController pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(
                right: 15.0, left: 15, top: 30, bottom: 25),
            child: Column(
              children: [
                //image
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                              title: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 25.0),
                                child: Text(
                                  "Pilih Foto!",
                                  style: GoogleFonts.inter(
                                      fontSize: 15,
                                      color: Colors.black26,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              content: SizedBox(
                                height: 150,
                                width: 50,
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizedBox(
                                          width: 2,
                                        ),
                                        Image.asset("images/camera.png"),
                                        Image.asset("images/galeri.png"),
                                        SizedBox(
                                          width: 2,
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 25,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 25.0),
                                          child: GestureDetector(
                                            onTap: () {
                                              Navigator.pop(context);
                                            },
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  boxShadow: [
                                                    BoxShadow(
                                                        spreadRadius: 1,
                                                        blurRadius: 1,
                                                        offset: Offset(0, 2),
                                                        color: Colors.black26)
                                                  ],
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  border: Border.all(
                                                    color: Color.fromARGB(
                                                        255, 175, 243, 135),
                                                    width: 3,
                                                  )),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 8.0,
                                                        horizontal: 25),
                                                child: Text(
                                                  "Batal",
                                                  style: GoogleFonts.inter(
                                                      fontSize: 15,
                                                      color: Colors.black26,
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              )));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              "images/bang.png",
                            ),
                            fit: BoxFit.cover),
                      ),
                      child: SizedBox(
                        height: 75,
                        width: 75,
                      ),
                    ),
                  ),
                ),

                //nama
                Text(
                  "Maulidil",
                  style: GoogleFonts.inter(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w700),
                ),
                //pekerjaan
                Text(
                  "Petani",
                  style: GoogleFonts.inter(
                      fontSize: 15,
                      color: Colors.black45,
                      fontWeight: FontWeight.w700),
                ),

                SizedBox(
                  height: 40,
                ),

                //content

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //textfield
                    text_fields(
                      controller: nama_lengkap,
                      icons: Image.asset(
                        "images/nama lengkap.png",
                        color: Colors.black,
                      ),
                      hintText: "Nama Lengkap",
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    text_fields(
                      controller: alamat,
                      icons: Image.asset(
                        "images/alamat.png",
                        color: Colors.black,
                      ),
                      hintText: "Alamat",
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    text_fields(
                      controller: telp,
                      icons: Image.asset(
                        "images/telepon.png",
                        color: Colors.black,
                      ),
                      hintText: "No Telepon",
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    text_fields(
                      controller: user,
                      icons: Image.asset(
                        "images/username.png",
                        color: Colors.black,
                      ),
                      hintText: "Username",
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 237, 237, 237),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: Row(
                          children: [
                            Image.asset(
                              "images/lockU.png",
                              color: Colors.black,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Expanded(
                              child: TextField(
                                controller: pass,
                                style: GoogleFonts.inter(
                                  fontSize: 15,
                                ),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Password",
                                  hintStyle: GoogleFonts.inter(
                                      fontSize: 15,
                                      color: Colors.black38,
                                      fontWeight: FontWeight.w400),
                                ),
                                obscureText: isView,
                              ),
                            ),
                            isView
                                ? GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        isView = false;
                                      });
                                    },
                                    child: Image.asset(
                                      "images/hide.png",
                                      color: Colors.black,
                                      width: 25,
                                    ))
                                : GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        isView = true;
                                      });
                                    },
                                    child: Image.asset(
                                      "images/view.png",
                                      color: Colors.black,
                                      width: 25,
                                    ))
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 237, 237, 237),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: Row(
                          children: [
                            Image.asset(
                              "images/lock.png",
                              color: Colors.black,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Expanded(
                              child: TextField(
                                style: GoogleFonts.inter(
                                  fontSize: 15,
                                ),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Konfirmasi Password",
                                  hintStyle: GoogleFonts.inter(
                                      fontSize: 15,
                                      color: Colors.black38,
                                      fontWeight: FontWeight.w400),
                                ),
                                obscureText: isView2,
                              ),
                            ),
                            isView2
                                ? GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        isView2 = false;
                                      });
                                    },
                                    child: Image.asset(
                                      "images/hide.png",
                                      color: Colors.black,
                                      width: 25,
                                    ))
                                : GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        isView2 = true;
                                      });
                                    },
                                    child: Image.asset(
                                      "images/view.png",
                                      color: Colors.black,
                                      width: 25,
                                    ))
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                //bagian bawah
                SizedBox(
                  height: MediaQuery.of(context).size.height / 6,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      navigation_button(
                        nextPage: profile_page_pemerintah(),
                        title: "Ubah",
                        warnaText: Colors.black87,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
