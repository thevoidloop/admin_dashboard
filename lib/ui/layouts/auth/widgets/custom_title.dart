import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTitle extends StatelessWidget {
  const CustomTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          Image.asset(
            'logo.png',
            width: 100,
            height: 100,
          ),
          const SizedBox(height: 20),
          FittedBox(
            fit: BoxFit.contain,
            child: Text(
              'The moment is now',
              style: GoogleFonts.bebasNeue(fontSize: 60, fontWeight: FontWeight.bold, color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
