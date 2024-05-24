import 'package:flutter/material.dart';

class VoiceChat extends StatefulWidget {
  @override
  _VoiceChatState createState() => _VoiceChatState();
}

class _VoiceChatState extends State<VoiceChat> {
  bool _isPressed = false;

  void _onMicButtonPress() {
    setState(() {
      _isPressed = true;
    });
  }

  void _onMicButtonRelease() {
    setState(() {
      _isPressed = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFF1D6),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(Icons.close, color: Colors.black54),
                    iconSize: 30.0,
                    onPressed: () {},
                  ),
                  SizedBox(width: 24),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30.0),
              child: Text(
                '이야기를 시작해볼까?',
                style: TextStyle(
                  color: Color(0xFF525252),
                  fontSize: 25,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Image.asset(
                'assets/character1.png',
                height: 300,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Column(
                children: [
                  Text(
                    '루피',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFFD6967),
                    ),
                  ),
                  Text(
                    '뽀롱뽀롱뽀로로',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 120.0,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10,
              spreadRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: BottomAppBar(
          child: Container(
            height: 60.0,
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Image.asset(
                    'assets/character_choose.png',
                    height: 40,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Image.asset(
                    'assets/history.png',
                    height: 40,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: GestureDetector(
          onTapDown: (_) => _onMicButtonPress(),
          onTapUp: (_) => _onMicButtonRelease(),
          onTapCancel: _onMicButtonRelease,
          child: RawMaterialButton(
            onPressed: () {},
            elevation: 2.0,
            fillColor: _isPressed ? Color(0xFFFF9900) : Color(0xFFFED43E),
            child: Icon(
              Icons.mic,
              size: 70.0,
              color: Colors.white,
            ),
            padding: EdgeInsets.all(22.0),
            shape: CircleBorder(),
          ),
        ),
      ),
    );
  }
}
