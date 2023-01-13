import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeActivity(),
    );
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({Key? key}) : super(key: key);

  MySanckbar(message, context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: message)
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My  Home"),
        titleSpacing: 10,
        toolbarHeight: 50,
        toolbarOpacity: 1,
        elevation: 7,
        backgroundColor: Colors.black54,
        actions: [
          IconButton(onPressed: () {MySanckbar(Text("I am Comment"), context);}, icon: Icon(Icons.comment)),
          IconButton(onPressed: () {MySanckbar(Text("I am Search"), context);}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {MySanckbar(Text("I am Setting"), context);}, icon: Icon(Icons.settings)),
         ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){MySanckbar(Text("I am Floating Button"), context);},
        elevation: 10,
        child: Icon(Icons.home),
        backgroundColor: Colors.black54,
      ),
    );
  }
}
