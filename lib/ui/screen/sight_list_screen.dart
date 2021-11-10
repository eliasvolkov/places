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
        title: const Text(
          'Список\nинтересных мест',
          style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w700,
              color: Color(0xFF252849)),
        ),
      ),
      resizeToAvoidBottomInset: false,
      body: Center(),
    );
  }
}
