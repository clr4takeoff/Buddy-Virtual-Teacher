import 'package:buddyvirty/grape.dart';
import 'package:buddyvirty/parent.dart';
import 'package:buddyvirty/selectstory.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

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
                height: 852,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(color: Colors.white),
                child: Stack(
                  children: [
                    Positioned(
                      left: 18,
                      top: 235,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Grape()), // TODO: MainPage() --> Grape() 로 변경
                          );
                        },
                        child: Container(
                          width: 360,
                          height: 170,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/podo_button.png'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 18,
                      top: 110,
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
                      top: 50,
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
                              child: SizedBox(
                                width: 128,
                                height: 23,
                                child: Text(
                                  'Buddy Virty',
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
                                    MaterialPageRoute(builder: (context) => Parent()), // TODO : MainPage() --> Parent Mode의 클래스 명으로 변경
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
                    Positioned(
                      left: 202,
                      top: 436,
                      child: Container(
                        width: 176,
                        height: 161,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/aesop_button.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 18,
                      top: 612,
                      child: Container(
                        width: 174,
                        height: 160,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/traditional_button.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 18,
                      top: 436,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MyHomePage(title: "명작동화")), // TODO: MainPage() --> 동화 선택 페이지 클래스 명으로 바꾸기
                          );
                        },
                        child: Container(
                          width: 176,
                          height: 161,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/classic_button.png'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 203,
                      top: 612,
                      child: Container(
                        width: 175,
                        height: 160,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/cre_button.png'),
                            fit: BoxFit.fill,
                          ),
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