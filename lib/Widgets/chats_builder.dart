import 'package:flutter/material.dart';
import 'package:test_app/Data/chats_data.dart';
import 'package:test_app/Shared/constants.dart';

class ChatsBuilder {
  Widget ChatBuilderWidget() {
    final chats = CHATS_LIST;
    return ListView.builder(
      itemCount: chats.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              chats[index].isThatGroupChat
                  ? _group_chat(
                      chats[index].userPicture,
                      chats[index].lastMessageTime,
                      chats[index].chatName,
                      chats[index].lastSender,
                      chats[index].lastMessage,
                      chats[index].isMarked,
                      chats[index].markColor,
                      chats[index].mark,
                      chats[index].markTextColor,
                      chats[index].groupMembers!,
                      chats[index].groupMembersPhoto!)
                  : _personal_chat(
                      chats[index].userPicture,
                      chats[index].lastMessageTime,
                      chats[index].chatName,
                      chats[index].lastSender,
                      chats[index].lastMessage,
                      chats[index].isMarked,
                      chats[index].markColor,
                      chats[index].mark,
                      chats[index].markTextColor),
              Divider(
                thickness: 1,
                color: Colors.grey[400],
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _personal_chat(
      String userPicture,
      String lastMessageTime,
      String chatName,
      String lastSender,
      String lastMessage,
      bool isMarked,
      Color? markColor,
      String? mark,
      Color? markTextColor) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(
          userPicture,
        ),
      ),
      trailing: Text(
        lastMessageTime,
        style: const TextStyle(color: AppThemeColor.mainColor),
      ),
      title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              chatName,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 5,
            ),
            Text('$lastSender: $lastMessage'),
            const SizedBox(
              height: 5,
            ),
            isMarked
                ? Column(
                    children: [
                      Container(
                        height: 25,
                        decoration: BoxDecoration(
                            color: markColor,
                            borderRadius: BorderRadius.circular(15)),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 2,
                            ),
                            Text(
                              "  $mark  ",
                              style: TextStyle(color: markTextColor),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                    ],
                  )
                : Container(),
          ]),
    );
  }

  Widget _group_chat(
      String userPicture,
      String lastMessageTime,
      String chatName,
      String lastSender,
      String lastMessage,
      bool isMarked,
      Color? markColor,
      String? mark,
      Color? markTextColor,
      List<String> groupMembers,
      List<String> groupMembersPhoto) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(groupMembersPhoto[0]),
      ),
      trailing: Text(
        lastMessageTime,
        style: const TextStyle(color: AppThemeColor.mainColor),
      ),
      title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${groupMembers[0]}, ${groupMembers[1]}',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 5,
            ),
            Text('$lastSender: $lastMessage'),
            const SizedBox(
              height: 5,
            ),
            isMarked
                ? Column(
                    children: [
                      Container(
                        height: 25,
                        decoration: BoxDecoration(
                            color: markColor,
                            borderRadius: BorderRadius.circular(15)),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 2,
                            ),
                            Text(
                              "  $mark  ",
                              style: TextStyle(color: markTextColor),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                    ],
                  )
                : Container(),
          ]),
    );
  }
}
