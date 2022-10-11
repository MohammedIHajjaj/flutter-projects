import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  String txt;
  Color color;
  void Function()? onTap;
  Category({required this.txt, required this.color, this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 80,
        padding: const EdgeInsets.only(left: 18.0),
        alignment: Alignment.centerLeft,
        color: color,
        child: Text(
          txt,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
