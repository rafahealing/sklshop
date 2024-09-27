import 'dart:ui';

import 'package:flutter/material.dart';

class LoginWidget extends StatelessWidget {
  final Widget child;

  const LoginWidget({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F9FC),
      body: Stack(fit: StackFit.expand, children: [
        Positioned(
          right: -50,
          top: -49,
          child: _bluredCircle(color: 0x3FA2F6),
        ),
        Positioned(
          left: -66,
          bottom: -72,
          child: _bluredCircle(color: 0x3FA2F6),
        ),
        SafeArea(child: child)
      ],),
    );
  }

  Container _bluredCircle({required int color}) {
    return Container(
      width: 161,
      height: 161,
      decoration: BoxDecoration(
      color: Color(color),
      borderRadius: BorderRadius.circular(161 / 2),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 170,
          sigmaY: 170,
        ),
        child: Container(),
        ),
    );
  }
}