import 'package:app1_tinkle/2_LoginPage/google_login.dart';
import 'package:app1_tinkle/2_LoginPage/kakaoServerToken.dart';
import 'package:app1_tinkle/2_LoginPage/kakao_login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class MyInfoPage extends StatefulWidget {
  const MyInfoPage({Key? key}) : super(key: key);

  @override
  State<MyInfoPage> createState() => _MyInfoPageState();
}

class _MyInfoPageState extends State<MyInfoPage> {
  KakaoServerToken viewModel = KakaoServerToken(KakaoLogin());
  final GoogleLogin _googleSignIn = GoogleLogin();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            color: Colors.deepPurple,
            margin: EdgeInsets.fromLTRB(16, 20, 16, 38),
            height: 100,
            width: 328,
            child: Row(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                  child: Text('사진'),
                ),
                Container(
                  width: 228,
                  height: 100,
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 18, top: 28),
                        color: Colors.amberAccent,
                        height: 50,
                        child: Row(
                          children: [
                            Text(
                              '박재호 님',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            IconButton(
                              padding: EdgeInsets.only(bottom: 10),
                              icon: Icon(
                                Icons.edit,
                                size: 20,
                              ),
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 20),
                        width: 228,
                        height: 50,
                        color: Colors.lightGreen,
                        child: Text('PRO 멤버', style: TextStyle(color: Color(0xff2400FF)),),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 38,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Color(0xff9F8473),
                        width: 1,
                      ),
                    ),
                  ),
                  padding: EdgeInsets.only(
                    left: 10,
                    top: 11,
                    bottom: 11,
                  ),
                  height: 40,
                  child: Row(
                    children: [
                      Icon(
                        Icons.credit_card,
                        size: 18,
                        color: Color(0xff9F8473),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text('PRO 구독하기'),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Color(0xff9F8473),
                        width: 1,
                      ),
                    ),
                  ),
                  padding: EdgeInsets.only(
                    left: 10,
                    top: 11,
                    bottom: 11,
                  ),
                  height: 40,
                  child: Row(
                    children: [
                      Icon(
                        Icons.notifications,
                        size: 18,
                        color: Color(0xff9F8473),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text('공지사항'),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Color(0xff9F8473),
                        width: 1,
                      ),
                    ),
                  ),
                  padding: EdgeInsets.only(
                    left: 10,
                    top: 11,
                    bottom: 11,
                  ),
                  height: 40,
                  child: Row(
                    children: [
                      Icon(
                        Icons.question_answer,
                        size: 18,
                        color: Color(0xff9F8473),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text('자주 묻는 질문'),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Color(0xff9F8473),
                        width: 1,
                      ),
                    ),
                  ),
                  padding: EdgeInsets.only(
                    left: 10,
                    top: 11,
                    bottom: 11,
                  ),
                  height: 40,
                  child: Row(
                    children: [
                      Icon(
                        Icons.favorite,
                        size: 18,
                        color: Color(0xff9F8473),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text('리뷰 남기기'),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Color(0xff9F8473),
                        width: 1,
                      ),
                    ),
                  ),
                  padding: EdgeInsets.only(
                    left: 10,
                    top: 11,
                    bottom: 11,
                  ),
                  height: 40,
                  child: Row(
                    children: [
                      Icon(
                        Icons.description_outlined,
                        size: 18,
                        color: Color(0xff9F8473),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text('서비스 이용약관'),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Color(0xff9F8473),
                        width: 1,
                      ),
                    ),
                  ),
                  padding: EdgeInsets.only(
                    left: 10,
                    top: 11,
                    bottom: 11,
                  ),
                  height: 40,
                  child: Row(
                    children: [
                      Icon(
                        Icons.person,
                        size: 18,
                        color: Color(0xff9F8473),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text('개인정보처리방침'),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Color(0xff9F8473),
                        width: 1,
                      ),
                    ),
                  ),
                  padding: EdgeInsets.only(
                    left: 10,
                    top: 11,
                    bottom: 11,
                  ),
                  height: 40,
                  child: Row(
                    children: [
                      Icon(
                        MdiIcons.accountQuestion,
                        size: 18,
                        color: Color(0xff9F8473),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text('문의하기'),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () async {
                    await viewModel.logout();
                    await _googleSignIn.signOut();
                    setState(() {});
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Color(0xff9F8473),
                          width: 1,
                        ),
                      ),
                    ),
                    padding: EdgeInsets.only(
                      left: 10,
                      top: 11,
                      bottom: 11,
                    ),
                    height: 40,
                    child: Row(
                      children: [
                        Icon(
                          Icons.logout,
                          size: 18,
                          color: Color(0xff9F8473),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text('로그아웃'),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
