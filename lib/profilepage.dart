import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'otpPage.dart';
import 'history.dart';

class ProfilePage extends StatefulWidget {
  ProfilePage({Key key}) : super(key: key);

  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  double rating = 2.0;
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
                    'You are in place!',
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
                  backgroundImage: ExactAssetImage('assets/profilepic.jpg'),
                  minRadius: 45,
                  maxRadius: 90,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 15.0),
              ),
              Text(
                'Your Driver',
                style: new TextStyle(color: Colors.black38, fontSize: 14.0),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 5.0),
              ),
              Text(
                'Aashish Jangam',
                style: new TextStyle(
                    color: Colors.black,
                    fontSize: 28.0,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 5.0,
              ),
              Divider(
                color: Colors.black12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text(
                        'Time:',
                        style: new TextStyle(
                          color: Colors.black26,
                          fontSize: 14.0,
                        ),
                      ),
                      Text(
                        '15 min',
                        style: new TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        'Price:',
                        style: new TextStyle(
                          color: Colors.black26,
                          fontSize: 14.0,
                        ),
                      ),
                      Text(
                        'Rs: 390',
                        style: new TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        'Distance',
                        style: new TextStyle(
                          color: Colors.black26,
                          fontSize: 14.0,
                        ),
                      ),
                      Text(
                        '15 km',
                        style: new TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 5.0,
              ),
              Divider(
                color: Colors.black12,
              ),
              SizedBox(
                height: 5.0,
              ),
              Text(
                'More',
                style: new TextStyle(
                  color: Colors.black26,
                  fontSize: 14.0,
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Text(
                'How is your Trip ?',
                style: new TextStyle(
                    color: Colors.black,
                    fontSize: 26.0,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 5.0,
              ),
              SmoothStarRating(
                  allowHalfRating: true,
                  onRatingChanged: (v) {
                    rating = v;
                    setState(() {});
                  },
                  starCount: 5,
                  rating: rating,
                  size: 50.0,
                  color: Colors.green,
                  borderColor: Colors.green,
                  spacing: 0.0),
              SizedBox(
                height: 10.0,
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
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding:
                              const EdgeInsets.only(bottom: 60.0, top: 10.0),
                          fillColor: Colors.white,
                          border: InputBorder.none,
                          hintText: 'Additional Comment',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    'Submit',
                    style: new TextStyle(
                        color: Color(0xff27ae60),
                        fontSize: 20.0,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  FloatingActionButton(
                    mini: true,
                    onPressed: () {
                      Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (ctx) => History()));
                    },
                    backgroundColor: Color(0xff27ae60),
                    child: Icon(
                      Icons.keyboard_arrow_right,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
            ],
          ),
        ],
      )),
    );
  }
}
