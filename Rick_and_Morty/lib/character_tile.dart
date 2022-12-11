import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'models.dart';

// Create a new stateless widget and give it a class attribute
class CharacterTile extends StatelessWidget {
  final Character character;
  const CharacterTile({
    Key? key,
    required this.character,
  }) : super(key: key);

  // Override the build() function: Function prototype: Widget build(BuildContext context) Returns GridTile() Edit the GridView.builder() and the GridTile() widgets
  @override
  Widget build(BuildContext context) {
    return GridTile(
        child: GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 15,
        mainAxisSpacing: 15,
      ),
      itemBuilder: (BuildContext context, int index) {
        return Container(
          padding: const EdgeInsets.all(6),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(character.imgUrl),
              fit: BoxFit.cover,
            ),
          ),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              character.name,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        );
      },
    ));
  }
}
