import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_app/Shared/constants.dart';

import 'Screens/chat_screen.dart';
import 'Screens/notification_screen.dart';
import 'Screens/settings_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _currentIndex = 0;
  final List<Widget> _screens = [
    const ChatsScreen(),
    const NotificationScreen(),
    const SettingsScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: userAppBar(),
      bottomNavigationBar: userBottomBar(),
      body: _screens[_currentIndex],
    ));
  }

  AppBar userAppBar() {
    return AppBar(
      backgroundColor: AppThemeColor.mainColor,
      leading: const Padding(
        padding: EdgeInsets.only(left: 20.0),
        child: CircleAvatar(
          backgroundImage: NetworkImage(
            'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3a/Cat03.jpg/1200px-Cat03.jpg',
          ),
          radius: 5.0,
        ),
      ),
      title: const Center(
        child: Text(
          'Chat',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      actions: [
        Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: IconButton(
              icon: Transform(
                alignment: Alignment.center,
                transform: Matrix4.rotationY(pi),
                child: const Icon(
                  Icons.maps_ugc_sharp,
                  size: 32,
                ),
              ),
              onPressed: () {
                // Обробник натискання кнопки повідомлень
              },
            ))
      ],
    );
  }

  BottomNavigationBar userBottomBar() {
    return BottomNavigationBar(
      onTap: onTabTapped,
      currentIndex: _currentIndex,
      selectedItemColor: Colors.pink,
      unselectedItemColor: AppThemeColor.mainColor,
      iconSize: 28,
      selectedFontSize: 12,
      unselectedFontSize: 12,
      selectedLabelStyle:
          const TextStyle(fontFamily: 'Raleway', fontWeight: FontWeight.bold),
      unselectedLabelStyle: const TextStyle(
          fontFamily: 'Raleway',
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 11, 71, 95)),
      items: const [
        BottomNavigationBarItem(
          icon: SizedBox(
            height: 40,
            child: Icon(
              Icons.sms_outlined,
            ),
          ),
          label: 'Chat',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            CupertinoIcons.bell,
          ),
          label: 'Notifications',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.more_horiz,
          ),
          label: 'More',
        ),
      ],
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
