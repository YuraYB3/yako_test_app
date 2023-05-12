import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_app/Widgets/chats_builder.dart';
import 'package:test_app/Widgets/search_bar_panel.dart';

class ChatsScreen extends StatefulWidget {
  const ChatsScreen({super.key});

  @override
  State<ChatsScreen> createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: [
              SearchBarPanel.searchBarWidget(),
              const SizedBox(width: 10),
              SearchBarPanel.searchSettingsWidget()
            ],
          ),
        ),
        Expanded(child: ChatsBuilder.ChatBuilderWidget())
      ],
    );
  }
}
