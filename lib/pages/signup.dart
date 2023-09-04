// ignore_for_file: prefer_const_constructors, sort_child_properties_last, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "SignUp",
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
                "assets/images/signup_top.png",
                width: 111,
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: Image.asset(
                "assets/images/main_bottom.png",
                width: 90,
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 32),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Text(
                    //   "SignUp",
                    //   style: TextStyle(
                    //     fontSize: 50,
                    //     fontFamily: "FontProject",
                    //     fontWeight: FontWeight.bold,
                    //   ),
                    // ),
                    // SizedBox(
                    //   height: 20,
                    // ),
                    SvgPicture.asset(
                      "assets/icons/signup.svg",
                      width: 270,
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
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          Colors.deepPurple,
                        ),
                        padding: MaterialStateProperty.all(
                          EdgeInsets.symmetric(
                            horizontal: 130,
                            vertical: 10,
                          ),
                        ),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(27),
                          ),
                        ),
                      ),
                      child: Text(
                        "SignUp",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 24,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 17,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Already have an accout? "),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, "/login");
                          },
                          child: Text(
                            "Log In ",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      width: 300,
                      child: Row(
                        children: [
                          Expanded(
                            child: Divider(
                              thickness: 0.6,
                              color: Colors.purple[900],
                            ),
                          ),
                          Text(
                            "OR",
                            style: TextStyle(
                              color: Colors.purple[900],
                            ),
                          ),
                          Expanded(
                            child: Divider(
                              thickness: 0.6,
                              color: Colors.purple[900],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            child: SvgPicture.asset(
                                "assets/icons/icons8-instagram.svg"),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            child: SvgPicture.asset(
                                "assets/icons/icons8-github.svg"),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            child: SvgPicture.asset(
                                "assets/icons/icons8-linkedin.svg"),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
