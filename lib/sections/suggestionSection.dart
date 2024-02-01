import 'package:facebook/widgets/assets.dart';
import 'package:facebook/widgets/suggestionCard.dart';
import 'package:flutter/material.dart';

class SuggestionSection extends StatelessWidget {
  const SuggestionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      child: Column(
        children: [
          ListTile(
            title: Text("People You May Know "),
            trailing: IconButton(
                onPressed: () {
                  print("More Clicked!");
                },
                icon: Icon(
                  Icons.more_horiz,
                  color: Colors.grey[700],
                )),
          ),
          Container(
            height: 390,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SuggestionCard(
                    avathar: sania,
                    name: "Sania iyapan",
                    mutualFriends: "3 mutual friends",
                    addFriend:() {
                      print("Request friendship!!");
                    },
                    removeFriend:() {
                      print("remove friend!");
                    },),
                     SuggestionCard(
                    avathar: rashmika,
                    name: "Rashmika Mandhana",
                    mutualFriends: "4 mutual friends",
                    addFriend:() {
                      print("Request friendship!!");
                    },
                    removeFriend:() {
                      print("remove friend!");
                    },),
                     SuggestionCard(
                    avathar: SRK,
                    name: "Sharukhan",
                    mutualFriends: "1 mutual friends",
                    addFriend:() {
                      print("Request friendship!!");
                    },
                    removeFriend:() {
                      print("remove friend!");
                    },),
                     SuggestionCard(
                    avathar: Dani,
                    name: "Dani Daniels",
                    mutualFriends: "10 mutual friends",
                    addFriend:() {
                      print("Request friendship!!");
                    },
                    removeFriend:() {
                      print("remove friend!");
                    },),
              ],
            ),
          )
        ],
      ),
    );
  }
}
