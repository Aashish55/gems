import 'package:flutter/material.dart';
import 'package:gems/otpPage.dart';

class Seats extends StatefulWidget {
  Seats({Key key}) : super(key: key);

  @override
  _SeatsState createState() => _SeatsState();
}

class _SeatsState extends State<Seats> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffdfe6e9),
      body:  Stack(
          children: <Widget>[
            ClipPath(
              clipper: WaveClipper1(),
              child: Container(
                child: Column(),
                width: double.infinity,
                height: 350,
                color: Color(0xff27ae60),
              ),
            ),
            ClipPath(
              clipper: WaveClipper2(),
              child: Container(
                child: Column(),
                width: double.infinity,
                height: 250,
                color: Color(0xff24a259),
              ),
            ),
            Center(
              child:Image.asset('assets/taxi.png'),),
            
            Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(bottom: 35.0),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 10.0),
                      ),
                      ClipOval(
                        child: Material(
                          color: Colors.white,
                          child: InkWell(
                            splashColor: Colors.white, // inkwell color
                            child: SizedBox(
                                width: 40,
                                height: 40,
                                child: Icon(
                                  Icons.keyboard_arrow_left,
                                  color: Color(0xff24a259),
                                )),
                            onTap: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 20.0),
                      ),
                      Text(
                        'Seats',
                        style: new TextStyle(
                            color: Colors.white,
                            fontSize: 30.0,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 120.0,
                  ),
                  Card(
                    color: Colors.white,
                    elevation: 8,
                    margin: EdgeInsets.only(left: 55.0, right: 55.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 10.0,
                        ),
                        Column(
                          children: <Widget>[
                            SizedBox(
                              height: 10.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                seats('empty'),
                                Container(
                                  color: Colors.black38,
                                  height: 35,
                                  width: 1,
                                ),
                                Image.asset(
                                  'assets/driver.png',
                                  height: 70.0,
                                  width: 70.0,
                                ),
                              ],
                            ),
                            Divider(
                              color: Colors.black26,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                seats('reserved'),
                                Container(
                                  color: Colors.black38,
                                  height: 35,
                                  width: 1,
                                ),
                                seats('empty'),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30.0,
                        ),
                      ],
                    ),
                  ),
                ]),
          ],
        ),
    );
  }
}

Widget seats(String details) {
  Color iconColor;
  String seatDetails;
  if (details == 'reserved') {
    iconColor = Colors.redAccent;
    seatDetails = 'Reserved';
  } else if (details == 'empty') {
    iconColor = Colors.green;
    seatDetails = 'Empty';
  }

  return Container(
    child: Column(
      children: <Widget>[
        Icon(
          Icons.event_seat,
          color: iconColor,
          size: 70.0,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          seatDetails,
          style: new TextStyle(
              color: Colors.black45, fontSize: 16.0, fontWeight: FontWeight.w600),
        ),
      ],
    ),
  );
}
