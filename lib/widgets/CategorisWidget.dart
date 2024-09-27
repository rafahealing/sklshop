import 'package:flutter/material.dart';

class CategorisWidget extends StatelessWidget {
  const CategorisWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (int i = 5; i < 9; i++)
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                Image.asset(
                  'images/$i.jpeg',
                  width: 40,
                  height: 40,
                ),
                const Text(
                  'Paket',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                    color: Colors.black
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}