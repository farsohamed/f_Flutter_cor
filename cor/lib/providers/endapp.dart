import 'package:flutter/material.dart';

class endapp extends StatelessWidget {
  const endapp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.only(top: 200),
          child: Container(
            alignment: Alignment.center,
            child: CircleAvatar(
              radius: 90,
              backgroundImage: NetworkImage(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTndeDerECGf-Trh67aeKLYRr6luMx_minhDQ&usqp=CAU"),
            ),
          ),
        ),
        Container(
          child: Text(
            "Fars",
            style: TextStyle(),
          ),
        ),
        Container(
            child: Text(
          "Fars",
          style: TextStyle(color: Colors.blueGrey),
        )),
        Container(
            child: Text(
          "Fars",
          style: TextStyle(color: Colors.blueGrey),
        )),
        Container(
            child: Text(
          "Fars",
          style: TextStyle(color: Colors.blueGrey),
        )),
      ]),
    );
  }
}

class col {
  static const Color ppp = Colors.red;
}
