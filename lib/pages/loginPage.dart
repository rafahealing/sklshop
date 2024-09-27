import 'package:flutter/material.dart';
import 'package:skl_pertama/widgets/LoginBottom.dart';
import 'package:skl_pertama/widgets/LoginWidget.dart';
import 'package:gap/gap.dart';




class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LoginWidget(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('images/6.jpeg'),
            // title
            const Gap(60),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Text('Kartu Internet Dengan Sinyal No.1 Asia', 
              textAlign: TextAlign.center,
              style: TextStyle( 
                fontSize: 26, 
                fontWeight: FontWeight.w600,
                height: 36 / 26
                ),
              ),
            ),
            // sub title
            const Gap(60),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36),
              child: Text('Yuk Gabung jadi Warga by.CIHUYY!', 
              textAlign: TextAlign.center,
              style: TextStyle( 
                fontSize: 16, 
                height: 26 / 16,
                ),
              ),
            ),
            
            // action
            const Gap(60),
            LoginBottom(
              text: 'Gabung huy',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}