// ignore_for_file: prefer_const_constructors

import 'package:chat_app_ui/feature/chat/data/chat_model.dart';
import 'package:flutter/material.dart';

class favoritecontacts extends StatelessWidget {
  const favoritecontacts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'favorite contacts',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 15,
          ),
          SizedBox(
            height: 100,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage:NetworkImage(chats[index].image),
                          ),
                          CircleAvatar(
                            radius:9,
                            backgroundColor: Colors.green,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Text(
                        chats[index].name.split(" ").first,
                        style: const TextStyle(color: Colors.white),
                      )
                    ],
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(width: 10);
                },
                itemCount: chats.length),
          ),
        ],
      ),
    );
  }
}
