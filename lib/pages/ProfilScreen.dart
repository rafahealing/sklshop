import 'dart:ui';

import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.lightBlue,
        foregroundColor: Colors.white,
        title: const Text('Profil Antum'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings_rounded),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          Column(
            children: const [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('images/6.jpeg'), // Corrected
              ),
              SizedBox(height: 10),
              Text(
                'Rafa CIHUYY',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text('Junior Product Designer'),
            ],
          ),
          const SizedBox(height: 25),
          Row(
            children: const [
              Padding(
                padding: EdgeInsets.only(right: 5),
                child: Text(
                  'Lengkapi profil Anda',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                '(1/5)',
                style: TextStyle(color: Colors.blue),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: List.generate(5, (index) {
              return Expanded(
                child: Container(
                  height: 7,
                  margin: EdgeInsets.only(right: index == 4 ? 0 : 6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: index == 0 ? Colors.blue : Colors.black12,
                  ),
                ),
              );
            }),
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 180,
            child: ListView.separated(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                final card = profilCompletionCards[index];
                return SizedBox(
                  width: 160,
                  child: Card(
                    color: Colors.lightBlue,
                    shadowColor: Colors.black12,
                    surfaceTintColor: Colors.orange,
                    child: Padding(
                      padding: EdgeInsets.all(15),
                      child: Column(
                        children: [
                          Icon(card.icon, size: 30, color: Colors.white,),
                          const SizedBox(height: 10,),
                          Text(card.title, textAlign: TextAlign.center, selectionColor: Colors.white,),
                          const Spacer(),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              foregroundColor: Colors.black,
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Text(card.buttonText),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) => const Padding(padding: EdgeInsets.only(right: 5)),
              itemCount: profilCompletionCards.length,
            ),
          ),
          const SizedBox(height: 35),
          ...List.generate(
            customListTitles.length,
            (index) {
              final title = customListTitles[index];
              return Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Card(
                  elevation: 4,
                  shadowColor: Colors.black12,
                  color: Colors.lightBlue,
                  child: ListTile(
                    leading: Icon(title.icon, color: Colors.white,),
                    title: Text(title.title, selectionColor: Colors.white,),
                    trailing: const Icon(Icons.chevron_right, color: Colors.white,),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class ProfilCompletionCard {
  final String title;
  final String buttonText;
  final IconData icon;

  ProfilCompletionCard({
    required this.title,
    required this.buttonText,
    required this.icon,
  });
}

List<ProfilCompletionCard> profilCompletionCards = [
  ProfilCompletionCard(
    title: 'Tetapkan detail profil Anda',
    buttonText: 'Lanjutkan',
    icon: CupertinoIcons.person_circle,
  ),
  ProfilCompletionCard(
    title: 'Bagikan 5 Orang Terhebat Kamu!!!',
    buttonText: 'Undang',
    icon: CupertinoIcons.share,
  ),
  ProfilCompletionCard(
    title: 'Pilih Kategori',
    buttonText: 'Tambah',
    icon: CupertinoIcons.pin,
  ),
  ProfilCompletionCard(
    title: 'Pilih Kategori',
    buttonText: 'Tambah',
    icon: CupertinoIcons.pin,
  ),
  ProfilCompletionCard(
    title: 'Bagikan 5 Orang Terhebat Kamu!!!',
    buttonText: 'Undang',
    icon: CupertinoIcons.share,
  ),
  ProfilCompletionCard(
    title: 'Tetapkan detail profil Anda',
    buttonText: 'Lanjutkan',
    icon: CupertinoIcons.person_circle,
  ),
];


class CustomListTitle {
  final IconData icon;
  final String title;

  CustomListTitle({
    required this.icon,
    required this.title,
  });
}

List<CustomListTitle> customListTitles = [
  CustomListTitle(icon: Icons.insights, title: 'Activity'),
  CustomListTitle(icon: Icons.location_on_outlined, title: 'Location'),
  CustomListTitle(icon: CupertinoIcons.bell, title: 'Notifications'),
  CustomListTitle(icon: CupertinoIcons.arrow_right_arrow_left, title: 'Logout'),
];
