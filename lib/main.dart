import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //theme: _iconBool ? _darkTheme : _lightTheme,
      home: Scaffold(
        body: SafeArea(
          child: Container(
            child: Stack(
              children: [
                Container(
                  child: MyHomePage(),
                )
              ],
            ),
          ),   
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

bool ispressed = false;

class _MyHomePageState extends State<MyHomePage>{
  int _currentIndex = 0;
  List<Widget> body =  [
    Scaffold(
      body: SafeArea(
        child: Container(
          child: Stack(
            children: [
              Container(
                child: IconButton(
                  color: ispressed ? Colors.green : Colors.blue,
                  icon: Icon(Icons.favorite),
                  onPressed: () {
                    setState(() {
                        ispressed = !ispressed;
                      }
                    );
                  },
                ),
              ),
            ]
          ),
        )
      ),
    ),
    Scaffold(
      body: SafeArea(
        child: Container(
          child: Stack(
            children: [
              Container(),
            ]
          ),
        )
      ),
    ),
    Scaffold(
      body: SafeArea(
        child: Container(
          child: Stack(
            children: [
              Container(),
            ]
          ),
        )
      ),
    ),
    /*Icon(Icons.home),
    Icon(Icons.map),
    Icon(Icons.person),*/
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: body[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int newIndex) {
          setState(() {
            _currentIndex = newIndex;
          });
        },
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home_rounded,size: 30,),
          ),
          BottomNavigationBarItem(
            label: 'Map',
            icon: Icon(Icons.map_rounded,size: 30,),
          ),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: Icon(Icons.person_rounded,size: 30,),
          ),
        ],
      ),
    );
  }
}
