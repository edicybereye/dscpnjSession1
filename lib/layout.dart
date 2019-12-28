import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

class Layouting extends StatefulWidget {
  @override
  _LayoutingState createState() => _LayoutingState();
}

class _LayoutingState extends State<Layouting> {
  FirebaseMessaging _firebaseMessaging = FirebaseMessaging();
  String fcmToken;

  getToken() async {
    fcmToken = await _firebaseMessaging.getToken();
    print(fcmToken);
  }

  @override
  void initState() {
    super.initState();
    getToken();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: <Widget>[
          Container(
              height: 400,
              child: Stack(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(10),
                    color: Colors.green,
                    alignment: Alignment.bottomRight,
                    child: Text(
                      "Halo",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  ClipPath(
                    clipper: WaveClipperTwo(),
                    child: Container(
                      height: 200,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/img/background.jpg"),
                          fit: BoxFit.cover,
                          colorFilter: ColorFilter.mode(
                              Colors.red.withOpacity(0.4), BlendMode.srcOver),
                        ),
                        // gradient: LinearGradient(
                        //     begin: Alignment.topLeft,
                        //     end: Alignment.bottomRight,
                        //     colors: [
                        //       Colors.purple,
                        //       Colors.pink,
                        //     ]),
                      ),
                    ),
                  ),
                  ClipPath(
                    clipper: WaveClipperTwo(),
                    child: Container(
                      height: 200,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Colors.purple.withOpacity(0.1),
                              Colors.pink,
                            ],
                            stops: [
                              0.0,
                              1.0
                            ]),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 120,
                    left: 0,
                    right: 0,
                    child: Center(
                      child: Column(
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Image.asset(
                              "assets/img/gambar.gif",
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Edi Kurniawan",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    top: 280,
                    left: 70,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(16),
                                  bottomLeft: Radius.circular(16)),
                              color: Colors.white),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Icon(Icons.home),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text("Home")
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Icon(Icons.settings),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text("Setting")
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Icon(Icons.account_circle),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text("Account")
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                      ],
                    ),
                  ),
                ],
              )

              //     Row(
              //   children: <Widget>[
              //     Expanded(
              //       child: Container(
              //         color: Colors.red,
              //       ),
              //     ),
              //     Expanded(
              //       child: Container(
              //         color: Colors.green,
              //       ),
              //     ),
              //     Expanded(
              //       child: Container(
              //         color: Colors.yellow,
              //       ),
              //     ),
              //   ],
              // )
              // FittedBox Widget Responsive Widget
              //  FittedBox(
              //   child:
              //   Column(
              //     children: <Widget>[
              //       Image.asset(
              //         "assets/img/gambar.gif",
              //         width: 200,
              //         height: 200,
              //         fit: BoxFit.cover,
              //       ),
              //       Image.asset(
              //         "assets/img/gambar.gif",
              //         width: 200,
              //         height: 200,
              //         fit: BoxFit.cover,
              //       ),
              //       Image.asset(
              //         "assets/img/gambar.gif",
              //         width: 200,
              //         height: 200,
              //         fit: BoxFit.cover,
              //       ),
              //     ],
              //   ),
              // ),
              ),
          Container(
            height: 100,
            padding: EdgeInsets.only(bottom: 16),
            color: Colors.green,
            child: ListView(
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  height: 100,
                  width: 100,
                  margin: EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.red,
                  ),
                ),
                Container(
                  width: 100,
                  height: 100,
                  margin: EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.red,
                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                  margin: EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.red,
                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                  margin: EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.red,
                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                  margin: EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.red,
                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                  margin: EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 600,
          )
        ],
      ),
    );
  }
}

class WaveClipperTwo extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height);
    path.quadraticBezierTo(
        size.width / 4, size.height - 40, size.width / 2, size.height - 20);
    path.quadraticBezierTo(
        3 / 4 * size.width, size.height, size.width, size.height - 30);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return false;
  }
}
