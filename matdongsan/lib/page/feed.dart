import 'package:flutter/material.dart';

// 피드 페이지
class FeedPage extends StatefulWidget {
  const FeedPage({super.key});

  @override
  State<FeedPage> createState() => FeedState();
}

class FeedState extends State<FeedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'feed page (test)',
        ),
      ),
    );
  }
}
