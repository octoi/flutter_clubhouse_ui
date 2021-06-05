import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(CupertinoIcons.search, size: 28.0),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(CupertinoIcons.envelope_open, size: 26.0),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(CupertinoIcons.calendar, size: 28.0),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(CupertinoIcons.bell, size: 28.0),
          ),
        ],
      ),
    );
  }
}
