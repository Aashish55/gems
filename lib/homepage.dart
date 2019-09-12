import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'otpPage.dart';

class Homepage extends StatefulWidget {
  Homepage({Key key}) : super(key: key);

  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<String> _countryCode = <String>['+977', '+45', '+877'];
  String option = '+977';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      //backgroundColor: Color(0xffF1FDF1),
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
                  padding: EdgeInsets.only(bottom: 65.0),
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
                  'Hello, nice to meet you!',
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
                  'Get moving with Green Taxi',
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
                        width: 10.0,
                      ),
                      DropdownButton(
                        underline: Container(
                          height: 1.0,
                          decoration: const BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      color: Colors.transparent, width: 0.0))),
                        ),
                        value: option,
                        items: _countryCode
                            .map((value) => DropdownMenuItem(
                                  child: Text(
                                    value,
                                    style: TextStyle(
                                      color: Colors.black54,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  value: value,
                                ))
                            .toList(),
                        onChanged: (selectedOption) {
                          option = selectedOption;
                          setState(() {});
                        },
                      ),
                      Container(
                        color: Colors.black38,
                        height: 35,
                        width: 1,
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            border: InputBorder.none,
                            hintText: 'Enter your Mobile Number',
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
                Text(
                  'By creating an account, you agree to our',
                  style: new TextStyle(
                    fontSize: 14.0,
                    color: Colors.black54,
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Terms of Service ',
                      style: new TextStyle(
                          fontSize: 14.0,
                          color: Colors.black,
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      'and ',
                      style: new TextStyle(
                        fontSize: 14.0,
                        color: Colors.black54,
                      ),
                    ),
                    Text(
                      'Privacy Policy',
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
