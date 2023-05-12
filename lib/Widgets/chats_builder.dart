import 'package:flutter/material.dart';
import 'package:test_app/Data/chats_data.dart';
import 'package:test_app/Shared/constants.dart';

class ChatsBuilder {
  static Widget ChatBuilderWidget() {
    final chats = CHATS_LIST;
    return ListView.builder(
      itemCount: chats.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                    chats[index].userPicture,
                  ),
                ),
                trailing: Text(
                  chats[index].lastMessageTime,
                  style: const TextStyle(color: AppThemeColor.mainColor),
                ),
                title: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        chats[index].chatName,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                          '${chats[index].lastSender}: ${chats[index].lastMessage}'),
                      const SizedBox(
                        height: 5,
                      ),
                      chats[index].isMarked
                          ? Column(
                              children: [
                                Container(
                                  height: 25,
                                  decoration: BoxDecoration(
                                      color: chats[index].markColor,
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Column(
                                    children: [
                                      const SizedBox(
                                        height: 2,
                                      ),
                                      Text(
                                        "  ${chats[index].mark}  ",
                                        style: const TextStyle(
                                            color: Colors.white),
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
              ),
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
}
