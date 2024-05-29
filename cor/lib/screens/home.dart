import 'package:cor/providers/hometo.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../choz/chozfayf.dart';
import '../choz/chozfoe.dart';
import '../home/chozhom.dart';
import '../home/fonhome.dart';
import '../choz/chozon.dart';
import '../choz/chozs.dart';
import '../choz/chozthe.dart';
import '../choz/chozto.dart';
import '../providers/fla.dart';
import '../providers/hatf.dart';
import '../providers/hatfto.dart';
import '../providers/homthe.dart';
import '../providers/homefor.dart';
import '../providers/lap.dart';
import '../providers/lapto.dart';
import 'package:firebase_auth/firebase_auth.dart';

class home extends StatelessWidget {
  // static const String screen_ch = "hallo";

  final serche = TextEditingController();

  // final _auth = FirebaseAuth.instance;

  // late User singuser;

  @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   getCurrent();
  // }

  // void getCurrent() {
  //   try {
  //     final user = _auth.currentUser;

  //     if (user != null) {
  //       singuser = user;
  //       print(singuser.email);
  //     }
  //   } catch (e) {
  //     print(e);
  //   }
  // }

  void dispose() {
    serche.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 139, 168, 236),
        centerTitle: true,
        title: Text("Oen & One",
            style: TextStyle(
                color: Colors.indigo,
                fontWeight: FontWeight.bold,
                fontSize: 26)),
        actions: [
          PopupMenuButton(
            icon: Icon(
              Icons.mobile_friendly_outlined,
              color: Colors.indigo,
            ),
            itemBuilder: (_) => [
              PopupMenuItem(
                child: Text("Setteing"),
              ),
              PopupMenuItem(
                child: Text("dfds"),
              ),
              PopupMenuItem(
                child: Text("dfds"),
              ),
            ],
          ),
        ],
      ),
      drawer: Drawer(),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 228, 228, 227),
            borderRadius: BorderRadius.circular(50)),
        child: SingleChildScrollView(
          child: Column(children: [
            Container(
              margin: EdgeInsets.all(25),
              padding: EdgeInsets.symmetric(horizontal: 10),
              height: 60,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(50)),
              child: TextField(
                controller: serche,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Search here...",
                  hintStyle: TextStyle(color: Colors.black),
                  suffixIcon: Icon(
                    Icons.search,
                    color: Colors.indigo,
                  ),
                ),
              ),
            ),
            Container(
              child: Text(
                "Home",
                style: TextStyle(
                    color: Colors.indigo,
                    fontWeight: FontWeight.bold,
                    fontSize: 26),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  VerticalDivider(
                    width: 10,
                    thickness: 1,
                    indent: 50,
                    endIndent: 30,
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                    onPressed: () {},
                    child: Row(children: [
                      Icon(
                        Icons.add_chart_sharp,
                        color: Colors.green,
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Home",
                        style: TextStyle(
                            color: Colors.indigo,
                            fontWeight: FontWeight.bold,
                            fontSize: 17),
                      ),
                    ]),
                  ),
                  VerticalDivider(
                    width: 50,
                    thickness: 1,
                    indent: 50,
                    endIndent: 30,
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Color.fromARGB(255, 255, 255, 255))),
                    onPressed: () {
                      final fn =
                          MaterialPageRoute(builder: (context) => chozhome());
                      Navigator.push(context, fn);
                    },
                    child: Row(children: [
                      Icon(
                        Icons.add_chart_sharp,
                        color: Colors.green,
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Shoes",
                        style: TextStyle(
                            color: Colors.indigo,
                            fontWeight: FontWeight.bold,
                            fontSize: 17),
                      ),
                    ]),
                  ),
                  VerticalDivider(
                    width: 50,
                    thickness: 1,
                    indent: 50,
                    endIndent: 30,
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Color.fromARGB(255, 255, 255, 255))),
                    onPressed: () {
                      final fn =
                          MaterialPageRoute(builder: (context) => fonhome());

                      Navigator.push(context, fn);
                    },
                    child: Row(children: [
                      Icon(
                        Icons.add_chart_sharp,
                        color: Colors.green,
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Electronics",
                        style: TextStyle(
                            color: Colors.indigo,
                            fontWeight: FontWeight.bold,
                            fontSize: 17),
                      ),
                    ]),
                  ),
                  VerticalDivider(
                    width: 50,
                    thickness: 1,
                    indent: 50,
                    endIndent: 30,
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Color.fromARGB(255, 255, 255, 255))),
                    onPressed: () {},
                    child: Row(children: [
                      Icon(
                        Icons.add_chart_sharp,
                        color: Colors.green,
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Accessories",
                        style: TextStyle(
                            color: Colors.indigo,
                            fontWeight: FontWeight.bold,
                            fontSize: 17),
                      ),
                    ]),
                  ),
                  VerticalDivider(
                    width: 10,
                    thickness: 1,
                    indent: 50,
                    endIndent: 30,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              width: double.infinity,
              child: Text(
                "Best Selling",
                style: TextStyle(
                    color: Colors.indigo,
                    fontWeight: FontWeight.bold,
                    fontSize: 28),
              ),
            ),
            Column(
              children: [
                Container(
                    margin: EdgeInsets.symmetric(vertical: 20),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: const Color.fromARGB(255, 255, 255, 255),
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 12),
                          width: 173,
                          height: 280,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 50,
                                    height: 30,
                                    margin: EdgeInsets.only(
                                        left: 10, top: 12, right: 10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Colors.indigo,
                                    ),
                                    child: Center(
                                      child: Text(
                                        "-40%",
                                        style: TextStyle(
                                          color: const Color.fromARGB(
                                              255, 255, 255, 255),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                        left: 60, top: 10, right: 10),
                                    child: Icon(
                                      Icons.favorite_border,
                                      color: Colors.red,
                                      size: 30,
                                    ),
                                  ),
                                ],
                              ),
                              InkWell(
                                onTap: () {
                                  final fn = MaterialPageRoute(
                                      builder: (context) => hatfto());
                                  Navigator.push(context, fn);
                                },
                                child: Image.asset('lib/models/nm.jpg',
                                    height: 100, width: 100),
                              ),
                              SizedBox(height: 10),
                              Container(
                                margin: EdgeInsets.only(right: 55),
                                child: Text(
                                  "Higj heels",
                                  style: TextStyle(
                                      color: Colors.indigo,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(height: 10),
                              Container(
                                margin: EdgeInsets.only(right: 55),
                                child: Text(
                                  "Shoes high heels \n women \n pumps.purple-8.5",
                                  style: TextStyle(
                                    color: Colors.indigo,
                                    fontSize: 12,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              SizedBox(height: 7),
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 10),
                                    child: Text(
                                      '250 LE',
                                      style: TextStyle(
                                          color: Colors.indigo,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 68),
                                    child: Icon(
                                      Icons.add_home_work_rounded,
                                      size: 25,
                                      color: Colors.indigo,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),

                        SizedBox(
                          width: 5,
                        ),

                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: const Color.fromARGB(255, 255, 255, 255),
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 12),
                          width: 173,
                          height: 280,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 50,
                                    height: 30,
                                    margin: EdgeInsets.only(
                                        left: 10, top: 12, right: 10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Colors.indigo,
                                    ),
                                    child: Center(
                                      child: Text(
                                        "-40%",
                                        style: TextStyle(
                                          color: const Color.fromARGB(
                                              255, 255, 255, 255),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                        left: 60, top: 10, right: 10),
                                    child: Icon(
                                      Icons.favorite_border,
                                      color: Colors.red,
                                      size: 30,
                                    ),
                                  ),
                                ],
                              ),
                              InkWell(
                                onTap: () {
                                  final fn = MaterialPageRoute(
                                      builder: (context) => lap());
                                  Navigator.push(context, fn);
                                },
                                child: Image.asset('lib/models/fs.jpg',
                                    height: 100, width: 100),
                              ),
                              SizedBox(height: 10),
                              Container(
                                margin: EdgeInsets.only(right: 55),
                                child: Text(
                                  "Higj heels",
                                  style: TextStyle(
                                      color: Colors.indigo,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(height: 10),
                              Container(
                                margin: EdgeInsets.only(right: 55),
                                child: Text(
                                  "Shoes high heels \n women \n pumps.purple-8.5",
                                  style: TextStyle(
                                    color: Colors.indigo,
                                    fontSize: 12,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              SizedBox(height: 7),
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 10),
                                    child: Text(
                                      '250 LE',
                                      style: TextStyle(
                                          color: Colors.indigo,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 68),
                                    child: Icon(
                                      Icons.add_home_work_rounded,
                                      size: 25,
                                      color: Colors.indigo,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),

                        // Icon(Icons.add_circle_outline_sharp),
                      ],
                    )),
                Container(
                    margin: EdgeInsets.symmetric(vertical: 20),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: const Color.fromARGB(255, 255, 255, 255),
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 12),
                          width: 173,
                          height: 280,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 50,
                                    height: 30,
                                    margin: EdgeInsets.only(
                                        left: 10, top: 12, right: 10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Colors.indigo,
                                    ),
                                    child: Center(
                                      child: Text(
                                        "-40%",
                                        style: TextStyle(
                                          color: const Color.fromARGB(
                                              255, 255, 255, 255),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                        left: 60, top: 10, right: 10),
                                    child: Icon(
                                      Icons.favorite_border,
                                      color: Colors.red,
                                      size: 30,
                                    ),
                                  ),
                                ],
                              ),
                              InkWell(
                                onTap: () {
                                  final fn = MaterialPageRoute(
                                      builder: (context) => lapto());
                                  Navigator.push(context, fn);
                                },
                                child: Image.asset('lib/models/ko.jpg',
                                    height: 100, width: 100),
                              ),
                              SizedBox(height: 10),
                              Container(
                                margin: EdgeInsets.only(right: 55),
                                child: Text(
                                  "Higj heels",
                                  style: TextStyle(
                                      color: Colors.indigo,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(height: 10),
                              Container(
                                margin: EdgeInsets.only(right: 55),
                                child: Text(
                                  "Shoes high heels \n women \n pumps.purple-8.5",
                                  style: TextStyle(
                                    color: Colors.indigo,
                                    fontSize: 12,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              SizedBox(height: 7),
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 10),
                                    child: Text(
                                      '250 LE',
                                      style: TextStyle(
                                          color: Colors.indigo,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 68),
                                    child: Icon(
                                      Icons.add_home_work_rounded,
                                      size: 25,
                                      color: Colors.indigo,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),

                        SizedBox(
                          width: 5,
                        ),

                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: const Color.fromARGB(255, 255, 255, 255),
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 12),
                          width: 173,
                          height: 280,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 50,
                                    height: 30,
                                    margin: EdgeInsets.only(
                                        left: 10, top: 12, right: 10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Colors.indigo,
                                    ),
                                    child: Center(
                                      child: Text(
                                        "-40%",
                                        style: TextStyle(
                                          color: const Color.fromARGB(
                                              255, 255, 255, 255),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                        left: 60, top: 10, right: 10),
                                    child: Icon(
                                      Icons.favorite_border,
                                      color: Colors.red,
                                      size: 30,
                                    ),
                                  ),
                                ],
                              ),
                              InkWell(
                                onTap: () {
                                  final fn = MaterialPageRoute(
                                      builder: (context) => fla());
                                  Navigator.push(context, fn);
                                },
                                child: Image.asset('lib/models/ll.jpg',
                                    height: 100, width: 100),
                              ),
                              SizedBox(height: 10),
                              Container(
                                margin: EdgeInsets.only(right: 55),
                                child: Text(
                                  "Higj heels",
                                  style: TextStyle(
                                      color: Colors.indigo,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(height: 10),
                              Container(
                                margin: EdgeInsets.only(right: 55),
                                child: Text(
                                  "Shoes high heels \n women \n pumps.purple-8.5",
                                  style: TextStyle(
                                    color: Colors.indigo,
                                    fontSize: 12,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              SizedBox(height: 7),
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 10),
                                    child: Text(
                                      '250 LE',
                                      style: TextStyle(
                                          color: Colors.indigo,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 68),
                                    child: Icon(
                                      Icons.add_home_work_rounded,
                                      size: 25,
                                      color: Colors.indigo,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),

                        // Icon(Icons.add_circle_outline_sharp),
                      ],
                    )),
                Container(
                    margin: EdgeInsets.symmetric(vertical: 20),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: const Color.fromARGB(255, 255, 255, 255),
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 12),
                          width: 173,
                          height: 280,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 50,
                                    height: 30,
                                    margin: EdgeInsets.only(
                                        left: 10, top: 12, right: 10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Colors.indigo,
                                    ),
                                    child: Center(
                                      child: Text(
                                        "-40%",
                                        style: TextStyle(
                                          color: const Color.fromARGB(
                                              255, 255, 255, 255),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                        left: 60, top: 10, right: 10),
                                    child: Icon(
                                      Icons.favorite_border,
                                      color: Colors.red,
                                      size: 30,
                                    ),
                                  ),
                                ],
                              ),
                              InkWell(
                                onTap: () {
                                  final fn = MaterialPageRoute(
                                      builder: (context) => homethe());

                                  Navigator.push(context, fn);
                                },
                                child: Image.asset('lib/models/gh.webp',
                                    height: 100, width: 100),
                              ),
                              SizedBox(height: 10),
                              Container(
                                margin: EdgeInsets.only(right: 55),
                                child: Text(
                                  "Higj heels",
                                  style: TextStyle(
                                      color: Colors.indigo,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(height: 10),
                              Container(
                                margin: EdgeInsets.only(right: 55),
                                child: Text(
                                  "Shoes high heels \n women \n pumps.purple-8.5",
                                  style: TextStyle(
                                    color: Colors.indigo,
                                    fontSize: 12,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              SizedBox(height: 7),
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 10),
                                    child: Text(
                                      '250 LE',
                                      style: TextStyle(
                                          color: Colors.indigo,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 68),
                                    child: Icon(
                                      Icons.add_home_work_rounded,
                                      size: 25,
                                      color: Colors.indigo,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: const Color.fromARGB(255, 255, 255, 255),
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 12),
                          width: 173,
                          height: 280,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 50,
                                    height: 30,
                                    margin: EdgeInsets.only(
                                        left: 10, top: 12, right: 10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Colors.indigo,
                                    ),
                                    child: Center(
                                      child: Text(
                                        "-40%",
                                        style: TextStyle(
                                          color: const Color.fromARGB(
                                              255, 255, 255, 255),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                        left: 60, top: 10, right: 10),
                                    child: Icon(
                                      Icons.favorite_border,
                                      color: Colors.red,
                                      size: 30,
                                    ),
                                  ),
                                ],
                              ),
                              InkWell(
                                onTap: () {
                                  final fn = MaterialPageRoute(
                                      builder: (context) => hatf());
                                  Navigator.push(context, fn);
                                },
                                child: Image.asset('lib/models/kk.jpg',
                                    height: 100, width: 100),
                              ),
                              SizedBox(height: 10),
                              Container(
                                margin: EdgeInsets.only(right: 55),
                                child: Text(
                                  "Higj heels",
                                  style: TextStyle(
                                      color: Colors.indigo,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(height: 10),
                              Container(
                                margin: EdgeInsets.only(right: 55),
                                child: Text(
                                  "Shoes high heels \n women \n pumps.purple-8.5",
                                  style: TextStyle(
                                    color: Colors.indigo,
                                    fontSize: 12,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              SizedBox(height: 7),
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 10),
                                    child: Text(
                                      '250 LE',
                                      style: TextStyle(
                                          color: Colors.indigo,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 68),
                                    child: Icon(
                                      Icons.add_home_work_rounded,
                                      size: 25,
                                      color: Colors.indigo,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    )),
                Container(
                    margin: EdgeInsets.symmetric(vertical: 20),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: const Color.fromARGB(255, 255, 255, 255),
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 12),
                          width: 173,
                          height: 280,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 50,
                                    height: 30,
                                    margin: EdgeInsets.only(
                                        left: 10, top: 12, right: 10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Colors.indigo,
                                    ),
                                    child: Center(
                                      child: Text(
                                        "-40%",
                                        style: TextStyle(
                                          color: const Color.fromARGB(
                                              255, 255, 255, 255),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                        left: 60, top: 10, right: 10),
                                    child: Icon(
                                      Icons.favorite_border,
                                      color: Colors.red,
                                      size: 30,
                                    ),
                                  ),
                                ],
                              ),
                              InkWell(
                                onTap: () {
                                  final fn = MaterialPageRoute(
                                      builder: (context) => hometo());
                                  Navigator.push(context, fn);
                                },
                                child: Image.asset('lib/models/aw.jpeg',
                                    height: 100, width: 100),
                              ),
                              SizedBox(height: 10),
                              Container(
                                margin: EdgeInsets.only(right: 55),
                                child: Text(
                                  "Higj heels",
                                  style: TextStyle(
                                      color: Colors.indigo,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(height: 10),
                              Container(
                                margin: EdgeInsets.only(right: 55),
                                child: Text(
                                  "Shoes high heels \n women \n pumps.purple-8.5",
                                  style: TextStyle(
                                    color: Colors.indigo,
                                    fontSize: 12,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              SizedBox(height: 7),
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 10),
                                    child: Text(
                                      '250 LE',
                                      style: TextStyle(
                                          color: Colors.indigo,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 68),
                                    child: Icon(
                                      Icons.add_home_work_rounded,
                                      size: 25,
                                      color: Colors.indigo,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),

                        SizedBox(
                          width: 5,
                        ),

                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: const Color.fromARGB(255, 255, 255, 255),
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 12),
                          width: 173,
                          height: 280,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 50,
                                    height: 30,
                                    margin: EdgeInsets.only(
                                        left: 10, top: 12, right: 10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Colors.indigo,
                                    ),
                                    child: Center(
                                      child: Text(
                                        "-40%",
                                        style: TextStyle(
                                          color: const Color.fromARGB(
                                              255, 255, 255, 255),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                        left: 60, top: 10, right: 10),
                                    child: Icon(
                                      Icons.favorite_border,
                                      color: Colors.red,
                                      size: 30,
                                    ),
                                  ),
                                ],
                              ),
                              InkWell(
                                onTap: () {
                                  final fn = MaterialPageRoute(
                                      builder: (context) => homefor());

                                  Navigator.push(context, fn);
                                },
                                child: Image.asset('lib/models/asd.webp',
                                    height: 100, width: 100),
                              ),
                              SizedBox(height: 10),
                              Container(
                                margin: EdgeInsets.only(right: 55),
                                child: Text(
                                  "Higj heels",
                                  style: TextStyle(
                                      color: Colors.indigo,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(height: 10),
                              Container(
                                margin: EdgeInsets.only(right: 55),
                                child: Text(
                                  "Shoes high heels \n women \n pumps.purple-8.5",
                                  style: TextStyle(
                                    color: Colors.indigo,
                                    fontSize: 12,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              SizedBox(height: 7),
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 10),
                                    child: Text(
                                      '250 LE',
                                      style: TextStyle(
                                          color: Colors.indigo,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 68),
                                    child: Icon(
                                      Icons.add_home_work_rounded,
                                      size: 25,
                                      color: Colors.indigo,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),

                        // Icon(Icons.add_circle_outline_sharp),
                      ],
                    )),
                Container(
                    margin: EdgeInsets.symmetric(vertical: 20),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: const Color.fromARGB(255, 255, 255, 255),
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 12),
                          width: 173,
                          height: 280,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 50,
                                    height: 30,
                                    margin: EdgeInsets.only(
                                        left: 10, top: 12, right: 10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Colors.indigo,
                                    ),
                                    child: Center(
                                      child: Text(
                                        "-40%",
                                        style: TextStyle(
                                          color: const Color.fromARGB(
                                              255, 255, 255, 255),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                        left: 60, top: 10, right: 10),
                                    child: Icon(
                                      Icons.favorite_border,
                                      color: Colors.red,
                                      size: 30,
                                    ),
                                  ),
                                ],
                              ),
                              InkWell(
                                onTap: () {
                                  final fn = MaterialPageRoute(
                                      builder: (context) => chozs());
                                  Navigator.push(context, fn);
                                },
                                child: Image.asset('lib/choz/img/y.webp',
                                    height: 100, width: 100),
                              ),
                              SizedBox(height: 10),
                              Container(
                                margin: EdgeInsets.only(right: 55),
                                child: Text(
                                  "Higj heels",
                                  style: TextStyle(
                                      color: Colors.indigo,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(height: 10),
                              Container(
                                margin: EdgeInsets.only(right: 55),
                                child: Text(
                                  "Shoes high heels \n women \n pumps.purple-8.5",
                                  style: TextStyle(
                                    color: Colors.indigo,
                                    fontSize: 12,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              SizedBox(height: 7),
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 10),
                                    child: Text(
                                      '250 LE',
                                      style: TextStyle(
                                          color: Colors.indigo,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 68),
                                    child: Icon(
                                      Icons.add_home_work_rounded,
                                      size: 25,
                                      color: Colors.indigo,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),

                        SizedBox(
                          width: 5,
                        ),

                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: const Color.fromARGB(255, 255, 255, 255),
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 12),
                          width: 173,
                          height: 280,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 50,
                                    height: 30,
                                    margin: EdgeInsets.only(
                                        left: 10, top: 12, right: 10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Colors.indigo,
                                    ),
                                    child: Center(
                                      child: Text(
                                        "-40%",
                                        style: TextStyle(
                                          color: const Color.fromARGB(
                                              255, 255, 255, 255),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                        left: 60, top: 10, right: 10),
                                    child: Icon(
                                      Icons.favorite_border,
                                      color: Colors.red,
                                      size: 30,
                                    ),
                                  ),
                                ],
                              ),
                              InkWell(
                                onTap: () {
                                  final fn = MaterialPageRoute(
                                      builder: (context) => chozfayf());
                                  Navigator.push(context, fn);
                                },
                                child: Image.asset('lib/choz/img/w.jpg',
                                    height: 100, width: 100),
                              ),
                              SizedBox(height: 10),
                              Container(
                                margin: EdgeInsets.only(right: 55),
                                child: Text(
                                  "Higj heels",
                                  style: TextStyle(
                                      color: Colors.indigo,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(height: 10),
                              Container(
                                margin: EdgeInsets.only(right: 55),
                                child: Text(
                                  "Shoes high heels \n women \n pumps.purple-8.5",
                                  style: TextStyle(
                                    color: Colors.indigo,
                                    fontSize: 12,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              SizedBox(height: 7),
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 10),
                                    child: Text(
                                      '250 LE',
                                      style: TextStyle(
                                          color: Colors.indigo,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 68),
                                    child: Icon(
                                      Icons.add_home_work_rounded,
                                      size: 25,
                                      color: Colors.indigo,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),

                        // Icon(Icons.add_circle_outline_sharp),
                      ],
                    )),
                Container(
                    margin: EdgeInsets.symmetric(vertical: 20),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: const Color.fromARGB(255, 255, 255, 255),
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 12),
                          width: 173,
                          height: 280,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 50,
                                    height: 30,
                                    margin: EdgeInsets.only(
                                        left: 10, top: 12, right: 10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Colors.indigo,
                                    ),
                                    child: Center(
                                      child: Text(
                                        "-40%",
                                        style: TextStyle(
                                          color: const Color.fromARGB(
                                              255, 255, 255, 255),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                        left: 60, top: 10, right: 10),
                                    child: Icon(
                                      Icons.favorite_border,
                                      color: Colors.red,
                                      size: 30,
                                    ),
                                  ),
                                ],
                              ),
                              InkWell(
                                onTap: () {
                                  final fn = MaterialPageRoute(
                                      builder: (context) => chozfor());
                                  Navigator.push(context, fn);
                                },
                                child: Image.asset('lib/choz/img/t.jpg',
                                    height: 100, width: 100),
                              ),
                              SizedBox(height: 10),
                              Container(
                                margin: EdgeInsets.only(right: 55),
                                child: Text(
                                  "Higj heels",
                                  style: TextStyle(
                                      color: Colors.indigo,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(height: 10),
                              Container(
                                margin: EdgeInsets.only(right: 55),
                                child: Text(
                                  "Shoes high heels \n women \n pumps.purple-8.5",
                                  style: TextStyle(
                                    color: Colors.indigo,
                                    fontSize: 12,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              SizedBox(height: 7),
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 10),
                                    child: Text(
                                      '250 LE',
                                      style: TextStyle(
                                          color: Colors.indigo,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 68),
                                    child: Icon(
                                      Icons.add_home_work_rounded,
                                      size: 25,
                                      color: Colors.indigo,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),

                        SizedBox(
                          width: 5,
                        ),

                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: const Color.fromARGB(255, 255, 255, 255),
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 12),
                          width: 173,
                          height: 280,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 50,
                                    height: 30,
                                    margin: EdgeInsets.only(
                                        left: 10, top: 12, right: 10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Colors.indigo,
                                    ),
                                    child: Center(
                                      child: Text(
                                        "-40%",
                                        style: TextStyle(
                                          color: const Color.fromARGB(
                                              255, 255, 255, 255),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                        left: 60, top: 10, right: 10),
                                    child: Icon(
                                      Icons.favorite_border,
                                      color: Colors.red,
                                      size: 30,
                                    ),
                                  ),
                                ],
                              ),
                              InkWell(
                                onTap: () {
                                  final fn = MaterialPageRoute(
                                      builder: (context) => chozthe());
                                  Navigator.push(context, fn);
                                },
                                child: Image.asset('lib/choz/img/r.jpg',
                                    height: 100, width: 100),
                              ),
                              SizedBox(height: 10),
                              Container(
                                margin: EdgeInsets.only(right: 55),
                                child: Text(
                                  "Higj heels",
                                  style: TextStyle(
                                      color: Colors.indigo,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(height: 10),
                              Container(
                                margin: EdgeInsets.only(right: 55),
                                child: Text(
                                  "Shoes high heels \n women \n pumps.purple-8.5",
                                  style: TextStyle(
                                    color: Colors.indigo,
                                    fontSize: 12,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              SizedBox(height: 7),
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 10),
                                    child: Text(
                                      '250 LE',
                                      style: TextStyle(
                                          color: Colors.indigo,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 68),
                                    child: Icon(
                                      Icons.add_home_work_rounded,
                                      size: 25,
                                      color: Colors.indigo,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),

                        // Icon(Icons.add_circle_outline_sharp),
                      ],
                    )),
                Container(
                    margin: EdgeInsets.symmetric(vertical: 20),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: const Color.fromARGB(255, 255, 255, 255),
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 12),
                          width: 173,
                          height: 280,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 50,
                                    height: 30,
                                    margin: EdgeInsets.only(
                                        left: 10, top: 12, right: 10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Colors.indigo,
                                    ),
                                    child: Center(
                                      child: Text(
                                        "-40%",
                                        style: TextStyle(
                                          color: const Color.fromARGB(
                                              255, 255, 255, 255),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                        left: 60, top: 10, right: 10),
                                    child: Icon(
                                      Icons.favorite_border,
                                      color: Colors.red,
                                      size: 30,
                                    ),
                                  ),
                                ],
                              ),
                              InkWell(
                                onTap: () {
                                  final fn = MaterialPageRoute(
                                      builder: (context) => chozto());
                                  Navigator.push(context, fn);
                                },
                                child: Image.asset('lib/choz/img/q.jpg',
                                    height: 100, width: 100),
                              ),
                              SizedBox(height: 10),
                              Container(
                                margin: EdgeInsets.only(right: 55),
                                child: Text(
                                  "Higj heels",
                                  style: TextStyle(
                                      color: Colors.indigo,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(height: 10),
                              Container(
                                margin: EdgeInsets.only(right: 55),
                                child: Text(
                                  "Shoes high heels \n women \n pumps.purple-8.5",
                                  style: TextStyle(
                                    color: Colors.indigo,
                                    fontSize: 12,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              SizedBox(height: 7),
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 10),
                                    child: Text(
                                      '250 LE',
                                      style: TextStyle(
                                          color: Colors.indigo,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 68),
                                    child: Icon(
                                      Icons.add_home_work_rounded,
                                      size: 25,
                                      color: Colors.indigo,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),

                        SizedBox(
                          width: 5,
                        ),

                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: const Color.fromARGB(255, 255, 255, 255),
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 12),
                          width: 173,
                          height: 280,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 50,
                                    height: 30,
                                    margin: EdgeInsets.only(
                                        left: 10, top: 12, right: 10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Colors.indigo,
                                    ),
                                    child: Center(
                                      child: Text(
                                        "-40%",
                                        style: TextStyle(
                                          color: const Color.fromARGB(
                                              255, 255, 255, 255),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                        left: 60, top: 10, right: 10),
                                    child: Icon(
                                      Icons.favorite_border,
                                      color: Colors.red,
                                      size: 30,
                                    ),
                                  ),
                                ],
                              ),
                              InkWell(
                                onTap: () {
                                  final fn = MaterialPageRoute(
                                      builder: (context) => chozon());
                                  Navigator.push(context, fn);
                                },
                                child: Image.asset('lib/choz/img/e.jpg',
                                    height: 100, width: 100),
                              ),
                              SizedBox(height: 10),
                              Container(
                                margin: EdgeInsets.only(right: 55),
                                child: Text(
                                  "Higj heels",
                                  style: TextStyle(
                                      color: Colors.indigo,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(height: 10),
                              Container(
                                margin: EdgeInsets.only(right: 55),
                                child: Text(
                                  "Shoes high heels \n women \n pumps.purple-8.5",
                                  style: TextStyle(
                                    color: Colors.indigo,
                                    fontSize: 12,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              SizedBox(height: 7),
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 10),
                                    child: Text(
                                      '250 LE',
                                      style: TextStyle(
                                          color: Colors.indigo,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 68),
                                    child: Icon(
                                      Icons.add_home_work_rounded,
                                      size: 25,
                                      color: Colors.indigo,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),

                        // Icon(Icons.add_circle_outline_sharp),
                      ],
                    )),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
