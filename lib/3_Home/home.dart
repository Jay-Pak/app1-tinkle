import 'package:app1_tinkle/4_CalendarPage/calendarPage.dart';
import 'package:app1_tinkle/5_MyinfoPage/myinfoPage.dart';
import 'package:app1_tinkle/6_Box/box.dart';
import 'package:app1_tinkle/7_AddcallPage/addcallPage.dart';
import 'package:app1_tinkle/data/call.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectIndex = 0;
  List<int> list_color = [
    0xFFDFD3C3,
    0xFFC7B199,
    0xFF9F8473,
    0xFF6C5D53,
    0xFFE2D3CD,
    0xFFE3DAD5,
    0xFFE6CDB5,
    0xFFF7D8B5,
    0xFFD0C8B6
  ];
  List<Call> calls = [
    Call(
      target: '어머니',
      date: 20230320,
      reserved_time: 2000,
      data_color: Color(0xff4D75D2).value,
      call_check: 1,
      message_check: 0,
    ),
    Call(
      target: '어머니',
      date: 20230321,
      reserved_time: 2000,
      data_color: Colors.red.value,
      call_check: 1,
      message_check: 0,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppbar(),
      body: getPage(),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              color: Color.fromRGBO(191, 191, 191, 1),
              width: 1,
            ),
          ),
        ),
        child: BottomNavigationBar(
          selectedItemColor: Color(0xff9F8473),
          unselectedItemColor: Colors.black,
          currentIndex: selectIndex,
          onTap: (idx) {
            setState(() {
              selectIndex = idx;
            });
          },
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.calendar_month,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                MdiIcons.packageVariant,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: '',
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromRGBO(100, 81, 63, 1),
        child: const Icon(MdiIcons.calendarPlus),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => AddCallPage()));
        },
      ),
    );
  }

  AppBar? getAppbar() {
    if (selectIndex == 0) {
      return AppBar(
        title: const Text(
          '일정',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
      );
    } else if (selectIndex == 1) {
      return AppBar(
        title: const Text(
          '캘린더',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
      );
    } else if (selectIndex == 2) {
      return AppBar(
        title: const Text(
          '보관함',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            splashRadius: 20,
            icon: Icon(Icons.send),
            color: Colors.black,
            iconSize: 24,
            constraints: BoxConstraints(maxWidth: 34),
          ),
          IconButton(
            onPressed: () {},
            splashRadius: 20,
            icon: Icon(Icons.search),
            color: Colors.black,
            iconSize: 24,
            constraints: BoxConstraints(maxWidth: 44),
          )
        ],
      );
    } else if (selectIndex == 3) {
      return AppBar(
        title: const Text(
          '내 정보',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
      );
    }
  }

  Widget? getPage() {
    if (selectIndex == 0) {
      return ListView.builder(
        itemBuilder: (ctx, idx) {
          if (idx == 0) {
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: const Text(
                'TODAY',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            );
          } else if (idx == 1) {
            return Container(
              height: 116,
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(10)),
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              child: Text('data'),
            );
            // return Container(
            //   child: Column(
            //     children: List.generate(calls.length, (idx){
            //       Call temp = calls[idx];
            //       return Text("$idx");
            //     },),
            //   ),
            // );
          } else if (idx == 2) {
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              child: const Text(
                'RESERVATION',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            );
          } else if (idx == 3) {
            return Column(
              children: List.generate(
                calls.length,
                (idx) {
                  Call temp = calls[idx];
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    height: 116,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10)),
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                    child: Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          // color: Colors.black,
                          padding: EdgeInsets.symmetric(
                              vertical: 14, horizontal: 12),
                          child: Text(
                            temp.date.toString(),
                            style: TextStyle(
                                color: Color(temp.data_color),
                                fontWeight: FontWeight.bold,
                                fontSize: 26),
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Container(
                                  child: Text(
                                    '예약시간',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Color(0xff6B5D52),
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  color: Colors.yellow,
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  child: Text(
                                    '대상',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Color(0xff6B5D52),
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  color: Colors.blue,
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 14,
                                  ),
                                  child: Text(
                                    '예약내용',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Color(0xff6B5D52),
                                    ),
                                    textAlign: TextAlign.end,
                                  ),
                                  color: Colors.purple,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Container(
                                  color: Colors.yellow,
                                  child: Text(
                                    textAlign: TextAlign.center,
                                    temp.reserved_time.toString(),
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Color(0xff6B5D52),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  color: Colors.blue,
                                  child: Text(
                                    textAlign: TextAlign.center,
                                    temp.target,
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Color(0xff6B5D52),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 14,
                                  ),
                                  color: Colors.purple,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Icon(
                                        Icons.call,
                                        color: Color(0xff5A6560),
                                      ),
                                      SizedBox(
                                        width: 6,
                                      ),
                                      Icon(
                                        Icons.message,
                                        color: Color(0xff5A6560),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            );
          }
        },
      );
    } else if (selectIndex == 1) {
      return CalendarPage();
    } else if (selectIndex == 2) {
      return Box();
    } else if (selectIndex == 3) {
      return MyInfoPage();
    }
  }
}
