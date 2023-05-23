import 'package:app1_tinkle/2_LoginPage/loginPage.dart';
import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      logo: Image.asset('assets/images/logo.jpg',),
      title: Text(
        'Tinkle',
        style: GoogleFonts.pacifico(
          fontSize: 24,
          color: const Color.fromRGBO(107, 93, 82, 1),
        ),
      ),
      backgroundColor: const Color.fromRGBO(226, 211, 204, 1),
      durationInSeconds: 2,
      loaderColor: const Color.fromRGBO(107, 93, 82, 1),
      loadingTextPadding: const EdgeInsets.only(bottom: 150),
      navigator: LoginPage(),
    );
  }
}
