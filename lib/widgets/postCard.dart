import 'package:facebook/sections/headerButtonSections.dart';
import 'package:facebook/widgets/assets.dart';
import 'package:facebook/widgets/avatar.dart';
import 'package:facebook/widgets/blueTick.dart';
import 'package:facebook/widgets/headerbutton.dart';
import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  final String avathar;
  final String name;
  final String PublishedAt;
  final String postTitle;
  final String postImage;
  final bool showBlueTick;
  final String shareCount;
  final String commentCount;
  final String likeCount;

  PostCard(
      {required this.avathar,
      required this.name,
      required this.PublishedAt,
      required this.postImage,
      required this.postTitle,
      this.showBlueTick = false,
      required this.likeCount,
      required this.commentCount,
      required this.shareCount});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          postCardHeader(),
          titleSection(),
          imageSection(),
          footerSection(),
          Divider(
            color: Colors.grey[300],
            thickness: 1,
          ),
          HeaderButtonSections(
            buttonOne: headerbutton(
                buttonText: "Like",
                buttonIcon: Icons.thumb_up_alt_outlined,
                buttonAction: () {
                  print("like this post");
                },
                buttonColor: Colors.grey.shade700,
                textColor: Colors.black),
            buttonTwo: headerbutton(
                buttonText: "Comment",
                buttonIcon: Icons.message_outlined,
                buttonAction: () {
                  print("Comment on this post");
                },
                buttonColor: Colors.grey.shade700,
                textColor: Colors.black),
            buttonThree: headerbutton(
                buttonText: "Share",
                buttonIcon: Icons.share_outlined,
                buttonAction: () {
                  print("Share this post");
                },
                buttonColor: Colors.grey.shade700,
                textColor: Colors.black),
          ),
        ],
      ),
    );
  }

  Widget postCardHeader() {
    return ListTile(
      leading: Avatar(
        displayImage: avathar,
        displayStatus: false,
      ),
      title: Row(
        children: [
          Text(
            name,
            style: TextStyle(color: Colors.black),
          ),
          SizedBox(
            width: 10,
          ),
          showBlueTick ? BlueTick() : SizedBox(),
        ],
      ),
      subtitle: Row(
        children: [
          Text(PublishedAt == null ? "" : PublishedAt),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.public,
            color: Colors.grey[700],
            size: 15,
          )
        ],
      ),
      trailing: IconButton(
          onPressed: () {
            print("Open more Menu");
          },
          icon: Icon(
            Icons.more_horiz,
            color: Colors.grey[700],
          )),
    );
  }

  Widget titleSection() {
    return postTitle != null && postTitle != ""
        ? Container(
            padding: EdgeInsets.only(bottom: 5, top: 5,
            left: 10,right: 10),
            child: Text(
              postTitle == null ? "" : postTitle,
              style: TextStyle(color: Colors.black, fontSize: 16),
            ))
        : SizedBox();
  }

  Widget imageSection() {
    return Container(
      child: Image.asset(postImage),
    );
  }

  Widget footerSection() {
    return Container(
      height: 50,
      padding: EdgeInsets.only(left: 10, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              child: Row(children: [
            Container(
                width: 15,
                height: 15,
                decoration:
                    BoxDecoration(color: Colors.blue, shape: BoxShape.circle),
                child: Icon(
                  Icons.thumb_up,
                  color: Colors.white,
                  size: 10,
                )),
            SizedBox(
              width: 5,
            ),
            displaytext(label: likeCount)
          ])),
          Container(
            child: Row(
              children: [
                displaytext(label: commentCount),
                SizedBox(
                  width: 5,
                ),
                displaytext(label: "Coments"),
                SizedBox(
                  width: 5,
                ),
                displaytext(label: shareCount),
                SizedBox(
                  width: 5,
                ),
                displaytext(label: "Shares"),
                SizedBox(
                  width: 10,
                ),
                Avatar(
                  displayImage: avathar,
                  displayStatus: false,
                  width: 20,
                  height: 20,
                ),
                IconButton(
                    onPressed: () {
                      print("Drop down pressesd");
                    },
                    icon: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.grey[700],
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget displaytext({required String label}) {
    return Text(
      label == null ? "" : label,
      style: TextStyle(
        color: Colors.grey[700],
      ),
    );
  }
}
