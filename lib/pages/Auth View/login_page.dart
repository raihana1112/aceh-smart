// ignore_for_file: unused_import, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, avoid_print, sized_box_for_whitespace

//import 'dart:ffi';
import 'dart:convert';

import 'package:app_tanaman_ui/components/navigation_button.dart';
import 'package:app_tanaman_ui/pages/Auth%20View/choice_rule.dart';
import 'package:app_tanaman_ui/pages/Auth%20View/lupa_password.dart';
import 'package:app_tanaman_ui/pages/Pemerintah/home_page_pemerintah.dart';
import 'package:app_tanaman_ui/pages/Penyuluh/home_page_penyuluh.dart';
import 'package:app_tanaman_ui/pages/Petani/home_page_petani.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

import 'daftar_akun_penyuluh.dart';
import 'daftar_akun_petani.dart';
import 'daftart_akun_pemerintah.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

String username = '';

class _LoginPageState extends State<LoginPage> {
  bool isHide = true;
  TextEditingController user = TextEditingController();
  TextEditingController pass = TextEditingController();

  Future<List> _login() async {
    try {
      final response = await http
          .post(Uri.parse("http://10.140.234.8/login_app/login.php"), body: {
        "username": user.text,
        "password": pass.text,
      });
      var datauser = json.decode(response.body);
      if (datauser.length == 0) {
        setState(() {
          tampil();
        });
      } else {
        setState(() {
          username = datauser[0]['username'];
        });

        if (datauser[0]['level'] == 'petani') {
          petani();
        } else if (datauser[0]['level'] == 'penyuluh') {
          penyuluh();
        } else if (datauser[0]['level'] == 'pemerintah') {
          pemerintah();
        }
      }
    } catch (e) {
      print(e);
    }
    return [];
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
                height: 150,
              ),

              //content
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Flexible(
                      child: Text(
                        "Silahkan masuk dengan akun yang \nsudah terdaftar",
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
                    //USERNAME
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
                                textInputAction: TextInputAction.next,
                                style: GoogleFonts.inter(
                                  fontSize: 15,
                                ),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "username",
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
                                textInputAction: TextInputAction.next,
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
                      height: 20,
                    ),

                    //Lupa Password
                    GestureDetector(
                      onTap: (() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => lupa_password()));
                      }),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "Lupa password ?",
                            style: GoogleFonts.inter(
                                fontSize: 13,
                                color: Colors.red,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),

              //bagian bawah
              Container(
                height: 150,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    //button masuk
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 169, 240, 135),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30))),
                        onPressed: () {
                          _login();
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Login",
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

                    //text dibawah button
                    RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Anda Belum Memiliki Akun ?',
                            style: GoogleFonts.inter(
                                fontSize: 13,
                                color: Color.fromARGB(255, 107, 107, 107),
                                fontWeight: FontWeight.w400),
                          ),
                          TextSpan(
                              text: ' Silahkan daftar',
                              style: GoogleFonts.inter(
                                  fontSize: 13,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => choice_rule()));
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
        msg: "LOGIN GAGAL",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  void petani() {
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => home_page(username: username)));
  }

  void pemerintah() {
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => home_page_pemerintah(username: username)));
  }

  void penyuluh() {
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => home_page_penyuluh(username: username)));
  }
}
