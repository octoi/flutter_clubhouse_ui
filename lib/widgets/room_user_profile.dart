import 'package:flutter/material.dart';

class RoomUserProfile extends StatelessWidget {
  final String imageUrl;
  final String name;
  final double size;
  final bool isNew;
  final bool isMuted;

  const RoomUserProfile({
    Key? key,
    required this.imageUrl,
    required this.name,
    this.size = 48.0,
    this.isNew = false,
    this.isMuted = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
