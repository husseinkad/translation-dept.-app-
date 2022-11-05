import 'package:flutter/material.dart';
import 'package:translation_dept/lectures.dart';
import 'package:translation_dept/opportunities.dart';
import 'package:translation_dept/utiles/styles.dart';

import 'home_page.dart';
import 'mydrawer.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _selectedScreenIndex = 0;
  var scaffoldKey = GlobalKey<ScaffoldState>();
  final padding = const EdgeInsets.symmetric(vertical: 20);

  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    Lectures(),
    Opportunities()
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
        backgroundColor: Colors.white70,
        leading: IconButton(
          onPressed: () {
            scaffoldKey.currentState!.openDrawer();
          },
          icon: Image.asset('assets/menu.png', color: Colors.black87,),
        ),
        title: const Text('قسم الترجمه', style: textStyleBiggerThanNormal),
      ),
      drawer: Drawer(
        //backgroundColor: Colors.white70,
        child: SingleChildScrollView(
          padding: padding,
          child: Column(
            children: const [
              MyDrawer()
            ],
          ),
        ),
      ),
      key: scaffoldKey,
      body: Center(
        child: _widgetOptions.elementAt(_selectedScreenIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        // showSelectedLabels: false,
        // showUnselectedLabels: false,
        unselectedLabelStyle: textStyleSmall,
        selectedLabelStyle: textStyleSmall,
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
            label: 'الرئيسية',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/play.png"),
            ),
            label: 'المحاضرات',
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
