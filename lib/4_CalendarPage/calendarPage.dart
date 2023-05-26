import 'package:app1_tinkle/data/call.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarPage extends StatefulWidget {
  const CalendarPage({Key? key}) : super(key: key);

  @override
  State<CalendarPage> createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  List<Call> calls = [
    Call(
      target: '어머니',
      date: 20230320,
      reserved_time: 2000,
      data_color: Color(0xff4D75D2).value,
      call_check: 1,
      message_check: 0,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (ctx, idx) {
        if (idx == 0) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: const Text(
              'CALENDAR',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          );
        } else if (idx == 1) {
          return Container(
            child: TableCalendar(
              firstDay: DateTime.utc(2010, 10, 16),
              lastDay: DateTime.utc(2030, 3, 14),
              focusedDay: DateTime.now(),
              // onDaySelected: (date, events, holidays){
              //   print(date);
              // },
            ),
          );
        } else if (idx == 2) {
          return Container(
            margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
            child: const Text(
              'SCHEDULE',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          );
        }else if(idx == 3){
          return Column(
            children: List.generate(
              calls.length,
                  (idx) {
                Call temp = calls[idx];
                return Container(
                  width: MediaQuery.of(context).size.width,
                  height: 68,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10)),
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
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
                        margin: EdgeInsets.only(top: 4),
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
  }
}
