import 'package:cor/core/colors_manager.dart';
import 'package:cor/core/images_manager.dart';
import 'package:cor/core/style_manager.dart';
import 'package:cor/core/texts_manager.dart';
import 'package:cor/screens/login/password.dart';
import 'package:cor/screens/login/singup.dart';
import 'package:flutter/material.dart';
import '../home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cor/screens/home.dart';

class Login extends StatefulWidget {
  const Login({super.key});
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formfield = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passController = TextEditingController();
  // final _auth = FirebaseAuth.instance;
  late String eem;
  late String ppass;

  bool passToggle = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.only(top: 70, right: 10, left: 10),
      child: SingleChildScrollView(
          child: Form(
        key: _formfield,
        child: Column(children: [
          Container(
            alignment: Alignment.center,
            child: CircleAvatar(
              radius: 90,
              backgroundImage: NetworkImage(Image_manager.Image_login),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(top: 20, bottom: 20),
            child:
                Text(Text_Manager.login, style: Style_Manager.textStyle40w500),
          ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(top: 20, right: 10, left: 10, bottom: 20),
            child: TextFormField(
              onChanged: (value) {
                eem = value;
              },
              keyboardType: TextInputType.emailAddress,
              controller: _emailController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: Text_Manager.email,
                helperText: Text_Manager.enter_yor_email,
                prefixIcon: Icon(Icons.account_circle),
              ),
              // validator: (value) {
              //   bool emailvalid =
              //       RegExp(Text_Manager.name_email).hasMatch(value!);
              //   if (value.isEmpty) {
              //     return Text_Manager.enter_email;
              //   } else if (!emailvalid) {
              //     return Text_Manager.enter_valid_email;
              //   }
              // }
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(top: 20, right: 10, left: 10, bottom: 10),
            child: TextFormField(
              onChanged: (value) {
                ppass = value;
              },
              keyboardType: TextInputType.emailAddress,
              controller: _passController,
              obscureText: passToggle,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: Text_Manager.password,
                helperText: Text_Manager.enter_yor_password,
                prefixIcon: Icon(Icons.lock),
                // suffixIcon: InkWell(
                //     onTap: () {
                //       setState(() {
                //         passToggle = !passToggle;
                //       });
                //     },
                //     child: Icon(passToggle
                //         ? Icons.visibility
                //         : Icons.visibility_off)),
              ),
              // validator: (value) {
              //   bool ppp = RegExp(Text_Manager.name_pass).hasMatch(value!);
              //   if (value.isEmpty) {
              //     return Text_Manager.enter_passeord;
              //   } else if (_passController.text.length < 3) {
              //     return Text_Manager.password_least;
              //   } else if (!ppp) {
              //     return Text_Manager.verify_password;
              //   }
              // }
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 250, bottom: 30),
            child: InkWell(
              child: Text(Text_Manager.yor_Password,
                  style: Style_Manager.textStyle14w500),
              onTap: () {
                final route =
                    MaterialPageRoute(builder: (context) => Password());
                Navigator.push(context, route);
              },
            ),
          ),
          InkWell(
            onTap: () {
              final route = MaterialPageRoute(builder: (context) => home());
              Navigator.push(context, route);
              // try {
              //   final newUser = await _auth.createUserWithEmailAndPassword(
              //       email: eem, password: ppass);
              //   Navigator.pushNamed(context, home.screen_ch);
              // } catch (e) {
              //   print(e);
              // }

              // if (_formfield.currentState!.validate()) {
              //   final route = MaterialPageRoute(builder: (context) => home());
              //   Navigator.push(context, route);
              //   _emailController.clear();
              //   _passController.clear();
              // }
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
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 40,
            ),
            child: Container(
                child: InkWell(
              child: Text(Text_Manager.Singup,
                  style: Style_Manager.textStyle18w600),
              onTap: () {
                final route = MaterialPageRoute(builder: (context) => singup());
                Navigator.push(context, route);
              },
            )),
          ),
        ]),
      )),
    ));
  }
}
