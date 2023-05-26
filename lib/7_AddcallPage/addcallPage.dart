import 'package:app1_tinkle/data/util.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/intl.dart';

class AddCallPage extends StatefulWidget {
  const AddCallPage({Key? key}) : super(key: key);

  @override
  State<AddCallPage> createState() => _AddCallPageState();
}

class _AddCallPageState extends State<AddCallPage> {
  // DateTime rn = DateTime.now();
  // String formattedTime = DateFormat.Hms().format(rn);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        title: const Text(
          '일정추가',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.check),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Container(
            child: TableCalendar(
              firstDay: DateTime.utc(2010, 10, 16),
              lastDay: DateTime.utc(2030, 3, 14),
              focusedDay: DateTime.now(),
              // onDaySelected: (date, events, holidays){
              //   print(date);
              // },
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: MediaQuery
                .of(context)
                .size
                .width,
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: const Text(
              'DETAIL',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
          Container(
            height: 54,
            width: MediaQuery
                .of(context)
                .size
                .width,
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Color(0xffD3D3D3),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('시간', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                CupertinoButton(
                  child: Text('${DateTime.parse(DateTime.now().toString()).hour}:${DateTime.parse(DateTime.now().toString()).minute}', style: TextStyle(color: Colors.black, fontSize: 18),),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Container(
            height: 54,
            width: MediaQuery
                .of(context)
                .size
                .width,
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Color(0xffD3D3D3),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('주기', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                CupertinoButton(
                  child: Text('1', style: TextStyle(color: Colors.black, fontSize: 18),),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

//
class _DatePickerItem extends StatelessWidget {
  const _DatePickerItem({required this.children});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 20,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Color(0xffD3D3D3),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: children,
        ),
      ),
    );
  }
}

// _DatePickerItem(
// children: [
// Text('시간'),
// CupertinoButton(
// onPressed: () {},
// child: Text(
// '${time.hour}:${time.minute}',
// style: const TextStyle(
// fontSize: 18,
// ),
// ),
// ),
// ],
// )
