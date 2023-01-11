import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

bool _iconBool = false;

IconData _iconLight = Icons.wb_sunny;
IconData _iconDark = Icons.nights_stay;

ThemeData _lightTheme = ThemeData(
    primarySwatch: Colors.amber,
    brightness: Brightness.light,
    buttonTheme: const ButtonThemeData(
      buttonColor: Colors.amberAccent,
    ));

ThemeData _darkTheme = ThemeData(
  primarySwatch: Colors.red,
  brightness: Brightness.dark,
);

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //theme: _iconBool ? _darkTheme : _lightTheme,
      home: Scaffold(
        body: SafeArea(
          child: Container(
            child: Stack(
            //verticalDirection: VerticalDirection.up,
              children: [
                Container(
                  child: Column(
                    verticalDirection: VerticalDirection.up,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Container(
                              width: double.infinity,
                              height: 100,
                               color: Colors.red,
                            )
                          ]
                        ),
                      )
                    ]
                  )
                ),
                Container(
                  
                )
              ],
            ),
          ),   
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
                        label: 'Home',
            ),
          ],
        ),
      ),
    );
  }
}
