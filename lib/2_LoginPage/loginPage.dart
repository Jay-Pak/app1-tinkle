import 'package:app1_tinkle/2_LoginPage/google_login.dart';
import 'package:app1_tinkle/2_LoginPage/kakaoServerToken.dart';
import 'package:app1_tinkle/2_LoginPage/kakao_login.dart' as kakao;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  KakaoServerToken viewModel = KakaoServerToken(kakao.KakaoLogin());
  final GoogleLogin _googleSignIn = GoogleLogin();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromRGBO(226, 211, 204, 1),
        child: Column(
          children: [
            const SizedBox(
              height: 200,
            ),
            Image.asset(
              'assets/images/logo.jpg',
              width: 100,
              height: 100,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Tinkle',
              style: GoogleFonts.pacifico(
                fontSize: 24,
                color: const Color.fromRGBO(107, 93, 82, 1),
              ),
            ),
            const SizedBox(
              height: 180,
            ),
            InkWell(
              onTap: () async {
                await viewModel.login();
                setState(() {});
              },
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                width: 350,
                height: 56,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Color.fromRGBO(253, 220, 63, 1),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 6),
                      width: 24,
                      height: 24,
                      child: Image.asset('assets/images/kakaologo.png'),
                    ),
                    const Text(
                      'Kakao 로그인',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () async {
                _googleSignIn.signInWithGoogle();
                setState(() {});
              },
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                width: 350,
                height: 56,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 6),
                      width: 24,
                      height: 24,
                      child: Image.asset('assets/images/googlelogo.png'),
                    ),
                    const Text(
                      'Google 로그인',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              '문의 : pakjaeho4187@gmail.com',
              style: TextStyle(color: Colors.grey, fontSize: 10),
            ),
          ],
        ),
      ),
    );
  }
}
