import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_app/Shared/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(appBar: userAppBar()));
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
            icon: const Icon(CupertinoIcons.plus_bubble),
            onPressed: () {
              print('clicked!');
            },
          ),
        )
      ],
    );
  }
}
