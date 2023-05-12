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

  ChatModel(
      {required this.userPicture,
      required this.chatName,
      required this.lastSender,
      required this.lastMessage,
      required this.lastMessageTime,
      required this.isMarked,
      this.markColor,
      this.markTextColor,
      this.mark});
}
