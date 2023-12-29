import 'package:flutter/material.dart';

// 마이 페이지
class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => UserState();
}

class UserState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'user page (test)',
        ),
      ),
    );
  }
}
