import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MaterialApp(
      home: PortFolio()
  ));
}

class PortFolio extends StatefulWidget {
  const PortFolio({Key? key}) : super(key: key);

  @override
  State<PortFolio> createState() => _PortFolioState();
}

class _PortFolioState extends State<PortFolio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GNav(
            rippleColor: (Colors.grey[800])!, // tab button ripple color when pressed
            hoverColor: (Colors.grey[700])!, // tab button hover color
            haptic: true, // haptic feedback
            tabBorderRadius: 15,
            tabActiveBorder: Border.all(color: Colors.black, width: 1), // tab button border
            tabBorder: Border.all(color: Colors.grey, width: 1), // tab button border
            tabShadow: [BoxShadow(color: Colors.grey.withOpacity(0.5), blurRadius: 8)], // tab button shadow
            curve: Curves.easeOutExpo, // tab animation curves
            duration: const Duration(milliseconds: 900), // tab animation duration
            gap: 8, // the tab button gap between icon and text
            color: Colors.grey[800], // unselected icon color
            activeColor: Colors.purple, // selected icon and text color
            iconSize: 24, // tab button icon size
            tabBackgroundColor: Colors.purple.withOpacity(0.1), // selected tab background color
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5), // navigation bar padding
            tabs: const [
              // GButton(
              //   // icon: FontAwesomeIcons.house,
              //   text: 'Home',
              // ),
              //   GButton(
              //     icon: FontAwesomeIcons.house,
              //     text: 'Likes',
              //   ),
              //   GButton(
              //     icon: FontAwesomeIcons.addressBook,
              //     text: 'Search',
              //   ),
              //   GButton(
              //     icon: FontAwesomeIcons.blog,
              //     text: 'blog',
              //   )
            ]
        ),
      ),
    );
  }
}
