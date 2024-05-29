import 'package:cor/core/colors_manager.dart';
import 'package:cor/core/style_manager.dart';
import 'package:cor/core/texts_manager.dart';
import 'package:flutter/material.dart';

import 'login.dart';

class singup extends StatefulWidget {
  const singup({super.key});

  @override
  State<singup> createState() => _singupState();
}

class _singupState extends State<singup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 25, right: 10, left: 10),
        child: ListView(
          children: [
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(20),
              child: CircleAvatar(
                radius: 80,
                // backgroundImage: AssetImage("lib/as.jpg"),
                backgroundImage: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTndeDerECGf-Trh67aeKLYRr6luMx_minhDQ&usqp=CAU"),
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(10),
              child: Text(
                "Create Acount",
                style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.w500,
                    color: Colors.blueAccent),
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(
                top: 20,
                right: 8,
                bottom: 8,
                left: 10,
              ),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Username",
                    helperText: "Enter You Username",
                    icon: Icon(Icons.account_circle)),
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(
                top: 10,
                right: 8,
                bottom: 8,
                left: 10,
              ),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Email",
                    helperText: "Enter You Email",
                    icon: Icon(Icons.email_outlined)),
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(
                top: 10,
                right: 8,
                bottom: 8,
                left: 10,
              ),
              child: TextField(
                readOnly: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Password",
                  helperText: "Enter Yor Password",
                  icon: Icon(Icons.lock),
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(
                top: 10,
                right: 8,
                bottom: 8,
                left: 10,
              ),
              child: TextField(
                readOnly: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Read Password",
                  helperText: "Enter Yor Read Password",
                  icon: Icon(Icons.lock),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                  child: InkWell(
                    onTap: () {
                      final route =
                          MaterialPageRoute(builder: (context) => Login());
                      Navigator.push(context, route);
                    },
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color_Manager.color_green,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text(
                          Text_Manager.login,
                          style: Style_Manager.textStyle14,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
