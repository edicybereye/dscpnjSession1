import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class ButtonCustom extends StatefulWidget {
  final String title;
  final Color warnaDepan;
  final Color warnaBelakang;
  final VoidCallback onPressed;
  ButtonCustom(
      {this.title = "Submit",
      @required this.onPressed,
      this.warnaDepan = Colors.black,
      this.warnaBelakang = Colors.grey});
  @override
  _ButtonCustomState createState() => _ButtonCustomState();
}

class _ButtonCustomState extends State<ButtonCustom> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onPressed,
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  widget.warnaDepan,
                  widget.warnaBelakang,
                ])),
        child: Text(
          widget.title,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}


class TextEdi18 extends StatelessWidget {
  final String data;
  TextEdi18({this.data});
  @override
  Widget build(BuildContext context) {
    return Text(
      "$data",
      style: TextStyle(
        fontFamily: "Edi",
        fontSize: 18
      ),
    );
  }
}