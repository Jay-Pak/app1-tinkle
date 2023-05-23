import 'package:app1_tinkle/5_MyinfoPage/myinfoPage.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectIndex = 0;
  List<int> list_color = [0xFFDFD3C3, 0xFFC7B199, 0xFF9F8473, 0xFF6C5D53, 0xFFE2D3CD, 0xFFE3DAD5, 0xFFE6CDB5, 0xFFF7D8B5, 0xFFD0C8B6];

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
        onPressed: () {},
      ),
    );
  }

  AppBar? getAppbar(){
    if(selectIndex == 0){
      return AppBar(
        title: const Text(
          '일정',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
      );
    }
    else if(selectIndex == 1){
      return AppBar(
        title: const Text(
          '캘린더',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
      );
    }
    else if(selectIndex == 2){
      return AppBar(
        title: const Text(
          '보관함',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
      );
    }
    else if(selectIndex == 3){
      return AppBar(
        title: const Text(
          '내 정보',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
      );
    }
  }

  Widget getPage(){
    if(selectIndex == 0){
      return Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: const Text(
              'TODAY',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          // ListView.builder(
          //   padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          //   itemCount: ,
          //   itemBuilder: (BuildContext context, int index){
          //     return Container(
          //       child: ,
          //     ),
          //   },
          // ),
        ],
      );
    }
    else if(selectIndex == 1){
      return MyinfoPage();
    }
    else if(selectIndex == 2){
      return MyinfoPage();
    }
    else if(selectIndex == 3){
      return MyinfoPage();
    }
    return Home();
  }
}
