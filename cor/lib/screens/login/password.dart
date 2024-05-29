import 'package:cor/core/colors_manager.dart';
import 'package:cor/core/style_manager.dart';
import 'package:cor/core/texts_manager.dart';
import 'package:flutter/material.dart';

import 'enter_password.dart';

class Password extends StatelessWidget {
  const Password({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 100, right: 10, left: 10),
        child: ListView(children: [
          Container(
            padding: EdgeInsets.only(top: 10),
            child: TextField(
              readOnly: false,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: Text_Manager.email,
                helperText: Text_Manager.enter_yor_email,
                icon: Icon(Icons.email_outlined),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              top: 40,
            ),
            child: TextField(
              readOnly: false,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: Text_Manager.phone,
                  helperText: Text_Manager.enter_namber,
                  icon: Icon(Icons.phone)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 40),
            child: InkWell(
              onTap: () {
                final pass =
                    MaterialPageRoute(builder: (context) => epassword());
                Navigator.push(context, pass);
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
