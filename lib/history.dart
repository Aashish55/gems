import 'package:flutter/material.dart';
import 'package:gems/settings.dart';
import 'otpPage.dart';

class History extends StatefulWidget {
  History({Key key}) : super(key: key);

  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            ClipPath(
              clipper: WaveClipper1(),
              child: Container(
                child: Column(),
                width: double.infinity,
                height: 230,
                color: Color(0xff27ae60),
              ),
            ),
            ClipPath(
              clipper: WaveClipper2(),
              child: Container(
                child: Column(),
                width: double.infinity,
                height: 180,
                color: Color(0xff24a259),
              ),
            ),
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
                      'Ride History',
                      style: new TextStyle(
                          color: Colors.white,
                          fontSize: 30.0,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                SizedBox(
                  height: 80.0,
                ),
                Card(
                    color: Colors.white,
                    elevation: 8,
                    margin: EdgeInsets.only(left: 30.0, right: 30.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 5.0,
                        ),
                        Column(
                          children: <Widget>[
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              'From: Jamal',
                              style: new TextStyle(
                                color: Colors.black26,
                                fontSize: 12.0,
                              ),
                            ),
                            Text(
                              'Aroma Cafe',
                              style: new TextStyle(
                                  color: Colors.black,
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.w700),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Divider(
                              color: Colors.black26,
                            )
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              'To: Satungal',
                              style: new TextStyle(
                                color: Colors.black26,
                                fontSize: 12.0,
                              ),
                            ),
                            Text(
                              'My Home',
                              style: new TextStyle(
                                  color: Colors.black,
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.w700),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Divider(
                              color: Colors.black26,
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text(
                              'ID: 654568976543256',
                              style: new TextStyle(
                                color: Colors.black26,
                                fontSize: 12.0,
                              ),
                            ),
                            Text(
                              'Today 2:30 pm',
                              style: new TextStyle(
                                color: Colors.black26,
                                fontSize: 12.0,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                      ],
                    )),
                Padding(
                  padding: EdgeInsets.only(bottom: 30.0),
                ),
                Card(
                    color: Colors.white,
                    elevation: 8,
                    margin: EdgeInsets.only(left: 30.0, right: 30.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 5.0,
                        ),
                        Column(
                          children: <Widget>[
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              'From: Baneshwor',
                              style: new TextStyle(
                                color: Colors.black26,
                                fontSize: 12.0,
                              ),
                            ),
                            Text(
                              'Platinum Gym',
                              style: new TextStyle(
                                  color: Colors.black,
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.w700),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Divider(
                              color: Colors.black26,
                            )
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              'To: Kamalpokhari',
                              style: new TextStyle(
                                color: Colors.black26,
                                fontSize: 12.0,
                              ),
                            ),
                            Text(
                              'City Center',
                              style: new TextStyle(
                                  color: Colors.black,
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.w700),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Divider(
                              color: Colors.black26,
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text(
                              'ID: 78349823092487324',
                              style: new TextStyle(
                                color: Colors.black26,
                                fontSize: 12.0,
                              ),
                            ),
                            Text(
                              'Yesterday 5:45 pm',
                              style: new TextStyle(
                                color: Colors.black26,
                                fontSize: 12.0,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                      ],
                    )),
                Padding(
                  padding: EdgeInsets.only(bottom: 30.0),
                ),
                Card(
                    color: Colors.white,
                    elevation: 8,
                    margin: EdgeInsets.only(left: 30.0, right: 30.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 5.0,
                        ),
                        Column(
                          children: <Widget>[
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              'From: Panauti',
                              style: new TextStyle(
                                color: Colors.black26,
                                fontSize: 12.0,
                              ),
                            ),
                            Text(
                              'Bus Park',
                              style: new TextStyle(
                                  color: Colors.black,
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.w700),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Divider(
                              color: Colors.black26,
                            )
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              'To: 28 Kilo',
                              style: new TextStyle(
                                color: Colors.black26,
                                fontSize: 12.0,
                              ),
                            ),
                            Text(
                              'KU Gate',
                              style: new TextStyle(
                                  color: Colors.black,
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.w700),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Divider(
                              color: Colors.black26,
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text(
                              'ID: 7634875342644356',
                              style: new TextStyle(
                                color: Colors.black26,
                                fontSize: 12.0,
                              ),
                            ),
                            Text(
                              'Yesterday 12:40 pm',
                              style: new TextStyle(
                                color: Colors.black26,
                                fontSize: 12.0,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                      ],
                    )),
                SizedBox(
                  height: 10.0,
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        mini: false,
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (ctx) => Settings()));
        },
        backgroundColor: Color(0xff27ae60),
        child: Icon(
          Icons.file_download,
          color: Colors.white,
        ),
      ),
    );
  }
}
