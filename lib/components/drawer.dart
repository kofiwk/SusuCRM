import 'package:crm/components/drawer_tile.dart';
import 'package:crm/screens/calendar.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  final void Function()? onTap;

  const MyDrawer({super.key, required this.onTap});

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
          ),

          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Divider(height: 1),
          ),

          // Dashboard Tile
          MyDrawerTile(
            text: 'Dashboard', 
            icon: Icons.home, 
            onTap: onTap,
          ),
          const SizedBox(height: 15),
          // Calendar
          MyDrawerTile(
            text: 'Calendar', 
            icon: Icons.calendar_month, 
            onTap: () => Navigator.push(
              context, MaterialPageRoute(
                builder: (
                  (context) => const CalendarPage()
                )
              )
            ),
          ),
          const SizedBox(height: 15),
          // People
          MyDrawerTile(
            text: 'People', 
            icon: Icons.people, 
            onTap: onTap,
          ),
          const SizedBox(height: 15),
          // Groups
          MyDrawerTile(
            text: 'Groups', 
            icon: Icons.label, 
            onTap: onTap,
          ),
          const SizedBox(height: 15),
          // Groups
          MyDrawerTile(
            text: 'Email', 
            icon: Icons.email, 
            onTap: onTap,
          ),
          const SizedBox(height: 15),
          // Data / Reports
          MyDrawerTile(
            text: 'Data/Reports', 
            icon: Icons.dataset, 
            onTap: onTap,
          ),
          const SizedBox(height: 15),
          // Asmin
          MyDrawerTile(
            text: 'Admin', 
            icon: Icons.person, 
            onTap: onTap,
          ),
        ],
      ),
    );
  }
}