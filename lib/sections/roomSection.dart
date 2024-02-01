import 'package:facebook/widgets/assets.dart';
import 'package:facebook/widgets/avatar.dart';
import 'package:flutter/material.dart';

class RoomSection extends StatelessWidget {
  Widget createRoomButton() {
    return Container(
      padding: EdgeInsets.only(right: 5,left: 5),
        child: OutlinedButton.icon(
      style: OutlinedButton.styleFrom(
        shape: StadiumBorder(),
        side: BorderSide(color: Colors.blue.shade300, width: 2),
      ),
      onPressed: () {
        print("Create a chat room");
      },
      icon: Icon(
        Icons.video_call,
        color: Colors.purple,
      ),
      label: Text(
        "Create \nRoom",
        style: TextStyle(color: Colors.blue),
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(10),
        children: [
          createRoomButton(),
          Avatar(displayImage: dulquer,displayStatus: true,),
          Avatar(displayImage: pritviraj,displayStatus: true,),
          Avatar(displayImage: asif,displayStatus: true,),
          Avatar(displayImage: tovino,displayStatus: true,),
          Avatar(displayImage: fahad,displayStatus: true,),
          Avatar(displayImage: pritviraj,displayStatus: true,),
          Avatar(displayImage: nivin,displayStatus: true,),
          Avatar(displayImage: mohanlal,displayStatus: true,)
        ],
      ),
    );
  }
}
