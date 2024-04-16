
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/presentation/screens/calls_screen/calls_screen.dart';
import 'package:whatsapp_clone/presentation/screens/home_screen/chat_list.dart';
import 'package:whatsapp_clone/presentation/screens/settings.dart';
import 'package:whatsapp_clone/presentation/screens/status_screen.dart/status_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return DefaultTabController(
        length: 4,
        initialIndex: 1,
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 60,
            actions: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
              PopupMenuButton(
                  position: PopupMenuPosition.under,
                  icon: const Icon(Icons.more_vert),
                  onOpened: () {},
                  onSelected: (v) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('hello'),
                      ),
                    );
                  },
                  itemBuilder: (context) => [
                        const PopupMenuItem(
                          child: Text("New Group"),
                        ),
                        const PopupMenuItem(
                          child: Text("New Broadcast"),
                        ),
                        const PopupMenuItem(
                          child: Text("Linked Devices"),
                        ),
                        const PopupMenuItem(
                          child: Text("Starred messages"),
                        ),
                        const PopupMenuItem(
                          child: Text("Payments"),
                        ),
                        PopupMenuItem(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Settings()));
                          },
                          child: const Text("Settings"),
                        ),
                      ])
            ],
            title: const Text(
              'WhatsApp',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            bottom: TabBar(
              dividerColor: Colors.transparent,
              indicatorColor: Colors.white,
              unselectedLabelStyle: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.normal,
                fontSize: 14,
              ),
              labelStyle: const TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
              tabs: [
                SizedBox(
                  width: size.width / 4,
                  child: const Tab(
                    icon: Icon(Icons.camera_alt),
                  ),
                ),
                SizedBox(
                  width: size.width / 4,
                  child: const Tab(
                    text: 'CHATS',
                  ),
                ),
                SizedBox(
                  width: size.width / 4,
                  child: const Tab(
                    text: 'STATUS',
                  ),
                ),
                SizedBox(
                  width: size.width / 4,
                  child: const Tab(
                    text: 'CALLS',
                  ),
                ),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              Center(child: Text("O P E N   C A M E R A")),
              ChatList(),
              StatusScreen(),
              CallsScreen()
            ],
          ),
        ));
  }
}
