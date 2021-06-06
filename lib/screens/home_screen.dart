import 'package:clubhouse_ui/data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:clubhouse_ui/widgets/widgets.dart';

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
          Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 10.0, 20.0, 10.0),
            child: UserProfileImg(imageUrl: currentUser.imageUrl, size: 36.0),
          )
        ],
      ),
      body: Stack(
        children: [
          ListView(
            physics: BouncingScrollPhysics(),
            padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 120.0),
            children: [
              UpcomingRooms(upcomingRooms: upcomingRoomsList),
              const SizedBox(height: 12.0),
              ...roomsList.map((room) => RoomCard(room: room)),
            ],
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: 100.0,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Theme.of(context).scaffoldBackgroundColor.withOpacity(0.1),
                    Theme.of(context).scaffoldBackgroundColor,
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
