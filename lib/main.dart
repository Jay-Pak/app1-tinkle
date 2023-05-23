import 'package:app1_tinkle/2_LoginPage/loginPage.dart';
import 'package:flutter/material.dart';
import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart' as kakao;
import 'firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';


void main() async {
  kakao.KakaoSdk.init(nativeAppKey: 'db618f06279aa885555c81d1026d1d3f');
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          appBarTheme: AppBarTheme(backgroundColor: Colors.white, centerTitle: true, elevation: 0),
          scaffoldBackgroundColor: Colors.white,
          fontFamily: 'SpoqaHanSansNeoRegular'
      ),
      home: LoginPage(),
    );
  }
}