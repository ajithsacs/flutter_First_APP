import 'package:flutter/material.dart';

class pageOne extends StatelessWidget {
  const pageOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("FirstPage")),
        body: Row(
          children: [
            const Text("page1"),
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
