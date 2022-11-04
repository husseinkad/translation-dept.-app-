import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
 // await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}

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
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/play.png"),
            ),
            label: 'Videos',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/cate.png"),
            ),
            label: 'Opportunities',
          ),
        ],
      ),
    );
  }
}
