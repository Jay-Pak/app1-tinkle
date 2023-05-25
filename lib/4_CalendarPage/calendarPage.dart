import 'package:flutter/cupertino.dart';

class CalendarPage extends StatefulWidget {
  const CalendarPage({Key? key}) : super(key: key);

  @override
  State<CalendarPage> createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ListView.builder(
        itemBuilder: (ctx, idx) {
          if(idx == 0){
            return Text('CALENDAR');
          }
        },
      ),
    );
  }
}
