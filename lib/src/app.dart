import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void test() {}
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
                child: TextButton(onPressed: test, child: Text("$index")),
              );
            }),
          )),
    );
  }
}
