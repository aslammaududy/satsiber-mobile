import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:satsiber/app/modules/home/views/chat_list_view.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Satsiber'),
        centerTitle: false,
        elevation: 0,
      ),
      body: ContainedTabBarView(
        tabs: const [
          Text("CHATS"),
          Text("GROUPS"),
          Text("PROFILE"),
        ],
        tabBarProperties: TabBarProperties(
          background: Container(
            color: Colors.blueAccent,
          ),
          indicatorColor: Colors.white,
        ),
        views: [
          ChatListView(),
          Center(child: Text("Groups View")),
          Center(child: Text("Profile View"))
        ],
      ),
    );
  }
}
