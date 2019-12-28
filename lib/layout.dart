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
                margin: EdgeInsets.only(top: 20),
                height: 100,
                color: Colors.red,
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
