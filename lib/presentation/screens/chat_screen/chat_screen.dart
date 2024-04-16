// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/models/contacts_model.dart';

import 'package:whatsapp_clone/presentation/screens/chat_screen/msg_textfield.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({
    super.key,
    required this.contact,
  });

  final ContactsModel contact;

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: size.height * 0.07,
          automaticallyImplyLeading: true,
          leadingWidth: 24,
          title: Row(
            children: [
              CircleAvatar(
                radius: 18,
                child: Image(
                  image: AssetImage(widget.contact.imageUrl),
                  fit: BoxFit.contain,
                  // height: 30,
                ),
              ),
              SizedBox(width: size.width * 0.03),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.contact.name,
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Last seen today at 09:29 AM',
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: Colors.white, fontWeight: FontWeight.normal),
                  ),
                ],
              )
            ],
          ),
          actions: [
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.video_call_rounded)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.phone)),
            PopupMenuButton(
              useRootNavigator: true,
              position: PopupMenuPosition.under,
              icon: const Icon(Icons.more_vert),
              itemBuilder: (context) => [
                const PopupMenuItem(child: Text('View contact')),
                const PopupMenuItem(child: Text('Media, links and docs')),
                const PopupMenuItem(child: Text('Search')),
                const PopupMenuItem(child: Text('Unmute notifications')),
                const PopupMenuItem(child: Text('Disappearing messages')),
                const PopupMenuItem(child: Text('Wallpaper')),
                const PopupMenuItem(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                      Text('More'),
                      Icon(
                        Icons.navigate_next_outlined,
                        color: Colors.black,
                        size: 20,
                      )
                    ]))
              ],
            )
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: Container(
                width: double.maxFinite,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/bg.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      bottom: 0,
                      left: 18,
                      right: 2,
                      child: ConstrainedBox(
                        constraints: const BoxConstraints(
                          minHeight: 80,
                          maxHeight: 100,
                        ),
                        child: Container(
                          color: Colors.transparent,
                          child: const MessageTextFieldArea(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
