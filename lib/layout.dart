import 'package:flutter/material.dart';

class Layouting extends StatefulWidget {
  @override
  _LayoutingState createState() => _LayoutingState();
}

class _LayoutingState extends State<Layouting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
          child: Stack(
        children: <Widget>[
          Container(
            color: Colors.green,
          ),
          Container(
            height: 150,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                  Colors.purple,
                  Colors.pink,
                  Colors.red,
                ])),
          ),
          Positioned(
            top: 100,
            left: 0,
            right: 0,
            child: Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset(
                  "assets/img/gambar.gif",
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          )
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
    );
  }
}
