import 'package:cartoon_app/model/character.dart';
import 'package:flutter/material.dart';

class CharacterWidget extends StatelessWidget {
  final Character character;

  const CharacterWidget({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    // TODO 0: Use basic widgets you already know to create this character widget/cell.
  
    return Container(
      padding: const EdgeInsets.all(8.0),
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 239, 132, 132),
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
      ),
      child: Row(
        children: [
          // Imagen del personaje
          Image.asset(
            character.image,
            width: 100,
            height: 100,
          ),
          const SizedBox(width: 16.0), // Espacio entre la imagen y el texto

          // Información del personaje
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  character.name,
                  style: const TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4.0),
                Text(
                  character.jobTitle, // Título del trabajo
                  style: const TextStyle(
                    fontSize: 16.0,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ),

          // Calificación del personaje (estrellas)
          Container(
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: Colors.green.shade400,
              shape: BoxShape.circle,
            ),
            child: Text(
              character.stars.toString(), // Calificación
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}