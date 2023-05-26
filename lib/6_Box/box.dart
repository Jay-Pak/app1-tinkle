import 'package:app1_tinkle/data/storage.dart';
import 'package:flutter/material.dart';

class Box extends StatefulWidget {
  const Box({Key? key}) : super(key: key);

  @override
  State<Box> createState() => _BoxState();
}

class _BoxState extends State<Box> {
  List<StorageBox> boxes = [
    StorageBox(
      box_date: 20230330,
      box_target: '어머니',
      box_runtime: 1432,
    ),
    StorageBox(
      box_date: 20230330,
      box_target: '아버지',
      box_runtime: 0432,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemBuilder: (ctx, idx) {
          if (idx == 0) {
            return Container(
              margin: EdgeInsets.only(top:10),
              width: 314,
              height: 256,
              child: Image.asset(
                'assets/images/logo.jpg',
              ),
            );
          } else if (idx == 1) {
            return Container(
              margin: const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
              child: const Text(
                'STORAGE BOX',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            );
          } else if (idx == 2) {
            return Container(
              margin: EdgeInsets.only(left: 20, right: 20, bottom: 10),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      color: Colors.red,
                      child: Text(
                        '날짜',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Color(0xff323F4B)),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.blue,
                      child: Text(
                        '대상',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Color(0xff323F4B)),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      color: Colors.yellow,
                      child: Text(
                        '기록시간',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Color(0xff323F4B)),
                      ),
                    ),
                  ),
                ],
              ),
            );
          } else if (idx == 3) {
            return Column(
              children: List.generate(
                boxes.length,
                (idx) {
                  StorageBox box_temp = boxes[idx];
                  return Container(
                    height: 30,
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          width: 1,
                          color: Color(0xff6B5D52),
                        ),
                      ),
                    ),
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 4),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Container(
                            color: Colors.red,
                            child: Text(
                              box_temp.box_date.toString(),
                              textAlign: TextAlign.center,
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
                              box_temp.box_target,
                              textAlign: TextAlign.center,
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
                            color: Colors.yellow,
                            child: Text(
                              box_temp.box_runtime.toString(),
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 18,
                                color: Color(0xff6B5D52),
                              ),
                            ),
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
      ),
    );
  }
}
