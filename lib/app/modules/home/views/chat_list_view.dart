import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';
import 'package:intl/intl.dart';

class ChatListView extends GetView {
  @override
  Widget build(BuildContext context) {
    var tanggal = DateFormat("MMMM d H:m").format(DateTime.now());
    return ListView(
      children: [
        GFListTile(
          avatar: const GFAvatar(),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Kontak"),
              Text(tanggal),
            ],
          ).paddingOnly(bottom: 5),
          subTitle: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text("ISI"),
              GFBadge(
                color: Colors.red,
                child: Text("1"),
                shape: GFBadgeShape.circle,
                size: GFSize.MEDIUM,
              )
            ],
          ),
        ),
      ],
    );
  }
}
