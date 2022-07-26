import 'package:flutter/material.dart';

class pageFour extends StatelessWidget {
  const pageFour({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("FirstPage")),
        body: Row(
          children: [
            const Text("page4"),
            TextButton(
                onPressed: () {
                  Navigator.of(context)
                      .pushNamedAndRemoveUntil('home', (route) => true);
                },
                child: const Text("Home"))
          ],
        ));
  }
}
