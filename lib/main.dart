import 'package:flutter/material.dart';

void main() {
  runApp(PinLoginPage());
}

class PinLoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.security, size: 55.0),
              SizedBox(height: 8.0), 
              Text(
                'PIN LOGIN',
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
              SizedBox(height: 10.0),
              Expanded(
                
                child: Center(
                  child: PinInput(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PinInput extends StatefulWidget {
  @override
  _PinInputState createState() => _PinInputState();
}

class _PinInputState extends State<PinInput> {
  String pin = '';

  void addPin(String digit) {
    if (pin.length < 6) {
      setState(() {
        pin += digit;
      });
    }
  }

  void clearPin() {
    setState(() {
      pin = '';
    });
  }

  void deletePin() {
    if (pin.isNotEmpty) {
      setState(() {
        pin = pin.substring(0, pin.length - 1);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          pin.padRight(6, '_'),
          style: TextStyle(fontSize: 20.0, color: Colors.black54),
        ),
        SizedBox(height: 100.0),
        
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 65.0,
              height: 65.0,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(width: 0.7, color: Colors.grey),
              ),
              child: TextButton(
                onPressed: () => addPin('1'),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '1',
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    Text(
                      'one',
                      style: TextStyle(fontSize: 12.0, color: Colors.black),
                    )
                  ],
                ),
              ),
            ),

            SizedBox(width: 15.0), 
            SizedBox.square(
              child: Container(
                width: 65.0,
                height: 65.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 0.7, color: Colors.grey),
                ),
                child: TextButton(
                  onPressed: () => addPin('2'),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '2',
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Text(
                        'two',
                        style: TextStyle(fontSize: 12.0, color: Colors.black),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(width: 15.0),
            SizedBox.square(
              child: Container(
                width: 65.0,
                height: 65.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 0.7, color: Colors.grey),
                ),
                child: TextButton(
                  onPressed: () => addPin('3'),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '3',
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Text(
                        'three',
                        style: TextStyle(fontSize: 12.0, color: Colors.black),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 15.0),
        // แก้ไขตำแหน่งและรูปแบบของปุ่มตัวเลขในแถวถัดไป
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 65.0,
              height: 65.0,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(width: 0.7, color: Colors.grey),
              ),
              child: TextButton(
                onPressed: () => addPin('4'),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '4',
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    Text(
                      'four',
                      style: TextStyle(fontSize: 12.0, color: Colors.black),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(width: 15.0),
            SizedBox.square(
              child: Container(
                width: 65.0,
                height: 65.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 0.7, color: Colors.grey),
                ),
                child: TextButton(
                  onPressed: () => addPin('5'),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '5',
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Text(
                        'five',
                        style: TextStyle(fontSize: 12.0, color: Colors.black),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(width: 15.0),
            SizedBox.square(
              child: Container(
                width: 65.0,
                height: 65.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 0.7, color: Colors.grey),
                ),
                child: TextButton(
                  onPressed: () => addPin('6'),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '6',
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Text(
                        'six',
                        style: TextStyle(fontSize: 12.0, color: Colors.black),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 15.0),
        // แก้ไขตำแหน่งและรูปแบบของปุ่มตัวเลขในแถวถัดไป
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 65.0,
              height: 65.0,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(width: 0.7, color: Colors.grey),
              ),
              child: TextButton(
                onPressed: () => addPin('7'),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '7',
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    Text(
                      'seven',
                      style: TextStyle(fontSize: 12.0, color: Colors.black),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(width: 15.0),
            SizedBox.square(
              child: Container(
                width: 65.0,
                height: 65.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 0.7, color: Colors.grey),
                ),
                child: TextButton(
                  onPressed: () => addPin('8'),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '8',
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Text(
                        'eight',
                        style: TextStyle(fontSize: 12.0, color: Colors.black),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(width: 15.0),
            SizedBox.square(
              child: Container(
                width: 65.0,
                height: 65.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 0.7, color: Colors.grey),
                ),
                child: TextButton(
                  onPressed: () => addPin('9'),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '9',
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Text(
                        'nine',
                        style: TextStyle(fontSize: 12.0, color: Colors.black),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 15.0),
        // แก้ไขตำแหน่งและรูปแบบของปุ่มตัวเลขในแถวสุดท้าย
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 65.0,
              height: 65.0,
              decoration: BoxDecoration(
                border: Border.all(width: 0.1, color: Colors.white),
              ),
              child: TextButton(
                onPressed: clearPin,
                child: Icon(
                  Icons.clear,
                  size: 24.0,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(width: 15.0),
            SizedBox.square(
              child: Container(
                width: 65.0,
                height: 65.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 0.7, color: Colors.grey),
                ),
                child: TextButton(
                  onPressed: () => addPin('0'),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '0',
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Text(
                        'zero',
                        style: TextStyle(fontSize: 12.0, color: Colors.black),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(width: 15.0),
            SizedBox.square(
              child: Container(
                width: 65.0,
                height: 65.0,
                decoration: BoxDecoration(
                  border: Border.all(width: 0.1, color: Colors.white),
                ),
                child: TextButton(
                  onPressed: deletePin,
                  child: Icon(
                    Icons.backspace_outlined,
                    size: 24.0,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
