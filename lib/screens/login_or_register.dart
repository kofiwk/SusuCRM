import 'package:flutter/material.dart';

class LoginOrRegisterPage extends StatefulWidget {
  const LoginOrRegisterPage({super.key});

  @override
  State<LoginOrRegisterPage> createState() => _LoginOrRegisterPageState();
}

class _LoginOrRegisterPageState extends State<LoginOrRegisterPage> {
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
                top: BorderSide(
                  color: Colors.black,
                  width: 5
                ),
              ),
            ),
            child: const Column(
              children: [
                SizedBox(
                  width: 400,
                  height: 70,
                  child:  Center(
                    child: Text.rich(
                      TextSpan(
                       children: [
                        TextSpan(
                          text: 'GoodTimes Opportunities',
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Urbanist'
                          )
                        ),
                        TextSpan(
                          text: ' SusuCRM',
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Urbanist',
                            fontWeight: FontWeight.bold
                          )
                        )
                       ]
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