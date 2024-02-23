import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Drawer(
        backgroundColor: Colors.grey,
        elevation: 0,
        shape: LinearBorder(),
        child: ListTile(
          title: Text('Home'),
        ),
      ),
    );
  }
}
