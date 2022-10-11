import 'package:flutter/material.dart';
import 'package:langauge_app/components/category.dart';
import 'package:langauge_app/screens/colors_page.dart';
import 'package:langauge_app/screens/family_members_page.dart';
import 'package:langauge_app/screens/numbers_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffef6db),
      appBar: AppBar(
        backgroundColor: const Color(0xff46322b),
        title: const Text("LanguageApp"),
      ),
      body: Column(
        children: [
          Category(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const NumbersPage(),
              ),
            ),
            txt: "Numbers",
            color: const Color(0xffef9235),
          ),
          Category(
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => const FamilyMembers())),
            txt: "Family Members",
            color: Colors.green,
          ),
          Category(
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => const ColorsPage())),
            txt: "Colors",
            color: Colors.purple,
          ),
        ],
      ),
    );
  }
}
