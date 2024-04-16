import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/data/contacts.dart';
import 'package:whatsapp_clone/presentation/screens/chat_screen/chat_screen.dart';

class ChatList extends StatelessWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ListView.builder(
        dragStartBehavior: DragStartBehavior.down,
        itemCount: contacts.length,
        itemBuilder: (context, index) {
          return ConstrainedBox(
            constraints: BoxConstraints(maxWidth: size.width * 0.95),
            child: ListTile(
              splashColor: Colors.transparent,
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ChatScreen(
                    
                        contact: contacts[index],
                      ))),
              leading: CircleAvatar(
                radius: 22,
                child: Image(
                  image: AssetImage(contacts[index].imageUrl),

                  // height: 40,
                  fit: BoxFit.cover,
                ),
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(contacts[index].name),
                  Text(
                    "12:56 AM",
                    style: Theme.of(context).textTheme.bodySmall,
                  )
                ],
              ),
              subtitle: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Text(
                      contacts[index].lastMessage!,
                      maxLines: 1,
                      softWrap: false,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.025,
                  ),
                  const Icon(
                    Icons.check,
                    size: 12,
                  )
                ],
              ),
            ),
          );
        });
  }
}
