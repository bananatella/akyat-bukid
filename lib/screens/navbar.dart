import 'package:flutter/material.dart';
import 'package:akyat_bukid/screens/newsfeed/feed.dart';
import 'package:akyat_bukid/screens/booking.dart';
import 'package:akyat_bukid/screens/message.dart';
import 'package:akyat_bukid/screens/notification.dart';
import 'package:akyat_bukid/screens/profile.dart';


class NavPage extends StatefulWidget{
  @override
  NavPageState createState() => NavPageState();
}

class NavPageState extends State<NavPage> {
 int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final List<Widget> tabs = [
      FeedPage(),
      BookingPage(),
      MessagePage(),
      NotificationPage(),
      ProfilePage(),
    ];
  
    return Scaffold(

      appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(
            color: Colors.black
          ),
          title: Image(
            image: AssetImage('assets/images/Logo2.png'),
            width: 100.0,
            height: 100.0,
          ),
          centerTitle: true,
        ),
        
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        currentIndex: selectedIndex,
        onTap: (index) => setState(() {
            selectedIndex = index;}),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home'
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.hiking),
            label: 'Book'
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Message'
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notification'
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile'
          ),
        ],    
      ),
      body: Container(
        child: tabs [selectedIndex],      
      )             
    );
  }
}