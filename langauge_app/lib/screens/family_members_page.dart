import 'package:flutter/material.dart';
import 'package:langauge_app/components/item.dart';
import 'package:langauge_app/models/item_model.dart';

class FamilyMembers extends StatelessWidget {
  const FamilyMembers({super.key});

  final List<ItemModel> familyMembers = const [
    ItemModel(
        image: 'assets/images/family_members/family_father.png',
        sound: "sounds/family_members/father.wav",
        jpName: "chichioya",
        enName: "father"),
    ItemModel(
        image: './assets/images/family_members/family_mother.png',
        sound: "sounds/family_members/mother.wav",
        jpName: "hahaoya",
        enName: "mother"),
    ItemModel(
        image: './assets/images/family_members/family_daughter.png',
        sound: "sounds/family_members/daughter.wav",
        jpName: "Musume",
        enName: "daughter"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff46322b),
          title: const Text("Numbers"),
        ),
        body: ListView.builder(
          itemCount: familyMembers.length,
          itemBuilder: (context, index) =>
              Item(item: familyMembers[index], color: Color(0xff558b37)),
        ));
  }
}
