import 'package:classroom/watsapp/chats.dart';
import 'package:classroom/watsapp/community.dart';
import 'package:classroom/watsapp/status.dart';
import 'package:classroom/watsapp/watappcall.dart';
import 'package:flutter/material.dart';
class WatsappUi extends StatefulWidget {
  WatsappUi({Key? key}) : super(key: key);

  @override
  State<WatsappUi> createState() => _WatsappUiState();
}

class _WatsappUiState extends State<WatsappUi>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this, initialIndex: 1);
  }

  final List<Tab> myTabs = const [
    Tab(
      icon: Icon(Icons.person),
    ),
    Tab(
      text: "Chats",
    ),
    Tab(text: "Status"),
    Tab(text: "Calls"),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          actions: [
            const Icon(Icons.camera_alt),
            const SizedBox(
              width: 10,
            ),
            const Icon(Icons.search),
            const SizedBox(
              width: 10,
            ),
            getPopupMenuButton(),
          ],
          title: const Text("WhatsApp"),
          backgroundColor: const Color(0xFF25D366),
          bottom: TabBar(
            tabs: myTabs,
            controller: _tabController,
            indicatorColor: Colors.white,
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: const [
                  Community(),
                  ChatScreen(),
                  Status(),
                  WatsappCall(),
                ],
              ),
            ),
          ],
        ),
        floatingActionButton: AnimatedBuilder(
          animation: _tabController.animation!,
          builder: (context, child) {
            final _tabIndex = _tabController.index;
            return getFloatingActionButton(_tabIndex);
          },
        ),
      ),
    );
  }

  Widget getFloatingActionButton(int fIndex) {
    if (fIndex == 1) {
      return FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.chat),
        backgroundColor: const Color(0xFF25D366),
      );
    }
    if (fIndex == 2) {
      return Stack(
        children: [
          Positioned(
            bottom: 10,
            right: 20,
            child: FloatingActionButton(
              onPressed: () {},
              backgroundColor: Color(0xFF25D366),
              child: const Icon(Icons.camera_alt),
            ),
          ),
          Positioned(
            bottom: 80,
            right: 20,
            child: FloatingActionButton(
              onPressed: () {},
              backgroundColor: Colors.blueGrey,
              child: const Icon(Icons.edit),
            ),
          ),
        ],
      );
    }
    if (fIndex == 3) {
      return FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.call),
        backgroundColor: const Color(0xFF25D366),
      );
    }
    return FloatingActionButton(
      onPressed: () {},
      child: Container(),
      backgroundColor: Colors.transparent,
      elevation: 0,
    );
  }

  Widget getPopupMenuButton() {
    return PopupMenuButton(
      itemBuilder: (context) {
        return getPopupMenuItems();
      },
    );
  }

  List<PopupMenuEntry<String>> getPopupMenuItems() {
    switch (_tabController.index) {
      case 0:
        return getSettingsMenuItems();
      case 1:
        return getChatMenuItems();
      case 2:
        return getStatusMenuItems();
      case 3:
        return getCallsMenuItems();
    }
    return [];
  }

  List<PopupMenuEntry<String>> getSettingsMenuItems() {
    return [
      const PopupMenuItem<String>(child: Text("Settings")),
    ];
  }

  List<PopupMenuEntry<String>> getChatMenuItems() {
    return [
      const PopupMenuItem<String>(child: Text("New group")),
      const PopupMenuItem<String>(child: Text("New broadcast")),
      const PopupMenuItem<String>(child: Text("Linked devices")),
      const PopupMenuItem<String>(child: Text("Starred messages")),
      const PopupMenuItem<String>(child: Text("Payments")),
      const PopupMenuItem<String>(child: Text("Settings")),
    ];
  }

  List<PopupMenuEntry<String>> getStatusMenuItems() {
    return [
      const PopupMenuItem<String>(child: Text("Status Privacy")),
      const PopupMenuItem<String>(child: Text("Settings")),
    ];
  }

  List<PopupMenuEntry<String>> getCallsMenuItems() {
    return [
      const PopupMenuItem<String>(child: Text("Clear call log")),
      const PopupMenuItem<String>(child: Text("Settings")),
    ];
  }
}
