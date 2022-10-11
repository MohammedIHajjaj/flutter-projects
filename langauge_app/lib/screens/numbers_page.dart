import 'package:flutter/material.dart';
import 'package:langauge_app/components/item.dart';
import 'package:langauge_app/models/item_model.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});

  final List<ItemModel> numbers = const [
    ItemModel(
        image: './assets/images/numbers/number_one.png',
        sound: "sounds/numbers/number_one_sound.mp3",
        jpName: "ichi",
        enName: "one"),
    ItemModel(
        image: './assets/images/numbers/number_two.png',
        sound: "sounds/numbers/number_two_sound.mp3",
        jpName: "ni",
        enName: "two"),
    ItemModel(
        image: './assets/images/numbers/number_three.png',
        sound: "sounds/numbers/number_three_sound.mp3",
        jpName: "san",
        enName: "three"),
    ItemModel(
        image: './assets/images/numbers/number_four.png',
        sound: "sounds/numbers/number_four_sound.mp3",
        jpName: "shi",
        enName: "four"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff46322b),
          title: const Text("Numbers"),
        ),
        body: ListView.builder(
          itemCount: numbers.length,
          itemBuilder: (context, index) =>
              Item(item: numbers[index], color: const Color(0xffef9235)),
        ));
  }
}
