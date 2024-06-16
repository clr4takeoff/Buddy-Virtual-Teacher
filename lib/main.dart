import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '명작동화',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: '명작동화'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _showSearchBar = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        showSearchBar: _showSearchBar,
        onSearchIconPressed: () {
          setState(() {
            _showSearchBar = !_showSearchBar;
          });
        },
      ),
      body: Column(
        children: [
          _showSearchBar
              ? Container(
            height: 90,
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.white38),
                        ),
                        hintText: '검색',
                        hintStyle: TextStyle(fontSize: 18, color: Colors.grey),
                      ),
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () {
                    setState(() {
                      _showSearchBar = false;
                    });
                  },
                ),
              ],
            ),
          )
              : Container(),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              childAspectRatio: 0.8,
              children: [
                _buildBookCard(
                  '인어공주',
                  'assets/images/mermaid.png',
                  // TODO: 동화 클릭 시 이동 구현
                  // MaterialPageRoute(builder: (context) => StoryPage()),
                  // 위 형식에서 페이지명 "StoryPage()" 부분 수정 시 작동
                  // 코드 제일 하단에 작성된 StoryPage() 삭제 혹은 수정 필요
                  () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => StoryPage()),
                    );
                  },
                ),
                _buildBookCard(
                  '신데렐라',
                  'assets/images/cinderella.png',
                      () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => StoryPage()),
                    );
                  },
                ),
                _buildBookCard(
                  '백설공주',
                  'assets/images/snow_white.png',
                      () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => StoryPage()),
                    );
                  },
                ),
                _buildBookCard(
                  '잠자는 숲속의 공주',
                  'assets/images/sleeping_beauty.png',
                      () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => StoryPage()),
                    );
                  },
                ),
                _buildBookCard(
                  '미녀와 야수',
                  'assets/images/beauty_and_the_beast.png',
                      () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => StoryPage()),
                    );
                  },
                ),
                _buildBookCard(
                  '라푼젤',
                  'assets/images/tangled.png',
                      () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => StoryPage()),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBookCard(
      String title,
      String imagePath,
      VoidCallback onPressed,
      ) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(imagePath, height: 180, width: 150),
            Padding(
              padding: const EdgeInsets.all(9.0),
              child: Text(
                title,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool showSearchBar;
  final VoidCallback onSearchIconPressed;

  MyAppBar({required this.showSearchBar, required this.onSearchIconPressed});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: Icon(Icons.arrow_back_ios_new, color: Colors.red[400]),
        // TODO: 뒤로가기 버튼 클릭 시
        // 앞 페이지들을 스택으로 구현 시 별도 수정 필요 X
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      leadingWidth: 30,
      title: Text(
        '명작동화',
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
      centerTitle: false,
      actions: [
        IconButton(
          icon: Icon(Icons.search, color: Colors.red[400]),
          onPressed: onSearchIconPressed,
        ),
      ],
      backgroundColor: Colors.white,
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

// TODO: 삭제 혹은 수정 필요 (동화 선택 후 이동용)
// 해당 페이지 대신 'VC - selected character' page 필요
class StoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: Center(
        child: Text(''),
      ),
    );
  }
}