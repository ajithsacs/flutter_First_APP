import 'package:flutter/material.dart';
import 'views/pageone.dart';
import 'views/pagetwo.dart';
import 'views/pagethree.dart';
import 'views/pagefour.dart';

//main program start
void main() {
  runApp(MaterialApp(
    title: "Routes",
    theme: ThemeData(primaryColor: Colors.black54),
    home: const MyApp(),
    // named routes to move trought the pages
    routes: {
      "/pageOne": (context) => const pageOne(),
      "/pageTwo": (context) => const pageTwo(),
      "/pageThree": (context) => const pageThree(),
      "/pageFour": (context) => const pageFour(),
      "home": ((context) => const MyApp()),
    },
  ));
}

// home page design
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home")),
      body: Appdesign(context),
    );
  }
}

//Home Screen  Design
Column Appdesign(context) {
  return Column(
    children: [
      TextButton(
          onPressed: () {
            //navigator used to move to page 1 and 'true' is used to have a back option
            Navigator.of(context)
                .pushNamedAndRemoveUntil('/pageOne', (route) => true);
          },
          child: const Text("first Page")),
      TextButton(
          onPressed: () {
            //navigator used to move to page 2 and 'true' is used to have a back option
            Navigator.of(context)
                .pushNamedAndRemoveUntil('/pageTwo', (route) => true);
          },
          child: const Text("Secound page")),
      TextButton(
          onPressed: () {
            //navigator used to move to page 3 and 'true' is used to have a back option
            Navigator.of(context)
                .pushNamedAndRemoveUntil('/pageThree', (route) => true);
          },
          child: const Text("3rd Page")),
      TextButton(
          onPressed: () {
            //navigator used to move to page 4 and 'true' is used to have a back option
            Navigator.of(context)
                .pushNamedAndRemoveUntil('/pageFour', (route) => true);
          },
          child: const Text("4th Page")),
    ],
  );
}
