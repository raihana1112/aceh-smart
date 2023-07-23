// ignore_for_file: unused_import, prefer_const_constructors, camel_case_types, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'dart:convert';

import 'package:app_tanaman_ui/components/navigation_button.dart';
import 'package:app_tanaman_ui/components/text_fields.dart';
import 'package:app_tanaman_ui/pages/Auth View/login_page.dart';
import 'package:app_tanaman_ui/pages/Informasi%20Lainnya/kebijakan_privasi.dart';
import 'package:app_tanaman_ui/pages/Informasi%20Lainnya/ketentuan_layanan.dart';
import 'package:app_tanaman_ui/pages/Penyuluh/home_page_penyuluh.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

class daftar_akun_penyuluhan extends StatefulWidget {
  const daftar_akun_penyuluhan({super.key});

  @override
  State<daftar_akun_penyuluhan> createState() => _daftar_akun_penyuluhanState();
}

class _daftar_akun_penyuluhanState extends State<daftar_akun_penyuluhan> {
  TextEditingController namaLengkap = TextEditingController();
  TextEditingController instansi = TextEditingController();
  TextEditingController idPenyuluh = TextEditingController();
  TextEditingController telp = TextEditingController();
  TextEditingController user = TextEditingController();
  TextEditingController pass = TextEditingController();

  String level = 'penyuluh';

  bool isView = true;
  bool isView2 = true;

  Future register() async {
    final response = await http.post(
        Uri.parse("http://192.168.190.25/login_app/register_penyuluh.php"),
        body: {
          "nama_lengkap": namaLengkap.text,
          "instansi": instansi.text,
          "id_penyuluh": idPenyuluh.text,
          "telp": telp.text,
          "username": user.text,
          "password": pass.text,
          "level": level,
        });
    //var data = json.decode(response.body);
    if (response.body.isNotEmpty) {
      json.decode(response.body);
      setState(() {
        tampil();
      });
    }
    //if (data == "Error") {

    else {
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
                padding: const EdgeInsets.only(top: 25, bottom: 15),
                child: Center(
                  child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15)),
                      child: Image.asset(
                        "images/buatakunbaru.png",
                        width: 200,
                      )),
                ),
              ),

              Text(
                "Buat Akun Baru",
                style: GoogleFonts.inter(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w700),
              ),

              SizedBox(
                height: 15,
              ),

              //content

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                            Image.asset(
                              "images/username.png",
                              color: Colors.black,
                            ),
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
                                  hintText: "Nama Lengkap",
                                  hintStyle: GoogleFonts.inter(
                                      fontSize: 14,
                                      color: Colors.black38,
                                      fontWeight: FontWeight.w400),
                                ),
                                controller: namaLengkap,
                              ),
                            ),
                          ],
                        ),
                      ),
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
                            Image.asset("images/alamat.png",
                                color: Colors.black),
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
                                  hintText: "Instansi",
                                  hintStyle: GoogleFonts.inter(
                                      fontSize: 14,
                                      color: Colors.black38,
                                      fontWeight: FontWeight.w400),
                                ),
                                controller: instansi,
                              ),
                            ),
                          ],
                        ),
                      ),
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
                            Image.asset("images/nip.png", color: Colors.black),
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
                                  hintText: "ID Penyuluh",
                                  hintStyle: GoogleFonts.inter(
                                      fontSize: 14,
                                      color: Colors.black38,
                                      fontWeight: FontWeight.w400),
                                ),
                                controller: idPenyuluh,
                              ),
                            ),
                          ],
                        ),
                      ),
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
                            Image.asset("images/telepon.png",
                                color: Colors.black),
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
                                  hintText: "Telepon",
                                  hintStyle: GoogleFonts.inter(
                                      fontSize: 14,
                                      color: Colors.black38,
                                      fontWeight: FontWeight.w400),
                                ),
                                controller: telp,
                              ),
                            ),
                          ],
                        ),
                      ),
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
                            Image.asset("images/username.png",
                                color: Colors.black),
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
                                  hintText: "Username",
                                  hintStyle: GoogleFonts.inter(
                                      fontSize: 14,
                                      color: Colors.black38,
                                      fontWeight: FontWeight.w400),
                                ),
                                controller: user,
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
                                        isView = true;
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
                                        isView = false;
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
                      height: 15,
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
                                        isView2 = true;
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
                                        isView2 = false;
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
              ),
              SizedBox(
                height: 15,
              ),
              //kebijakan privasi
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35.0),
                child: Row(
                  children: [
                    Flexible(
                      child: RichText(
                        text: TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Dengan Melanjutkan, Anda Menyetujui\n',
                              style: GoogleFonts.inter(
                                  fontSize: 13,
                                  color: Color.fromARGB(255, 107, 107, 107),
                                  fontWeight: FontWeight.w500),
                            ),
                            TextSpan(
                                text: 'Kebijakan Privasi ',
                                style: GoogleFonts.inter(
                                    decoration: TextDecoration.underline,
                                    fontSize: 13,
                                    color: Color.fromARGB(255, 0, 207, 3),
                                    fontWeight: FontWeight.w500),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                kebijakan_privasi()));
                                  }),
                            TextSpan(
                              text: 'dan ',
                              style: GoogleFonts.inter(
                                  fontSize: 13,
                                  color: Color.fromARGB(255, 107, 107, 107),
                                  fontWeight: FontWeight.w500),
                            ),
                            TextSpan(
                                text: 'Ketentuan Layanan ',
                                style: GoogleFonts.inter(
                                    decoration: TextDecoration.underline,
                                    fontSize: 13,
                                    color: Color.fromARGB(255, 0, 207, 3),
                                    fontWeight: FontWeight.w500),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                ketentuan_layanan()));
                                  }),
                            TextSpan(
                              text: 'Kami ',
                              style: GoogleFonts.inter(
                                  fontSize: 13,
                                  color: Color.fromARGB(255, 107, 107, 107),
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              //bagian bawah

              Container(
                height: MediaQuery.of(context).size.height / 6,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 169, 240, 135),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30))),
                        onPressed: () {
                          // if (pass.text == confirm_pass) {
                          //   register();
                          // } else {
                          //   tampil();
                          // }
                          register();
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Daftar",
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
                    RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Anda sudah memiliki akun ?',
                            style: GoogleFonts.inter(
                                fontSize: 12,
                                color: Color.fromARGB(255, 107, 107, 107),
                                fontWeight: FontWeight.w500),
                          ),
                          TextSpan(
                              text: 'Masuk disini',
                              style: GoogleFonts.inter(
                                  fontSize: 12,
                                  color: Color.fromARGB(255, 228, 49, 36),
                                  fontWeight: FontWeight.w600),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => LoginPage()));
                                }),
                        ],
                      ),
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
        msg: "REGISTER GAGAL",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  void tampil2() {
    Fluttertoast.showToast(
        msg: "Anda berhasil mendaftar",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.green,
        textColor: Colors.white,
        fontSize: 16.0);
  }
}
