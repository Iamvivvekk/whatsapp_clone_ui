import 'package:flutter/material.dart';
import 'package:whatsapp_clone/data/contacts.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.of(context).size;
    return ListView.builder(
      itemCount: contacts.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.green, width: 2),
                shape: BoxShape.circle),
            child: const CircleAvatar(
              backgroundColor: Colors.grey,
              radius: 25,
              backgroundImage: AssetImage('assets/welcome.png'),
            ),
          ),
          title: Text(contacts[index].name),
          subtitle: const Text('09:50 AM'),
        );
      },
    );
  }
}
