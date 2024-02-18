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
            height: 300,
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
                            )
                          ),
                          TextSpan(
                            text: 'CRM',
                            style: TextStyle(
                              fontSize: 40,
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
                
                SizedBox(height: 30),

                Text('Please Login'),

                SizedBox(height: 10),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: 
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Username',
                        suffixIcon: Icon(Icons.account_circle_rounded)
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}