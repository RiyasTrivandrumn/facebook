import 'package:facebook/widgets/assets.dart';
import 'package:flutter/material.dart';

class SuggestionCard extends StatelessWidget {
  final String avathar;
  final String name;
  final String mutualFriends;
  final void Function() addFriend;
  final void Function() removeFriend;
  SuggestionCard(
      {required this.avathar,
      required this.name,
      required this.mutualFriends,
      required this.addFriend,
      required this.removeFriend});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: EdgeInsets.only(left: 10, right: 10),
      child: Stack(
        children: [
          suggestionDetails(),
          suggestionImage(),
        ],
      ),
    );
  }

  Widget suggestionDetails() {
    return Positioned(
        bottom: 0,
        right: 0,
        left: 0,
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade300, width: 1),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10))),
          height: 140,
          child: Column(
            children: [
              ListTile(
                title: Text(name != null ? name : ""),
                subtitle: Text(mutualFriends != null ? mutualFriends : ""),
              ),
              Container(
                padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    iconButton(
                        buttonAction: addFriend,
                        buttonIcon: Icons.account_box,
                        buttonColor: Colors.blue,
                        buttontextColor: Colors.white,
                        buttoniconColor: Colors.white,
                        buttontext: "Add friend"),
                    blankButton(
                        buttonAction: removeFriend,
                        buttonText: "remove",
                        buttonColor: Colors.grey.shade300,
                        buttontextColor: Colors.black)
                  ],
                ),
              )
            ],
          ),
        ));
  }

  Widget suggestionImage() {
    return Positioned(
        top: 0,
        left: 0,
        right: 0,
        child: ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            child: avathar != null
                ? Image.asset(
                    avathar,
                    fit: BoxFit.cover,
                    height: 250,
                  )
                : SizedBox()));
  }

  Widget iconButton({
    required void Function() buttonAction,
    required IconData buttonIcon,
    required Color buttonColor,
    required Color buttontextColor,
    required Color buttoniconColor,
    required String buttontext,
  }) {
    return TextButton.icon(
        onPressed: buttonAction,
        icon: Icon(
          buttonIcon,
          color: buttoniconColor,
        ),
        label: Text(
          buttontext,
          style: TextStyle(color: buttontextColor),
        ),
        style: TextButton.styleFrom(
            backgroundColor: buttonColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(4)))));
  }

  Widget blankButton({
    required void Function() buttonAction,
    required String buttonText,
    required Color buttonColor,
    required Color buttontextColor,
  }) {
    return TextButton(
      onPressed: buttonAction,
      child: Text(
        buttonText,
        style: TextStyle(color: buttontextColor),
      ),
      style: TextButton.styleFrom(
          backgroundColor: buttonColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(4)))),
    );
  }
}
