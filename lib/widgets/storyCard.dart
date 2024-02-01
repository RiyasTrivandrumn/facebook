import 'package:facebook/widgets/assets.dart';
import 'package:facebook/widgets/avatar.dart';
import 'package:facebook/widgets/circularButton.dart';
import 'package:flutter/material.dart';

class StoryCard extends StatelessWidget {

  late final String LabelText;
  final String Story;
  final String avatar;
  final bool createStoryStatus;
  final bool displayBorder;


  StoryCard({
    required this.LabelText,
    required this.Story,
    required this.avatar,
    this.createStoryStatus=false,
    this.displayBorder=false,




  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: EdgeInsets.only(left: 5, right: 5, top: 10, bottom: 10),
      decoration: BoxDecoration(
          image:
              DecorationImage(image: AssetImage(Story), fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(15)),
      child: Stack(
        
        children: [
          Positioned(
            left: 5,
            top: 5,
              child:createStoryStatus ?  
              CircularButton(
            buttonIcon: Icons.add,
            buttonAction: () {
              print("Create new story");
            },
            iconColor: Colors.blue,
          ):Avatar(displayImage: avatar, displayStatus: false,displayBorder: displayBorder,width: 35,
          height: 35,)),
          Positioned(
            bottom: 10,
            left: 10,
            child: Text(LabelText != null? LabelText:"N/A",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),))
        ],
      ),
    );
  }
}
