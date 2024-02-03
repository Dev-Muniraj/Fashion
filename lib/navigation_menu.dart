import 'package:fashion_design/features/closet/page/discover/discover.dart';
import 'package:fashion_design/features/closet/page/groups/my_groups.dart';
import 'package:fashion_design/features/closet/page/my_closet/my_closet.dart';
import 'package:fashion_design/features/closet/page/saved_page/saved_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'features/closet/page/chat_screen/chat_screen.dart';

class NavigationMenu extends StatefulWidget {
  const NavigationMenu({super.key,});

  @override
  State<NavigationMenu> createState() => _NavigationMenuState();
}

class _NavigationMenuState extends State<NavigationMenu> {

  int _currentIndex = 0;
  void _navigateBottomBar(int index){
    setState(() {
      _currentIndex = index;
    });
  }
  List<Widget> body =  [
    const MyClosetPage(),
    const MyGroups(),
    const DiscoverPage(),
    const SavedScreen(),
    const ChatScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        backgroundColor: Colors.black,
        selectedItemColor: Color(0xFF01579B),
        unselectedItemColor: Color(0xffDDDDDD),
        currentIndex: _currentIndex,
        onTap: _navigateBottomBar,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.person,),label: "My Closet",backgroundColor: Colors.white),
          BottomNavigationBarItem(icon: Icon(Icons.groups,),label: "Groups",backgroundColor: Colors.white),
          BottomNavigationBarItem(icon: Icon(Icons.home,),label: "Discover",backgroundColor: Colors.white),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.heart_circle,),label: "Saved",backgroundColor: Colors.white),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.chat_bubble_2_fill,),label: "Chat",backgroundColor: Colors.white),
      ],
      ),
      body: Container(
        child: body[_currentIndex],
      ),
    );
  }
}
