import 'package:flutter/material.dart';
import 'package:skl_pertama/widgets/CategorisWidget.dart';
import 'package:skl_pertama/widgets/ItemsWidget.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const HomePage(),
          Container(
            padding: const EdgeInsets.only(top: 15),
            decoration: const BoxDecoration(
              color: Color(0xFFEDECF),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35),
              ),
            ),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 5),
                        height: 50,
                        width: 300,
                        child: TextFormField(
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: "Search here bro...",
                          ),
                        ),
                      ),
                      const Spacer(),
                      const Icon(
                        Icons.camera_alt,
                        size: 27,
                        color: Color(0xFF4C53A5),
                      ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 10,
                  ),
                  child: const Text(
                    'Categories',
                    style:  TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF4C53A5)
                    ),
                  ),
                ),
                CategorisWidget(),

                Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  child: const Text(
                    'Best Selling',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF4C53A5),
                    ),
                  ),
                ),
                ItemsWidget(),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        onTap: (index) {},
        height: 70,
        color: const Color(0xFF4C53A5),
        items: const [
            Icon(
              Icons.home,
              size: 30,
              color: Colors.white,
            ),
            Icon(
              Icons.shopping_cart,
              size: 30,
              color: Colors.white,
            ),
            Icon(
              Icons.list,
              size: 30,
              color: Colors.white,
            ),
        ],
      ),
    );
  }
}