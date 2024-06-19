import 'dart:async';
import 'package:buddyvirty/main_page.dart';
import 'package:buddyvirty/parent.dart';
import 'package:flutter/material.dart';

class Grape extends StatefulWidget {
  @override
  _GrapeState createState() => _GrapeState();
}

class _GrapeState extends State<Grape> {
  bool _showConfetti = false;
  bool _showCircles = true;

  void _showConfettiAndHideCircles() {
    setState(() {
      _showConfetti = true;
      _showCircles = true;
    });

    Timer(Duration(seconds: 2), () {
      setState(() {
        _showConfetti = false;
        _showCircles = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Stack(
                children: [
          Column(
            children: [
              Container(
                width: 393,
                height: 802,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(color: Colors.white),
                child: Stack(
                  children: [
                    Positioned(
                      left: 63,
                      top: 666,
                      child: InkWell(
                        onTap: _showConfettiAndHideCircles,
                        child: Container(
                          width: 268,
                          height: 88,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/reward_button.png'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 25,
                      top: 171,
                      child: Container(
                        width: 343,
                        height: 480,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/grape.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 43,
                      top: 252,
                      child: Container(
                        width: 307,
                        height: 385,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 52,
                              top: 0,
                              child: Visibility(
                                visible: _showCircles,
                                child: Container(
                                  width: 47,
                                  height: 47,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFF9A79CB),
                                    shape: OvalBorder(),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 104,
                              top: 0,
                              child: Visibility(
                                visible: _showCircles,
                                child: Container(
                                  width: 47,
                                  height: 47,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFF9A79CB),
                                    shape: OvalBorder(),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 156,
                              top: 0,
                              child: Visibility(
                                visible: _showCircles,
                                child: Container(
                                  width: 47,
                                  height: 47,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFF9A79CB),
                                    shape: OvalBorder(),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 208,
                              top: 0,
                              child: Visibility(
                                visible: _showCircles,
                                child: Container(
                                  width: 47,
                                  height: 47,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFF9A79CB),
                                    shape: OvalBorder(),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 26,
                              top: 48,
                              child: Visibility(
                                visible: _showCircles,
                                child: Container(
                                  width: 47,
                                  height: 47,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFF9A79CB),
                                    shape: OvalBorder(),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 78,
                              top: 48,
                              child: Visibility(
                                visible: _showCircles,
                                child: Container(
                                  width: 47,
                                  height: 47,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFF9A79CB),
                                    shape: OvalBorder(),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 130,
                              top: 48,
                              child: Visibility(
                                visible: _showCircles,
                                child: Container(
                                  width: 47,
                                  height: 47,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFF9A79CB),
                                    shape: OvalBorder(),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 182,
                              top: 48,
                              child: Visibility(
                                visible: _showCircles,
                                child: Container(
                                  width: 47,
                                  height: 47,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFF9A79CB),
                                    shape: OvalBorder(),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 234,
                              top: 48,
                              child: Visibility(
                                visible: _showCircles,
                                child: Container(
                                  width: 47,
                                  height: 47,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFF9A79CB),
                                    shape: OvalBorder(),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 78,
                              top: 145,
                              child: Visibility(
                                visible: _showCircles,
                                child: Container(
                                  width: 47,
                                  height: 47,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFF9A79CB),
                                    shape: OvalBorder(),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 26,
                              top: 145,
                              child: Visibility(
                                visible: _showCircles,
                                child: Container(
                                  width: 47,
                                  height: 47,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFF9A79CB),
                                    shape: OvalBorder(),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 130,
                              top: 145,
                              child: Visibility(
                                visible: _showCircles,
                                child: Container(
                                  width: 47,
                                  height: 47,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFF9A79CB),
                                    shape: OvalBorder(),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 182,
                              top: 145,
                              child: Visibility(
                                visible: _showCircles,
                                child: Container(
                                  width: 47,
                                  height: 47,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFF9A79CB),
                                    shape: OvalBorder(),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 78,
                              top: 241,
                              child: Visibility(
                                visible: _showCircles,
                                child: Container(
                                  width: 47,
                                  height: 47,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFF9A79CB),
                                    shape: OvalBorder(),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 130,
                              top: 241,
                              child: Visibility(
                                visible: _showCircles,
                                child: Container(
                                  width: 47,
                                  height: 47,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFF9A79CB),
                                    shape: OvalBorder(),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 130,
                              top: 338,
                              child: Visibility(
                                visible: _showCircles,
                                child: Container(
                                  width: 47,
                                  height: 47,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFF9A79CB),
                                    shape: OvalBorder(),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 182,
                              top: 241,
                              child: Visibility(
                                visible: _showCircles,
                                child: Container(
                                  width: 47,
                                  height: 47,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFF9A79CB),
                                    shape: OvalBorder(),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 234,
                              top: 145,
                              child: Visibility(
                                visible: _showCircles,
                                child: Container(
                                  width: 47,
                                  height: 47,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFF9A79CB),
                                    shape: OvalBorder(),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 52,
                              top: 97,
                              child: Visibility(
                                visible: _showCircles,
                                child: Container(
                                  width: 47,
                                  height: 47,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFF9A79CB),
                                    shape: OvalBorder(),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 104,
                              top: 97,
                              child: Visibility(
                                visible: _showCircles,
                                child: Container(
                                  width: 47,
                                  height: 47,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFF9A79CB),
                                    shape: OvalBorder(),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 156,
                              top: 97,
                              child: Visibility(
                                visible: _showCircles,
                                child: Container(
                                  width: 47,
                                  height: 47,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFF9A79CB),
                                    shape: OvalBorder(),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 208,
                              top: 97,
                              child: Visibility(
                                visible: _showCircles,
                                child: Container(
                                  width: 47,
                                  height: 47,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFF9A79CB),
                                    shape: OvalBorder(),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 260,
                              top: 97,
                              child: Visibility(
                                visible: _showCircles,
                                child: Container(
                                  width: 47,
                                  height: 47,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFF9A79CB),
                                    shape: OvalBorder(),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 0,
                              top: 97,
                              child: Visibility(
                                visible: _showCircles,
                                child: Container(
                                  width: 47,
                                  height: 47,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFF9A79CB),
                                    shape: OvalBorder(),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 52,
                              top: 193,
                              child: Visibility(
                                visible: _showCircles,
                                child: Container(
                                  width: 47,
                                  height: 47,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFF9A79CB),
                                    shape: OvalBorder(),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 104,
                              top: 193,
                              child: Visibility(
                                visible: _showCircles,
                                child: Container(
                                  width: 47,
                                  height: 47,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFF9A79CB),
                                    shape: OvalBorder(),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 156,
                              top: 193,
                              child: Visibility(
                                visible: _showCircles,
                                child: Container(
                                  width: 47,
                                  height: 47,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFF9A79CB),
                                    shape: OvalBorder(),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 104,
                              top: 290,
                              child: Visibility(
                                visible: _showCircles,
                                child: Container(
                                  width: 47,
                                  height: 47,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFF9A79CB),
                                    shape: OvalBorder(),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 156,
                              top: 290,
                              child: Visibility(
                                visible: _showCircles,
                                child: Container(
                                  width: 47,
                                  height: 47,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFF9A79CB),
                                    shape: OvalBorder(),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 208,
                              top: 193,
                              child: Visibility(
                                visible: _showCircles,
                                child: Container(
                                  width: 47,
                                  height: 47,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFF9A79CB),
                                    shape: OvalBorder(),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      top: 212,
                      child: Visibility(
                        visible: _showConfetti,
                        child: Container(
                          width: 397,
                          height: 397,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/confetti.png"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 18,
                      top: 60,
                      child: Container(
                        width: 358,
                        height: 94,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 58,
                              child: Container(
                                width: 358,
                                height: 36,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Container(
                                        width: 358,
                                        height: 36,
                                        decoration: ShapeDecoration(
                                          color: Color(0xFFD9D9D9),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(20),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Container(
                                        width: 264.98,
                                        height: 36,
                                        decoration: ShapeDecoration(
                                          color: Color(0xFFFED33E),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(20),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              left: 304,
                              top: 25,
                              child: SizedBox(
                                width: 54,
                                height: 32,
                                child: Text(
                                  '30분',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    color: Color(0xFF525252),
                                    fontSize: 16,
                                    fontFamily: 'Noto Sans KR',
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 97,
                              top: 0,
                              child: SizedBox(
                                width: 164,
                                height: 32,
                                child: Text(
                                  '오늘의 대화 시간',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFF525252),
                                    fontSize: 20,
                                    fontFamily: 'Noto Sans KR',
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 0,
                              top: 25,
                              child: SizedBox(
                                width: 30,
                                height: 32,
                                child: Text(
                                  '0분',
                                  style: TextStyle(
                                    color: Color(0xFF525252),
                                    fontSize: 16,
                                    fontFamily: 'Noto Sans KR',
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 393,
                        height: 52,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Container(
                                width: 393,
                                height: 52,
                                decoration: BoxDecoration(color: Colors.white),
                              ),
                            ),
                            Positioned(
                              left: 18,
                              top: 14,
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => MainPage()),
                                  );
                                },
                                child: Container(
                                  width: 10.85,
                                  height: 18.95,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('assets/Back.png'),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 41,
                              top: 8,
                              child: SizedBox(
                                width: 128,
                                height: 23,
                                child: Text(
                                  '칭찬 포도',
                                  style: TextStyle(
                                    color: Color(0xFF525252),
                                    fontSize: 20,
                                    fontFamily: 'Noto Sans',
                                    fontWeight: FontWeight.w900,
                                    height: 0,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              right: 18,
                              top: 14,
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => Parent()),
                                  );
                                },
                                child: Container(
                                  width: 22,
                                  height: 19,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('assets/mode_change.png'),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}