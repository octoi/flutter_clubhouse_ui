import 'package:clubhouse_ui/data.dart';
import 'package:clubhouse_ui/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoomScreen extends StatelessWidget {
  final Room room;

  RoomScreen({Key? key, required this.room}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leadingWidth: 120.0,
        leading: TextButton.icon(
          style: TextButton.styleFrom(primary: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(CupertinoIcons.chevron_down),
          label: const Text('All Rooms'),
        ),
        actions: [
          IconButton(
            icon: Icon(CupertinoIcons.doc, size: 28.0),
            onPressed: () {},
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 10.0, 20.0, 10.0),
            child: UserProfileImg(imageUrl: currentUser.imageUrl, size: 36.0),
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(40.0),
        ),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${room.club} 🏡'.toUpperCase(),
                        style: Theme.of(context).textTheme.overline!.copyWith(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 1.0,
                            ),
                        overflow: TextOverflow.ellipsis,
                      ),
                      const Icon(CupertinoIcons.ellipsis),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
