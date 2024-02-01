import 'package:facebook/widgets/assets.dart';
import 'package:facebook/widgets/storyCard.dart';
import 'package:flutter/material.dart';

class StorySection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StoryCard(
            LabelText: "Add to story",
            avatar: pritviraj,
            Story: pritviraj,
            createStoryStatus: true,
            
          ),
          StoryCard(
            LabelText: "Tovino",
            avatar: tovino,
            Story: mxap,
            createStoryStatus: false,
            displayBorder: true,
          ),
          StoryCard(
            LabelText: "Asif ALi",
            Story: btech,
            avatar: asif,
            createStoryStatus: false,
            displayBorder: true,
          ),
          StoryCard(
            LabelText: "DQ",
            Story: kali,
            avatar: dulquer,
            createStoryStatus: false,
            displayBorder: true,
          ),
          StoryCard(
            LabelText: "Nivin Pauli",
            Story: janeman,
            avatar: nivin,
            createStoryStatus: false,
            displayBorder: true,
          ),
          StoryCard(
            LabelText: "Sania",
            Story: kapa,
            avatar: sania,
            createStoryStatus: false,
            displayBorder: true,
          ),
          StoryCard(
            LabelText: "Fahad",
            Story: kurup,
            avatar: fahad,
            createStoryStatus: false,
            displayBorder: true,
          )
        ],
      ),
    );
  }
}
