import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.blueGrey[800],
      elevation: 0,
      shape:  const ContinuousRectangleBorder(),
      child: Column(
        children: [
          // Name
          Text(
            'SusuCRM',
            style: TextStyle(
              color: Colors.grey[400],
              fontSize: 30,
              fontFamily: 'Urbanist',
              fontWeight: FontWeight.bold
            ),
          )
        ],
      ),
    );
  }
}