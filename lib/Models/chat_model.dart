import 'package:flutter/material.dart';

class ChatModel {
  String userPicture;
  String chatName;
  String lastSender;
  String lastMessage;
  String lastMessageTime;
  bool isMarked;
  Color? markColor;
  Color? markTextColor;
  String? mark;
  bool isThatGroupChat;
  List<String>? groupMembers;
  List<String>? groupMembersPhoto;

  ChatModel(
      {required this.userPicture,
      required this.chatName,
      required this.lastSender,
      required this.lastMessage,
      required this.lastMessageTime,
      required this.isMarked,
      required this.isThatGroupChat,
      this.markColor,
      this.markTextColor,
      this.mark,
      this.groupMembers,
      this.groupMembersPhoto});
}
