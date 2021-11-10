import 'package:flutter/material.dart';

class SightListScreen extends StatefulWidget {
  const SightListScreen({Key? key}) : super(key: key);

  @override
  _SightListScreenState createState() => _SightListScreenState();
}

class _SightListScreenState extends State<SightListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: false,
        elevation: 0.0,
        toolbarHeight: 112.0,
        backgroundColor: Colors.white,
        title: RichText(
          text: const TextSpan(children: [
            TextSpan(
                text: 'С',
                style: TextStyle(
                    fontFamily: 'Roboto',
                    color: Color(0xFF4CAF50),
                    fontSize: 32,
                    fontWeight: FontWeight.w700)),
            TextSpan(
                text: 'писок',
                style: TextStyle(
                    fontFamily: 'Roboto',
                    color: Color(0xFF252849),
                    fontSize: 32,
                    fontWeight: FontWeight.w700)),
            TextSpan(
                text: '\nи',
                style: TextStyle(
                    fontFamily: 'Roboto',
                    color: Color(0xFFFCDD3D),
                    fontSize: 32,
                    fontWeight: FontWeight.w700)),
            TextSpan(
                text: 'нтересных мест',
                style: TextStyle(
                    fontFamily: 'Roboto',
                    color: Color(0xFF252849),
                    fontSize: 32,
                    fontWeight: FontWeight.w700)),
          ]),
        ),
      ),
      resizeToAvoidBottomInset: false,
      body: Center(),
    );
  }
}
