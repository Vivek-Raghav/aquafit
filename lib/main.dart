import 'package:aquafit/screens/Home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AquaFit());
}

class AquaFit extends StatelessWidget {
  const AquaFit({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
