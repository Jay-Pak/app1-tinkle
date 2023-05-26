import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class AddCallPage extends StatefulWidget {
  const AddCallPage({Key? key}) : super(key: key);

  @override
  State<AddCallPage> createState() => _AddCallPageState();
}

class _AddCallPageState extends State<AddCallPage> {
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
          )
        ],
      ),
    );
  }
}
