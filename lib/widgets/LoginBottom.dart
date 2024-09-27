import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginBottom extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const LoginBottom({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        padding:  const EdgeInsets.symmetric(horizontal: 30, vertical: 16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ), 
      child: Text('Button',
      textAlign: TextAlign.center,
      style: TextStyle( 
      fontSize: 16, 
      fontWeight: FontWeight.w600,
      color: Colors.white
      ),
      ),
    );
  }
}