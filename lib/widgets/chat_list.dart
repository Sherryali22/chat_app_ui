// ignore_for_file: prefer_const_constructors

import 'package:chat_app_ui/feature/chat/data/chat_model.dart';
import 'package:flutter/material.dart';

class chatlistview extends StatelessWidget {
  const chatlistview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.only(left: 16, right: 16, top: 20, bottom: 10),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30))),
        child: ListView.builder(
          itemCount: chats.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage:NetworkImage(chats[index].image),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          chats[index].name,
                          style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          chats[index].message,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        )
                      ],
                    ),
                  ),
                  Text(chats[index].time)
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
