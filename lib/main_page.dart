import 'package:buddyvirty/grape.dart';
import 'package:buddyvirty/parent.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: Scaffold(
        body: ListView(children: [
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
                      left: 130,
                      top: 810,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 134,
                            height: 5,
                            decoration: ShapeDecoration(
                              color: Colors.black,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
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
                      left: 49,
                      top: 22,
                      child: Container(
                        width: 312,
                        height: 15,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 1,
                              child: Container(
                                width: 37,
                                height: 14,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/Time.png'),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 284,
                              top: 1,
                              child: Container(
                                width: 28,
                                height: 14,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Opacity(
                                        opacity: 0.35,
                                        child: Container(
                                          width: 25,
                                          height: 14,
                                          decoration: ShapeDecoration(
                                            shape: RoundedRectangleBorder(
                                              side: BorderSide(width: 1),
                                              borderRadius: BorderRadius.circular(3.50),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 2,
                                      top: 2,
                                      child: Container(
                                        width: 21,
                                        height: 10,
                                        decoration: ShapeDecoration(
                                          color: Colors.black,
                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              left: 258,
                              top: 0,
                              child: Container(
                                width: 21,
                                height: 15,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/WiFi.png'),
                                    fit: BoxFit.fill,
                                  )
                                ),
                              ),
                            ),
                            Positioned(
                              left: 230,
                              top: 1,
                              child: Container(
                                width: 22,
                                height: 13,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      top: 8,
                                      child: Container(
                                        width: 4,
                                        height: 5,
                                        decoration: ShapeDecoration(
                                          color: Colors.black,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(1.50),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 6,
                                      top: 6,
                                      child: Container(
                                        width: 4,
                                        height: 7,
                                        decoration: ShapeDecoration(
                                          color: Colors.black,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(1.50),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 12,
                                      top: 3,
                                      child: Container(
                                        width: 4,
                                        height: 10,
                                        decoration: ShapeDecoration(
                                          color: Colors.black,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(1.50),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 18,
                                      top: 0,
                                      child: Container(
                                        width: 4,
                                        height: 13,
                                        decoration: ShapeDecoration(
                                          color: Colors.black,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(1.50),
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
                            MaterialPageRoute(builder: (context) => MainPage()), // TODO: MainPage() --> 동화 선택 페이지 클래스 명으로 바꾸기
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