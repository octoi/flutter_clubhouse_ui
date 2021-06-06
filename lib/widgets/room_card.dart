import 'package:clubhouse_ui/data.dart';
import 'package:flutter/material.dart';

class RoomCard extends StatelessWidget {
  final Room room;

  RoomCard({
    Key? key,
    required this.room,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text(
              '${room.club} 🏡'.toUpperCase(),
              style: Theme.of(context)
                  .textTheme
                  .overline!
                  .copyWith(fontWeight: FontWeight.w600, letterSpacing: 1.0),
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
