import 'package:flutter/material.dart';
import 'package:places/ui/screen/sight_card.dart';

import '../../mocks.dart';

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
              fontFamily: 'Roboto',
              fontSize: 32,
              fontWeight: FontWeight.w700,
              color: Color(0xFF252849)),
        ),
      ),
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          SightCard(sight: mocks[0]),
          SizedBox(
            height: 16.0,
          ),
          SightCard(sight: mocks[1])
        ],
      ),
    );
  }
}
