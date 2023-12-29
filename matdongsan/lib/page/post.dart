import 'package:flutter/material.dart';

// 게시 페이지
class PostPage extends StatefulWidget {
  const PostPage({super.key});

  @override
  State<PostPage> createState() => PostState();
}

class PostState extends State<PostPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'post page (test)',
        ),
      ),
    );
  }
}
