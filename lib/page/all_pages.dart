import 'package:brew/page/host_page.dart';
import 'package:brew/page/idea_page.dart';
import 'package:brew/page/main_page.dart';
import 'package:brew/page/message_page.dart';
import 'package:brew/page/profile_page.dart';
import 'package:flutter/material.dart';

class AllPages extends StatefulWidget {
  const AllPages({super.key});

  @override
  State<AllPages> createState() => _AllPagesState();
}

class _AllPagesState extends State<AllPages> {
  int _currentIndex = 0;
  final List<Widget> _widgetOptions = <Widget>[
    const MainPage(),
    const IdeaPage(),
    const HostPage(),
    const MessagePage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _widgetOptions[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color.fromARGB(220, 174, 193, 120),
        unselectedItemColor: const Color(0xffd9d9d0),
        elevation: 0,
        backgroundColor: Colors.white,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Transform.scale(
              scale: 1.3,
              child: const ImageIcon(
                AssetImage("assets/find_date.png"),
                //color: Color(0xffd9d9d0),
              ),
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Transform.scale(
              scale: 2.2,
              child: const ImageIcon(
                AssetImage("assets/suggestion.png"),
                // color: Color(0xffd9d9d0),
              ),
            ),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Transform.scale(
              scale: 2,
              child: const ImageIcon(
                AssetImage("assets/host_date.png"),
                // color: Color(0xffd9d9d0),
              ),
            ),
            label: "Camera",
          ),
          BottomNavigationBarItem(
            icon: Transform.scale(
              scale: 2,
              child: const ImageIcon(
                AssetImage("assets/message.png"),
                // color: Color(0xffd9d9d0),
              ),
            ),
            label: "person",
          ),
          BottomNavigationBarItem(
            icon: Transform.scale(
              scale: 2,
              child: const ImageIcon(
                AssetImage("assets/profile.png"),
                // color: Color(0xffd9d9d0),
              ),
            ),
            label: "profile",
          ),
        ],
        onTap: (index) {
          setState(
            () {
              _currentIndex = index;
            },
          );
        },
      ),
    );
  }
}
