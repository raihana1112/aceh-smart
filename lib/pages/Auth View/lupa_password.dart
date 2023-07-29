// ignore_for_file: unused_import, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, avoid_print, sized_box_for_whitespace
import 'dart:convert';

import 'package:app_tanaman_ui/components/navigation_button.dart';
import 'package:app_tanaman_ui/pages/Auth%20View/login_page.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

import 'daftar_akun_penyuluh.dart';
import 'daftar_akun_petani.dart';
import 'daftart_akun_pemerintah.dart';

class lupa_password extends StatefulWidget {
  const lupa_password({super.key});

  @override
  State<lupa_password> createState() => _lupa_passwordState();
}

class _lupa_passwordState extends State<lupa_password> {
  bool isHide = true;
  bool isHide2 = true;
  TextEditingController user = TextEditingController();
  TextEditingController telp = TextEditingController();
  TextEditingController pass = TextEditingController();

  Future ubah() async {
    final response = await http.post(
        Uri.parse("http://10.140.133.227/login_app/ubah_password.php"),
        body: {
          "username": user.text,
          "telp": telp.text,
          "password": pass.text,
        });
    //var data = json.decode(response.body);
    if (response.body.isNotEmpty) {
      json.decode(response.body);
      setState(() {
        tampil();
      });
    } else {
      tampil2();
      // ignore: use_build_context_synchronously
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => LoginPage(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              //image
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Center(
                  child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15)),
                      child: Image.asset(
                        "images/login.png",
                        width: 150,
                      )),
                ),
              ),
              SizedBox(
                height: 5,
              ),

              //text
              Text(
                "Selamat Datang di",
                style: GoogleFonts.inter(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
              ),
              Text(
                "Petani Aceh Smart",
                style: GoogleFonts.inter(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w700),
              ),

              SizedBox(
                height: 130,
              ),

              //content
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Flexible(
                      child: Text(
                        "Silahkan ubah password dengan username dan no telpon yang sudah terdaftar",
                        style: GoogleFonts.inter(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 20,
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //Email
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
                              "images/username.png",
                              color: Colors.black,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Expanded(
                              child: TextField(
                                controller: user,
                                style: GoogleFonts.inter(
                                  fontSize: 15,
                                ),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Username",
                                  hintStyle: GoogleFonts.poppins(
                                      fontSize: 15,
                                      color: Colors.black38,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 25,
                    ),

                    //No Telp
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
                              "images/telepon.png",
                              color: Colors.black,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Expanded(
                              child: TextField(
                                controller: telp,
                                style: GoogleFonts.inter(
                                  fontSize: 15,
                                ),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "No Telpon",
                                  hintStyle: GoogleFonts.poppins(
                                      fontSize: 15,
                                      color: Colors.black38,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 25,
                    ),

                    //PASSWORD
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
                              "images/open lock.png",
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
                                  hintStyle: GoogleFonts.poppins(
                                      fontSize: 15,
                                      color: Colors.black38,
                                      fontWeight: FontWeight.w400),
                                ),
                                obscureText: isHide,
                              ),
                            ),
                            isHide
                                ? GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        isHide = true;
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
                                        isHide = false;
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

                    //CONFIRM PASSWORD
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
                                  hintStyle: GoogleFonts.poppins(
                                      fontSize: 15,
                                      color: Colors.black38,
                                      fontWeight: FontWeight.w400),
                                ),
                                obscureText: isHide2,
                              ),
                            ),
                            isHide2
                                ? GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        isHide2 = true;
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
                                        isHide2 = false;
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
                      height: 20,
                    ),
                  ],
                ),
              ),

              //bagian bawah
              Container(
                height: 100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    //button masuk
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: SizedBox(
                        width: double.infinity,
                        height: 45,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  Color.fromARGB(255, 175, 243, 135),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30))),
                          onPressed: () {
                            ubah();
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Ubah Password",
                              style: GoogleFonts.inter(
                                  fontSize: 18,
                                  color: Colors.black87,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),

                    SizedBox(
                      height: 15,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void tampil() {
    Fluttertoast.showToast(
        msg: "UBAH PASSWORD GAGAL",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  void tampil2() {
    Fluttertoast.showToast(
        msg: "Anda berhasil mengubah password",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.green,
        textColor: Colors.white,
        fontSize: 16.0);
  }
}
