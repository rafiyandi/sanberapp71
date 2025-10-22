import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sanberapp71/custom/button/custom_primary_button.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30, top: 86),
          child: Column(
            children: [
              Container(
                width: double.infinity, //Selebar Layar
                height: 330,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/image/image_news.png'),
                  ),
                ),
              ),
              SizedBox(height: 37),
              Text(
                'Yuk, Membaca Bersama\nSanber News',
                style: GoogleFonts.arimo(
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 21),

              Text(
                'Berita Terpercaya, Di Ujung Jari Anda',
                style: GoogleFonts.arimo(fontSize: 15),
                textAlign: TextAlign.center,
              ),
              Spacer(),
              CustomPrimaryButton(text: 'Masuk', onPressed: () {}),
              SizedBox(height: 21),
              CustomPrimaryButton(
                onPressed: () {},
                side: BorderSide(color: Color(0xff3498DB)),
                text: 'Daftar',
                color: Color(0xffffffff),
                style: GoogleFonts.arimo(
                  fontSize: 15,
                  color: Color(0xff3498DB),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
