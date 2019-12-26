import 'package:flutter/material.dart';
import 'otpPage.dart';

class Settings extends StatefulWidget {
 Settings({Key key}) : super(key: key);

   SettingsState createState() =>  SettingsState();
}

class  SettingsState extends State <Settings> {
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
                    'Account Settings',
                    style: new TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              SizedBox(
                height: 35.0,
              ),
              Center(
                child: CircleAvatar(
                  foregroundColor: Colors.red,
                  backgroundColor: Color(0xffdcdde1),
                  minRadius: 45,
                  maxRadius: 90,
                  child: Icon(Icons.add_a_photo,color: Colors.white,size: 40.0),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                    'Aashish Jangam',
                    style: new TextStyle(
                        color: Colors.black,
                        fontSize: 30.0,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Divider(
                    color: Colors.black12,
                  )
                  
            ],
          ),
          ],
          ),
          ),
          );
  }
}