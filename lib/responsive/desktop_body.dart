import 'package:flutter/material.dart';

class MyDesktopBody extends StatelessWidget {
  const MyDesktopBody({super.key});

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
              border: Border(
                top: BorderSide(
                  color: Colors.blue,
                  width: 5
                )
              )
            ),
            child: Column(
              children: [
                Container(
                  width: 400,
                  height: 70,
                  child: Center(
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Susu',
                            style: TextStyle(
                              fontSize: 40,
                              fontFamily: 'Urbanist'
                            )
                          ),
                          TextSpan(
                            text: 'CRM',
                            style: TextStyle(
                              fontSize: 40,
                              fontFamily: 'Urbanist',
                              fontWeight: FontWeight.bold,
                            )
                          )
                        ]
                      )
                    ),
                  ),
                ),
                Divider(
                  thickness: 1
                ),
                
                SizedBox(height: 20),

                Text(
                  'Please Login',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w100,
                    fontFamily: 'Urbanist'
                  ),
                  ),

                // Username Textfield
                SizedBox(height: 10),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      border: Border.all(
                        color: Colors.grey
                      )
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
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
                            )
                        ),
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
                      border: Border.all(
                        color: Colors.grey
                      )
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
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
                            )
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