import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  const app = MyApp();
  runApp(app);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // callback method
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PIN Password',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var showSeven = true;

    var widget;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 0.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.lightBlueAccent,
                offset: Offset(5.0, 5.0),
                spreadRadius: 2.0,
                blurRadius: 5.0,
              )
            ],
          ),
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.lock, // รูปไอคอน
                      size:60.0, // ขนาดไอคอน
                      color: Colors.blueGrey, // สีไอคอน
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text("กรุณาใส่รหัสผ่าน",
                          style: TextStyle(
                              fontSize: 20.0, color: Colors.black)),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (var i = 1; i <= 3; i++) buildButton(num: i),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (var i = 4; i <= 6; i++) buildButton(num: i),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (var i = 7; i <= 9; i++) buildButton(num: i),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        alignment: Alignment.center,
                        width: 50,
                        height: 50,
                      )),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: buildButton(num: 0),
                  ),
                  Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Icon(
                        Icons.backspace, // รูปไอคอน
                        size: 20.0, // ขนาดไอคอน
                        color: Colors.red, // สีไอคอน
                      )),
                ],
              ),
              Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextButton(
                    child: Text("ลืมรหัสผ่าน",
                        style:
                            TextStyle(fontSize: 20.0, color: Colors.blueGrey)),
                    onPressed: () {},
                  )),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildButton({int? num}) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: 60.0,
        height: 60.0,
        decoration: BoxDecoration(
            color: Colors.black,
            shape: BoxShape.circle,
            border: Border.all(color: Colors.black12, width: 1.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2), // สีเงา
                offset: Offset(4, 4), // ทิศทางของเงาในแนวนอนและแนวตั้ง ตามลำดับ
                blurRadius: 2.0,
                spreadRadius: 2.0,
              )
            ]),
        child: OutlinedButton(
            style: OutlinedButton.styleFrom(
              shape: CircleBorder(),
            ),
            onPressed: () {
              null;
            },
            child: Center(child: Text('$num'))),
      ),
    );
  }
}
