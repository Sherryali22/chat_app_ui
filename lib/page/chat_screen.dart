// ignore_for_file: prefer_const_constructors

import 'package:chat_app_ui/widgets/favoritecontacts.dart';
import 'package:flutter/material.dart';

import '../widgets/chat_list.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.indigo,
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          title: Row(
            children: const [
              Text(
                'Chats',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {},
              color: Colors.white,
              icon: Icon(Icons.settings),
            )
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            favoritecontacts(),
            SizedBox(
              height: 15,
            ),
            chatlistview(),
          ],
        ));
  }
}
