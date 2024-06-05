import 'package:flutter/material.dart';

class Parent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Image.asset('assets/bg.png'),
            Positioned(
              top: 50.0,
              right: 60.0,
              child: IconButton(
                icon: Image.asset(
                  'assets/settings.png',
                  width: 30.0,
                  height: 30.0,
                ),
                onPressed: () {

                },
              ),
            ),
            Positioned(
              top: 50.0,
              right: 15.0,
              child: IconButton(
                icon: Image.asset(
                  'assets/change.png',
                  width: 30.0,
                  height: 30.0,
                ),
                onPressed: () {
                  // Your onPressed action here
                },
              ),
            ),
            Positioned(
              bottom: 35.0,
              left: (MediaQuery.of(context).size.width / 2) - 160,
              child: SizedBox(
                width: 320,
                child: IconButton(
                  icon: Image.asset(
                    'assets/chatview.png',
                    fit: BoxFit.contain,
                  ),
                  onPressed: () {

                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
