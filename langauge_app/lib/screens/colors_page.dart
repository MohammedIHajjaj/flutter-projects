import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:langauge_app/components/item.dart';
import 'package:langauge_app/models/item_model.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});

  final List<ItemModel> colors = const [
    ItemModel(
        image: 'assets/images/colors/color_black.png',
        sound: "sounds/colors/black.wav",
        jpName: "Burakku",
        enName: "Black"),
    ItemModel(
        image: 'assets/images/colors/color_brown.png',
        sound: "sounds/colors/brown.wav",
        jpName: "Chairo",
        enName: "Brown"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff46322b),
          title: const Text("Numbers"),
        ),
        body: ListView.builder(
          itemCount: colors.length,
          itemBuilder: (context, index) =>
              Item(item: colors[index], color: Color(0xff79359f)),
        ));
  }
}
