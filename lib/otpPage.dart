import 'package:flutter/material.dart';

class OTPPage extends StatefulWidget {
  OTPPage({Key key}) : super(key: key);

  _OTPPageState createState() => _OTPPageState();
}

class _OTPPageState extends State<OTPPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: SingleChildScrollView(
        child: Stack(
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(bottom: 30.0),
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
                  ],
                ),
                
                Image.asset(
                  'assets/logo.png',
                  height: 260.0,
                  width: 260.0,
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 65.0),
                ),
                Text(
                  'Phone Verification',
                  style: new TextStyle(
                    fontSize: 14.0,
                    color: Colors.black54,
                  ),
                  textAlign: TextAlign.left,
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 5.0),
                ),
                Text(
                  'Enter your OTP code below',
                  style: new TextStyle(
                      fontSize: 24.0,
                      color: Colors.black87,
                      fontWeight: FontWeight.w800),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 30.0),
                ),
                Card(
                  color: Colors.white,
                  elevation: 8,
                  margin: EdgeInsets.only(left: 20.0, right: 20.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12.0)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      SizedBox(
                        width: 20.0,
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            border: InputBorder.none,
                            hintText: '**** **** **** ****',
                          ),
                        ),
                      ),
                      FloatingActionButton(
                        mini: true,
                        backgroundColor: Color(0xff27ae60),
                        onPressed: () => {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (ctx) => OTPPage()))
                        },
                        child: Icon(
                          Icons.keyboard_arrow_right,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 40.0),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Resend Code in ',
                      style: new TextStyle(
                        fontSize: 14.0,
                        color: Colors.black54,
                      ),
                    ),
                    Text(
                      '10 seconds',
                      style: new TextStyle(
                          fontSize: 14.0,
                          color: Colors.black,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 20.0),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class WaveClipper1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0.0, size.height - 50);
    path.quadraticBezierTo(
        size.width / 4, size.height, size.width / 2, size.height);
    path.quadraticBezierTo(
        size.width * 0.75, size.height, size.width, size.height - 50);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

class WaveClipper2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0.0, size.height);

    path.quadraticBezierTo(
        size.width / 3, size.height, size.width * 0.40, size.height - 60);

    path.quadraticBezierTo(
        size.width / 3, size.height, size.width * 0.1, size.height - 60);

    path.quadraticBezierTo(size.width / 4, size.height, size.width * 0.8, 0.0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
