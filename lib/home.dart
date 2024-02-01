import 'package:facebook/sections/SuggestionSection.dart';
import 'package:facebook/sections/headerButtonSections.dart';
import 'package:facebook/sections/roomSection.dart';
import 'package:facebook/sections/statusSection.dart';
import 'package:facebook/sections/storySection.dart';
import 'package:facebook/widgets/assets.dart';
import 'package:facebook/widgets/circularButton.dart';
import 'package:facebook/widgets/headerbutton.dart';
import 'package:facebook/widgets/postCard.dart';
import 'package:flutter/material.dart';
import './widgets/circularButton.dart';

class Home extends StatelessWidget {
  Widget thinDivider = Divider(thickness: 1, color: Colors.grey[300]);

  Widget thickDivider = Divider(
    thickness: 10,
    color: Colors.grey[300],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            "facebook",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            CircularButton(
                buttonIcon: Icons.search,
                buttonAction: () {
                  print('search box appears');
                }),
            CircularButton(
              buttonIcon: Icons.chat,
              buttonAction: () {
                print("chat screen appears");
              },
            )
            // AppBarButton(buttonIcon: Icons.search, buttonAction:(){
            //   print("Search screen appears");
            // } ,)
          ],
        ),
        body: ListView(
          children: [
            StatusSection(),
            thinDivider,
            HeaderButtonSections(
              buttonOne: headerbutton(
                  buttonAction: () {
                    print("");
                  },
                  buttonColor: Colors.red,
                  buttonIcon: Icons.video_call,
                  buttonText: "Live",
                  textColor: Colors.black),
              buttonTwo: headerbutton(
                  buttonText: "Photo",
                  buttonIcon: Icons.photo_library,
                  buttonAction: () {
                    print("Take photo");
                  },
                  buttonColor: Colors.green,
                  textColor: Colors.black),
              buttonThree: headerbutton(
                  buttonText: "Room",
                  buttonIcon: Icons.video_call,
                  buttonAction: () {
                    print("Create room");
                  },
                  buttonColor: Colors.purple,
                  textColor: Colors.black),
            ),
            thickDivider,
            RoomSection(),
            thickDivider,
            StorySection(),
            thickDivider,
            PostCard(
              avathar: mohanlal,
              name: "Mohanlal",
              PublishedAt: "5h",
              postTitle: "happy diwali!!",
              postImage: btech,
              showBlueTick: true,
              likeCount: "10k",
              shareCount: "1k",
              commentCount: "1k",
            ),
            thickDivider,
            PostCard(
              avathar: nivin,
              name: "Nivin Pauli",
              PublishedAt: "1 day ago",
              postTitle: "",
              postImage: janeman,
              showBlueTick: true,
              likeCount: "1k",
              shareCount: "1k",
              commentCount: "1k",
            ),
            thickDivider,
            PostCard(
              avathar: dulquer,
              name: "Dulquer",
              PublishedAt: "November 10",
              postTitle: dulquerText,
              postImage: kurup,
              showBlueTick: true,
              likeCount: "10k",
              shareCount: "2.5k",
              commentCount: "2.5k",
            ),
            thickDivider,
            SuggestionSection(),
            thickDivider,
            PostCard(
              avathar: pritviraj,
              name: "Pritviraj",
              PublishedAt: "November 9",
              postTitle:"",
              postImage: kapa,
              showBlueTick: true,
              likeCount: "10k",
              shareCount: "3.5k",
              commentCount: "2.0k",
            ),
            thickDivider,
             
              PostCard(
              avathar: fahad,
              name: "Fahad Fazil",
              PublishedAt: "November 22",
              postTitle: fahadText,
              postImage: kutanad,
              showBlueTick: true,
              likeCount: "5k",
              shareCount: "2k",
              commentCount: "1.5k",
            ),
            thickDivider,
             
              PostCard(
              avathar: sania,
              name: "Saniar",
              PublishedAt: "yesterday",
              postTitle: "",
              postImage: kali,
              showBlueTick: true,
              likeCount: "10k",
              shareCount: "2.5k",
              commentCount: "2.5k",
            )
          ],
        ),
      ),
    );
  }
}
