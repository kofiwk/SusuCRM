import 'package:crm/components/button.dart';
import 'package:crm/screens/home.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;

  const LoginPage({
    super.key,
    required this.onTap
  });

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool obscureText = true;

  // login method
  void login() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const HomePage()
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      body: SafeArea(
        child: Center(
          child: Container(
            width: 400,
            height: 400,
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
                        )),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: TextField(
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Urbanist',
                          fontWeight: FontWeight.w200,
                        ),
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Email',
                            hintStyle: TextStyle(
                              fontSize: 16,
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
                          fontSize: 16,
                          fontFamily: 'Urbanist',
                          fontWeight: FontWeight.w200,
                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Password',
                          hintStyle: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Urbanist',
                            fontWeight: FontWeight.w100,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                const SizedBox(
                  height: 10,
                ),

                // Sign in button
                MyButton(
                  text: 'Sign In',
                  onTap: login
                ),

                const SizedBox(height: 25),

                // Register 
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'New to CRM?',
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Urbanist',
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                    const SizedBox(width: 10),
                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: widget.onTap,
                        child: const Text(
                          'Create an account',
                            style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Urbanist',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
