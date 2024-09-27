// import 'package:flutter/material.dart';
// import 'package:skl_pertama/widgets/CategorisWidget.dart';
// import 'package:skl_pertama/widgets/HomeAppBar.dart';
// import 'package:skl_pertama/widgets/ItemsWidget.dart';
// import 'package:curved_navigation_bar/curved_navigation_bar.dart';

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   // ignore: library_private_types_in_public_api
//   _HomepageState createState() => _HomepageState();
// }

// class _HomepageState extends State<Homepage> {
//   int _currentIndex = 0;

//   final List<Widget> _pages = [
//     HomepageContent(),
//     const CartPage(),
//     ProfilePage(),
//   ];


//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ListView(
//         children: [
//           const HomeAppBar(),
//           Container(
//             padding: const EdgeInsets.only(top: 15),
//             decoration: const BoxDecoration(
//               color: Colors.lightBlue,
//               borderRadius: BorderRadius.only(
//                 topLeft: Radius.circular(35),
//                 topRight: Radius.circular(35),
//               ),
//             ),
//             child: Column(
//               children: [
//                 Container(
//                   margin: const EdgeInsets.symmetric(horizontal: 15),
//                   padding: const EdgeInsets.symmetric(horizontal: 15),
//                   height: 50,
//                   decoration: BoxDecoration(
//                     color: Colors.white38,
//                     borderRadius: BorderRadius.circular(30),
//                   ),
//                   child: Row(
//                     children: [
//                       Container(
//                         margin: const EdgeInsets.only(left: 5),
//                         height: 50,
//                         width: 300,
//                         child: TextFormField(
//                           decoration: const InputDecoration(
//                             border: InputBorder.none,
//                             hintText: "Cari apapun bisa...",
//                           ),
//                         ),
//                       ),
//                       const Spacer(),
//                       const Icon(
//                         Icons.camera_alt,
//                         size: 27,
//                         color: Colors.white,
//                       ),
//                     ],
//                   ),
//                 ),
//                 Container(
//                   alignment: Alignment.centerLeft,
//                   margin: const EdgeInsets.symmetric(
//                     vertical: 20,
//                     horizontal: 10,
//                   ),
//                   child: const Text(
//                     '- Kategori',
//                     style:  TextStyle(
//                       fontSize: 25,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.white
//                     ),
//                   ),
//                 ),

//                 CategorisWidget(),

//                 Container(
//                   alignment: Alignment.centerLeft,
//                   margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
//                   child: const Text(
//                     '- Yuk Pilih Kuota Data',
//                     style: TextStyle(
//                       fontSize: 25,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.white,
//                     ),
//                   ),
//                 ),
//                  ItemsWidget(),
//               ],
//             ),
//           )
//         ],
//       ),
//       bottomNavigationBar: CurvedNavigationBar(
//         backgroundColor: Colors.transparent,
//         onTap: (index) {
//           // Handle navigation based on index
//           switch (index) {
//             case 0:
//               // Handle list navigation
//               break;
//             case 1:
//               Navigator.pushNamed(context, "cartPage");
//               break;
//             case 2:
//               // Handle home navigation
//               break;
//             case 3:
//               Navigator.pushNamed(context, "profilScreen");
//               break;
//             case 4:
//               // Handle settings navigation
//               break;
//             default:
//               break;
//           }
//         },
//         height: 50,
//         color: Colors.lightBlue,
//         items: [
//           Icon(
//             Icons.list,
//             size: 20,
//             color: Colors.white,
//           ),
//           Icon(
//             Icons.shopping_bag,
//             size: 20,
//             color: Colors.white,
//           ),
//           Icon(
//             Icons.home,
//             size: 20,
//             color: Colors.white,
//           ),
//           Icon(
//             Icons.face,
//             size: 20,
//             color: Colors.white,
//           ),
//           Icon(
//             Icons.settings,
//             size: 20,
//             color: Colors.white,
//           ),
//         ],
//       ),

//     );
//   }
// }

// ignore: file_names, depend_on_referenced_packages
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:skl_pertama/pages/ProfilScreen.dart';
import 'package:skl_pertama/pages/cartPage.dart';
import 'package:skl_pertama/pages/loginPage.dart';
import 'package:skl_pertama/widgets/CategorisWidget.dart';
import 'package:skl_pertama/widgets/HomeAppBar.dart';
import 'package:skl_pertama/widgets/ItemsWidget.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    HomepageContent(),
    const CartPage(),
    ProfileScreen(),
    LoginPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        height: 50,
        color: Colors.blue,
        items: const [
          Icon(
            Icons.home,
            size: 20,
            color: Colors.white,
          ),
          Icon(
            Icons.shopping_bag,
            size: 20,
            color: Colors.white,
          ),
          Icon(
            Icons.person_sharp,
            size: 20,
            color: Colors.white,
          ),
          Icon(
            Icons.login,
            size: 20,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}

class HomepageContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const HomeAppBar(),
        Container(
          padding: const EdgeInsets.only(top: 15),
          decoration: const BoxDecoration(
            color: Colors.lightBlue,
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
                  color: Colors.white24,
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
                          hintText: "Search here...",
                        ),
                      ),
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.camera_alt,
                      size: 27,
                      color: Colors.white,
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
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),

              // Widget Categories
              CategorisWidget(),

              // Widget Items
              Container(
                alignment: Alignment.centerLeft,
                margin:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                child: const Text(
                  'Best Selling',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),

              // Widget Items
              ItemsWidget(),
            ],
          ),
        )
      ],
    );
  }
}