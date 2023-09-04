// ignore_for_file: prefer_const_constructors, sort_child_properties_last, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Login",
          style: TextStyle(
            fontFamily: "fontProject",
            fontSize: 32,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              child: Image.asset(
                "assets/images/main_top.png",
                width: 111,
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Image.asset(
                "assets/images/login_bottom.png",
                width: 111,
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    "assets/icons/login.svg",
                    width: 288,
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  TextField(
                    obscureText: false,
                    cursorColor: Colors.deepPurple,
                    textInputAction: TextInputAction.next,
                    // style for textFeild
                    decoration: InputDecoration(
                      hintText: "email@gmail.com",
                      labelText: "Email",
                      fillColor: Colors.grey[200],
                      labelStyle: TextStyle(
                        fontSize: 18,
                        color: Colors.deepPurple,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(
                          color: Colors.deepPurple,
                          width: 2.0,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(
                          color: Colors.deepPurple,
                          width: 2.0,
                        ),
                      ),
                      prefixIcon: Icon(
                        Icons.person,
                        color: Colors.deepPurple,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    obscureText: true,
                    cursorColor: Colors.deepPurple,
                    keyboardType: TextInputType.visiblePassword,
                    textInputAction: TextInputAction.done,
                    // style for textFeild
                    decoration: InputDecoration(
                      hintText: "Password",
                      labelText: "Password",
                      labelStyle: TextStyle(
                        fontSize: 18,
                        color: Colors.deepPurple,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(
                          color: Colors.deepPurple,
                          width: 2.0,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(
                          color: Colors.deepPurple,
                          width: 2.0,
                        ),
                      ),
                      prefixIcon: Icon(
                        Icons.security,
                        color: Colors.deepPurple,
                      ),
                      suffixIcon: Icon(
                        Icons.visibility,
                        color: Colors.deepPurple,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/login");
                    },
                    child: Text(
                      "LogIn",
                      style: TextStyle(
                        fontSize: 22,
                        fontFamily: "FontProject",
                      ),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        Colors.deepPurple,
                      ),
                      foregroundColor: MaterialStateProperty.all(
                        Colors.white,
                      ), //color of text
                      padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(horizontal: 140, vertical: 14),
                      ),

                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(66),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 17,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an accout? "),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, "/signup");
                        },
                        child: Text(
                          " Sign up",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),
                      ),
                    ],
                  ),
                  // SizedBox(
                  //   height: 15,
                  // ),
                  // Container(
                  //   margin: EdgeInsets.only(top: 30),
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.center,
                  //     crossAxisAlignment: CrossAxisAlignment.center,
                  //     children: [
                  //       Container(
                  //         child: SvgPicture.asset(
                  //             "assets/icons/icons8-instagram.svg"),
                  //       ),
                  //       SizedBox(
                  //         width: 10,
                  //       ),
                  //       Container(
                  //         child: SvgPicture.asset(
                  //             "assets/icons/icons8-github.svg"),
                  //       ),
                  //       SizedBox(
                  //         width: 10,
                  //       ),
                  //       Container(
                  //         child: SvgPicture.asset(
                  //             "assets/icons/icons8-linkedin.svg"),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
