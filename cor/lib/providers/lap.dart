import 'dart:collection';

import 'package:flutter/material.dart';

class lap extends StatelessWidget {
  @override

String ca="kc";
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.indigo),
          title: Text("Back" , style: TextStyle(color: Colors.indigo , fontWeight: FontWeight.bold  , fontSize: 26),),
        
            
          
        
        ),
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        body: SingleChildScrollView(
          child: Column(children: [
            Container(
              width: double.infinity,
              height: 380,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                'lib/models/fs.jpg',
              ))),
            ),
            Container(
              margin: EdgeInsets.only(right: 250, top: 20),
              child: Text(
                "Higj heels",
                style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 12),
            Container(
              margin: EdgeInsets.only(left: 15),
              child: Row(children: [
                Container(
                  child: Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                ),
                Container(
                  child: Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                ),
                Container(
                  child: Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                ),
                Container(
                  child: Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                ),
                Container(
                  child: Icon(
                    Icons.star_border,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  width: 200,
                ),


      //  Container(
      //   color: Colors.cyan,
      //   child: 
                  Icon(Icons.add_circle_outline, color: Colors.indigo,  size: 30,),
                

              ]),
            ),
            SizedBox(height: 15),
            Container(
              child: Text(
                "This is more detailed descrription of the \n product. you can write here more about thr \n product. this is lengthy description.",
                style: TextStyle(
                  color: Colors.indigo,
                  fontSize: 18,
                ),
              ),
            ),
            SizedBox(height: 10),
            Row(children: [
              Container(
                margin: EdgeInsets.only(left: 30, top: 8),
                child: Text(
                  "Size ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.indigo,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Container(
                width: 30,
                height: 30,
                margin: EdgeInsets.only(left: 10, top: 12, right: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(width: 1, color: Colors.black),
                  color: const Color.fromARGB(255, 255, 255, 255),
                ),
                child: Center(
                  child: Text(
                    "1",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.indigo),
                  ),
                ),
              ),
              Container(
                width: 30,
                height: 30,
                margin: EdgeInsets.only(left: 10, top: 12, right: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(width: 1, color: Colors.black),
                  color: const Color.fromARGB(255, 255, 255, 255),
                ),
                child: Center(
                  child: Text(
                    "2",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.indigo),
                  ),
                ),
              ),
              Container(
                width: 30,
                height: 30,
                margin: EdgeInsets.only(left: 10, top: 12, right: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(width: 1, color: Colors.black),
                  color: const Color.fromARGB(255, 255, 255, 255),
                ),
                child: Center(
                  child: Text(
                    "3",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.indigo),
                  ),
                ),
              ),
              Container(
                width: 30,
                height: 30,
                margin: EdgeInsets.only(left: 10, top: 12, right: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(width: 1, color: Colors.black),
                  color: const Color.fromARGB(255, 255, 255, 255),
                ),
                child: Center(
                  child: Text(
                    "4",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.indigo),
                  ),
                ),
              ),
              Container(
                width: 30,
                height: 30,
                margin: EdgeInsets.only(left: 10, top: 12, right: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(width: 1, color: Colors.black),
                  color: const Color.fromARGB(255, 255, 255, 255),
                ),
                child: Center(
                  child: Text(
                    "5",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.indigo),
                  ),
                ),
              ),
            ]),
            SizedBox(height: 7),
            Row(children: [
              Container(
                margin: EdgeInsets.only(left: 30, top: 8),
                child: Text(
                  "Color ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.indigo,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                width: 8,
              ),
              Container(
                width: 30,
                height: 30,
                margin: EdgeInsets.only(left: 10, top: 12, right: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(width: 1, color: Colors.black),
                  color: Color.fromARGB(255, 141, 2, 2),
                ),
              ),
              Container(
                width: 30,
                height: 30,
                margin: EdgeInsets.only(left: 10, top: 12, right: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(width: 1, color: Colors.black),
                  color: Color.fromARGB(255, 6, 154, 50),
                ),
              ),
              Container(
                width: 30,
                height: 30,
                margin: EdgeInsets.only(left: 10, top: 12, right: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(width: 1, color: Colors.black),
                  color: Color.fromARGB(114, 70, 3, 227),
                ),
              ),
              Container(
                width: 30,
                height: 30,
                margin: EdgeInsets.only(left: 10, top: 12, right: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(width: 1, color: Colors.black),
                    color: Colors.black),
              ),
              Container(
                width: 30,
                height: 30,
                margin: EdgeInsets.only(left: 10, top: 12, right: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(width: 1, color: Colors.black),
                    color: Colors.white),
              ),
            ]),
            SizedBox(
              height: 10,
            ),
            Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(
                      color: Color.fromARGB(255, 221, 218, 218), width: 1),
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
                width: double.infinity,
                height: 100,
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 15),
                      child: Text(
                        "250LE",
                        style: TextStyle(
                            color: Colors.indigo,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(width: 180),
                    Container(
                      // decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color: Colors.amber ),
                        child: Row(
                      children: [

                            
                        
                              FilledButton(onPressed: (){},
                               style: ButtonStyle(backgroundColor:MaterialStateProperty.all(Colors.indigo  ) ,),
                               child: const Text('Add To Cart')),

                             
                      ],
                    )),
                  ],
                )),
          ]),
        ));
  }
}
