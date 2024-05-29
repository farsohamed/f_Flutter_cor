import 'package:cor/core/colors_manager.dart';
import 'package:cor/core/style_manager.dart';
import 'package:cor/core/texts_manager.dart';
import 'package:flutter/material.dart';

import 'login.dart';

class epassword extends StatelessWidget {
  const epassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 100, left: 10, right: 10),
        child: ListView(children: [
          Container(
            padding: EdgeInsets.only(top: 10),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Messenger",
                  icon: Icon(Icons.messenger_outlined)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 40),
            child: InkWell(
              onTap: () {
                final epass = MaterialPageRoute(builder: (context) => Login());
                Navigator.push(context, epass);
              },
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Color_Manager.color_green,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text(
                    Text_Manager.enter,
                    style: Style_Manager.textStyle14,
                  ),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
