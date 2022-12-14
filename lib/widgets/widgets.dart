import 'package:flutter/material.dart';

class DataVal extends StatelessWidget {
  String text;
  String value;
  IconData icon;
  Color color = const Color.fromARGB(255, 157, 178, 231);
  Color innercolor = Colors.white;
  DataVal({
    super.key,
    required this.text,
    required this.value,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: color.withOpacity(0.4)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            FittedBox(
              child: Text(
                text,
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: innercolor),
              ),
            ),
            FittedBox(
              child: Icon(
                icon,
                size: 40,
                color: innercolor,
              ),
            ),
            FittedBox(
              child: Text(
                value,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: innercolor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
