// ignore_for_file: unused_import, prefer_const_literals_to_create_immutables, prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class text_fields extends StatelessWidget {
  final String hintText;
  final Color color;
  final icons;
  final TextEditingController controller;
  final TextInputType inputType;
  const text_fields({
    super.key,
    required this.hintText,
    required this.color,
    required this.icons,
    required this.controller,
    this.inputType = TextInputType.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 237, 237, 237),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Row(
          children: [
            icons,
            SizedBox(
              width: 15,
            ),
            Expanded(
              child: TextField(
                style: GoogleFonts.inter(
                  fontSize: 14,
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: hintText,
                  hintStyle: GoogleFonts.inter(
                      fontSize: 14,
                      color: Colors.black38,
                      fontWeight: FontWeight.w400),
                ),
                controller: controller,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
