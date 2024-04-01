import 'package:crm/components/buttons.dart';
import 'package:crm/screens/dashboard.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;
  
  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // Text Editing Controller
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  // Sign User In Method
  void login() {
      Navigator.push(
        context, 
        MaterialPageRoute(
          builder: (
            (context) => const DashboardPage()
          ) 
        )
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      body: SafeArea(
        child: Center(
          child: Container(
            width: 400,
            height: 350,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(6),
                border: const Border(
                    top: BorderSide(color: Colors.blue, width: 5))),
            child: Column(
              children: [
                Container(
                  width: 400,
                  height: 70,
                  child: const Center(
                    child: Text.rich(TextSpan(children: [
                      TextSpan(
                          text: 'Susu',
                          style:
                              TextStyle(fontSize: 40, fontFamily: 'Urbanist')),
                      TextSpan(
                          text: 'CRM',
                          style: TextStyle(
                            fontSize: 40,
                            fontFamily: 'Urbanist',
                            fontWeight: FontWeight.bold,
                          ))
                    ])),
                  ),
                ),
                const Divider(thickness: 1),

                const SizedBox(height: 20),

                const Text(
                  'Please Login',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w100,
                      fontFamily: 'Urbanist'),
                ),

                // Username Textfield
                const SizedBox(height: 10),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(color: Colors.grey)),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Username',
                            hintStyle: TextStyle(
                              fontFamily: 'Urbanist',
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                            suffixIcon: Icon(
                              Icons.account_circle_rounded,
                              size: 20,
                            )),
                      ),
                    ),
                  ),
                ),

                // Password Textfield
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(color: Colors.grey)),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Password',
                            hintStyle: TextStyle(
                              fontFamily: 'Urbanist',
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                            suffixIcon: Icon(
                              Icons.lock_rounded,
                              size: 20,
                            )),
                      ),
                    ),
                  ),
                ),

                // Remember Me & Sign In buttons
                const SizedBox(height: 10),

                MyButton(
                  text: 'Sign in', 
                  onTap: login,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
