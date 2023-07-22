import 'package:flutter/material.dart';

class BackgroudApp extends StatelessWidget {
  const BackgroudApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.black45,
        constraints: const BoxConstraints(maxWidth: 400),
        child: const Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Image(
              image: AssetImage('logo.png'),
              width: 400,
            ),
          ),
        ),
      ),
    );
  }
}
