import 'package:flutter/material.dart';
import 'package:langauge_app/models/item_model.dart';
import 'package:audioplayers/audioplayers.dart';

class Item extends StatelessWidget {
  final ItemModel item;
  final Color color;
  Item({required this.item, required this.color, super.key});

  final player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: color,
      child: Row(
        children: [
          Container(
            color: const Color(0xfffef6db),
            child: Image.asset(
              item.image,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.jpName,
                  style: const TextStyle(color: Colors.white, fontSize: 20),
                ),
                Text(
                  item.enName,
                  style: const TextStyle(color: Colors.white, fontSize: 20),
                ),
              ],
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          IconButton(
            icon: const Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 30,
            ),
            onPressed: () {
              try {
                // await player.setSource(AssetSource('assets/sounds/numbers'));
                player.play(AssetSource(item.sound));
              } catch (exception) {
                print(exception);
              }
            },
          ),
        ],
      ),
    );
  }
}
