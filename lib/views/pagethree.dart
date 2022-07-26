import 'package:flutter/material.dart';

class pageThree extends StatelessWidget {
  const pageThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("FirstPage")),
        body: Row(
          children: [
            const Text("page3"),
            TextButton(
                onPressed: () {
                  Navigator.of(context)
                      .pushNamedAndRemoveUntil('home', (route) => false);
                },
                child: const Text("Home"))
          ],
        ));
  }
}
