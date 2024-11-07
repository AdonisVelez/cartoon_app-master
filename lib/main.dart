import 'package:flutter/material.dart';
import 'package:cartoon_app/model/characters_data.dart';
import 'package:cartoon_app/widgets/character_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cartoooooonery'),
        centerTitle: true,  // Centra el título
        backgroundColor: const Color.fromRGBO(255, 255, 3, 1),
        toolbarHeight: 80.0, 
      ),
      body: ListView(
        // TODO 1: Check the docs for ListView. You need to pass something to its children
    
        children: characters.map((character) {
          return CharacterWidget(character: character);
        }).toList(),
      ),
    );
  }
}
