import 'package:flutter/material.dart';

// 좋아요 페이지
class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => FavoriteState();
}

class FavoriteState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'favorite page (test)',
        ),
      ),
    );
  }
}
