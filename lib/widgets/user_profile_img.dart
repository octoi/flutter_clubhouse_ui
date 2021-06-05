import 'package:flutter/material.dart';

class UserProfileImg extends StatelessWidget {
  final String imageUrl;
  final double size;

  const UserProfileImg({
    Key? key,
    required this.imageUrl,
    this.size = 48.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(size / 2 - size / 18),
      child: Image.network(
        imageUrl,
        height: size,
        width: size,
        fit: BoxFit.cover,
      ),
    );
  }
}
