import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(13),
      child: Row(
        children: [
          Transform.rotate(
          angle: 5.5, // Putar 30 derajat
          child: const Icon(Icons.wifi, color: Colors.lightBlue, size: 30,),
        ),
          const Padding(
            padding: EdgeInsets.only(left: 0),
            child: Text(
              'by.CIHUYY',
              style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                  color: Colors.lightBlue
                  ),
            ),
          ),
          const Spacer(),
          badges.Badge(
            badgeStyle: const badges.BadgeStyle(
              badgeColor: Colors.blue,
              padding: EdgeInsets.all(7),
            ),
            badgeContent: const Text(
              '2',
              style: TextStyle(color: Colors.white),
            ),
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, "messageListPage");
              },
              child: const Icon(
                Icons.message_rounded,
                size: 32,
                color: Colors.lightBlue,
              ),
            ),
          )
        ],
      ),
    );
  }
}
