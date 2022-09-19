import 'package:flutter/material.dart';
import 'package:flutter_taquin/src/taquin.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Taquin taquin = Taquin.create();
  void nouvellegame() {
    setState(() {
      taquin = Taquin.create();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text("Taquin"),
          ),
          body: GridView.count(
            crossAxisCount: 3,
            children: List.generate(9, (index) {
              return Center(
                child:
                    TextButton(onPressed: nouvellegame, child: Text("$index")),
              );
            }),
          )),
    );
  }
}
