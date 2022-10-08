// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last, sized_box_for_whitespace

import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool maskText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Column(
        children: [
          Expanded(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                ),
                child: Stack(
                  children: [
                    Image.asset(
                      'assets/images/pattern-png-30769.png',
                      height: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(135, 150, 100, 10),
                      child: Column(
                        children: [
                          Icon(
                            Icons.heart_broken,
                            size: 80,
                            color: Colors.white,
                          ),
                          Text(
                            'My App',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Nunito',
                              fontSize: 40,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )),
          Expanded(
              flex: 3,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50),
                      topLeft: Radius.circular(50)),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(50, 50, 50, 60),
                  child: SingleChildScrollView(
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: Form(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Sign In',
                              style: TextStyle(
                                color: Colors.deepPurple,
                                fontFamily: 'Nunito',
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'The Journey is about to begin!',
                              style: TextStyle(
                                color: Colors.grey,
                                fontFamily: 'Nunito',
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.deepPurple)),
                                labelText: 'Username',
                                labelStyle: TextStyle(color: Colors.grey),
                                hintText: 'Username',
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            TextFormField(
                              obscureText: maskText,
                              decoration: InputDecoration(
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.deepPurple)),
                                  labelText: 'Password',
                                  labelStyle: TextStyle(color: Colors.grey),
                                  hintText: 'Password',
                                  suffixIcon: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          maskText = !maskText;
                                        });
                                      },
                                      icon: Icon(
                                        maskText
                                            ? Icons.visibility
                                            : Icons.visibility_off,
                                        color: Colors.deepPurple,
                                      ))),
                            ),
                            SizedBox(
                              height: 65,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  ElevatedButton(
                                      onPressed: () {},
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 10, horizontal: 55),
                                        child: Text(
                                          "Let's Go",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontFamily: 'Nunito',
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      style: ElevatedButton.styleFrom(
                                          primary: Colors.deepPurple,
                                          shadowColor: Colors.purple,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(25)))),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
