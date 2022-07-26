import 'package:flutter/material.dart';

class pageTwo extends StatelessWidget {
  const pageTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("FirstPage")),
        body: Row(
          children: [
            const Text("page2"),
            TextButton(
                onPressed: () {
                  Navigator.of(context)
                      .pushNamedAndRemoveUntil('home', (route) => true);
                },
                child: Text("Home"))
          ],
        ));
  }
}
