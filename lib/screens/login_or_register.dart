import 'package:flutter/material.dart';

class LoginOrRegisterPage extends StatefulWidget {
  const LoginOrRegisterPage({super.key});

  @override
  State<LoginOrRegisterPage> createState() => _LoginOrRegisterPageState();
}

class _LoginOrRegisterPageState extends State<LoginOrRegisterPage> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      body: SafeArea(
        child: Center(
          child: Container(
            width: 400,
            height: 350,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: Colors.white,
              border: const Border(
                top: BorderSide(color: Colors.black, width: 5),
              ),
            ),
            child: Column(
              children: [
                const SizedBox(
                  width: 400,
                  height: 70,
                  child: Center(
                    child: Text.rich(
                      TextSpan(children: [
                        TextSpan(
                            text: 'GoodTimes',
                            style: TextStyle(
                                fontSize: 30, fontFamily: 'Urbanist')),
                        TextSpan(
                            text: ' SusuCRM',
                            style: TextStyle(
                                fontSize: 30,
                                fontFamily: 'Urbanist',
                                fontWeight: FontWeight.bold))
                      ]),
                    ),
                  ),
                ),

                const Divider(
                  thickness: 1,
                  color: Colors.black,
                ),

                const SizedBox(height: 20),

                const Text(
                  'Please Login',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Urbanist',
                    fontWeight: FontWeight.w600,
                  ),
                ),

                const SizedBox(
                  height: 20,
                ),

                // Email textfield
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      border: Border.all(
                        color: Colors.black,
                      )
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: TextField(
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Urbanist',
                          fontWeight: FontWeight.w200,
                        ),
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Email',
                            hintStyle: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Urbanist',
                              fontWeight: FontWeight.w100,
                            )),
                      ),
                    ),
                  ),
                ),

                const SizedBox(
                  height: 10,
                ),

                // Password Textfield
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(
                          color: Colors.black,
                        )),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: TextField(
                        obscureText: true,
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Urbanist',
                          fontWeight: FontWeight.w200,
                        ),
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Password',
                            hintStyle: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Urbanist',
                              fontWeight: FontWeight.w100,
                            ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
