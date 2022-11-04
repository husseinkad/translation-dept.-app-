import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _selectedScreenIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Text('page 1'),
    Text('page 2'),
    Text('page 3'),
  ];

  void _selectScreen(int index) {
    setState(() {
      _selectedScreenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFF26A3F7),
        leading: const Icon(Icons.menu, color: Colors.black87,),
        title: const Text('تطبيق قسم الترجمه', style: TextStyle(color: Colors.black87),),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedScreenIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        // showSelectedLabels: false,
        // showUnselectedLabels: false,
        unselectedItemColor: Colors.black87,
        selectedItemColor: const Color(0xFF26A3F7),
        currentIndex: _selectedScreenIndex,
        onTap: _selectScreen,
        // backgroundColor: const Color(0xff191919),
        items: const [
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/home.png"),
            ),
            label: 'الصفحه الرئيسيه',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/play.png"),
            ),
            label: 'المقاطع التعليميه',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/cate.png"),
            ),
            label: 'الفرص',
          ),
        ],
      ),
    );
  }
}
