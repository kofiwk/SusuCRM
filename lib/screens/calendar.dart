import 'package:crm/components/drawer.dart';
import 'package:flutter/material.dart';

class CalendarPage extends StatefulWidget {
  const CalendarPage({super.key});

  @override
  State<CalendarPage> createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      body: Row(
        children: [
          MyDrawer(
            onTap: () {},
          ), // Drawer on the left side
          Expanded(
            child: Column(
              children: [
                AppBar(
                  elevation: 0,
                  backgroundColor: Colors.white,
                  automaticallyImplyLeading: false,
                  title: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Calendar',
                        style: TextStyle(fontFamily: 'Urbanist'),
                      ),

                      // Appbar icons
                      Padding(
                        padding: EdgeInsets.only(right: 100),
                        child: Row(
                          children: [
                            Icon(Icons.notifications_outlined),
                        
                            SizedBox(width: 50),
                            
                            Icon(Icons.shopping_cart_outlined)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 20),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Welcome',
                          style: TextStyle(
                              fontFamily: 'Urbanist',
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}