import 'package:flutter/material.dart';

import '../Models/chat_model.dart';

var CHATS_LIST = [
  ChatModel(
      userPicture:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_5lDjsvjPEKzVzdVTUS9S4irnBP9imDMJyJJqSKLtyVzWLwQ2LzGm7wwbEx8MJF__Yog&usqp=CAU",
      chatName: "Standart cat",
      lastSender: "You",
      lastMessage: "It`s okay",
      lastMessageTime: "14:48",
      isMarked: true,
      markColor: Colors.yellow,
      markTextColor: Colors.black,
      mark: 'Work',
      isThatGroupChat: false),
  ChatModel(
      userPicture:
          "https://t0.gstatic.com/licensed-image?q=tbn:ANd9GcQkrjYxSfSHeCEA7hkPy8e2JphDsfFHZVKqx-3t37E4XKr-AT7DML8IwtwY0TnZsUcQ",
      chatName: "Doggy",
      lastSender: "Doggy",
      lastMessage: "What a day!",
      lastMessageTime: "Now",
      isMarked: true,
      markColor: Colors.red,
      markTextColor: Colors.white,
      mark: 'Friends',
      isThatGroupChat: false),
  ChatModel(
    userPicture:
        "https://t0.gstatic.com/licensed-image?q=tbn:ANd9GcQkrjYxSfSHeCEA7hkPy8e2JphDsfFHZVKqx-3t37E4XKr-AT7DML8IwtwY0TnZsUcQ",
    chatName: "Animals",
    lastSender: "Doggy",
    lastMessage: "Bark!",
    lastMessageTime: "Now",
    isMarked: true,
    markColor: Colors.green,
    markTextColor: Colors.white,
    mark: 'My boys',
    isThatGroupChat: true,
    groupMembers: ['Doggy', 'Cat', 'Rabbit', 'Parrot'],
    groupMembersPhoto: [
      'https://t0.gstatic.com/licensed-image?q=tbn:ANd9GcQkrjYxSfSHeCEA7hkPy8e2JphDsfFHZVKqx-3t37E4XKr-AT7DML8IwtwY0TnZsUcQ',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_5lDjsvjPEKzVzdVTUS9S4irnBP9imDMJyJJqSKLtyVzWLwQ2LzGm7wwbEx8MJF__Yog&usqp=CAU',
      'https://cdn.shopify.com/s/files/1/0531/2475/9744/files/1_2.jpg?v=1631104786',
      'https://cdn.firstcry.com/education/2022/04/29104112/1115777186.jpg'
    ],
  ),
  ChatModel(
      userPicture: "https://static.dw.com/image/19055840_804.jpg",
      chatName: "Ape",
      lastSender: "Ape",
      lastMessage: "You are wrong!",
      lastMessageTime: "Yesterday",
      isMarked: false,
      isThatGroupChat: false),
  ChatModel(
      userPicture:
          "https://media.cnn.com/api/v1/images/stellar/prod/210707164757-louisiana-python-escape-file.jpg?q=x_0,y_518,h_1600,w_1600,c_crop",
      chatName: "Python",
      lastSender: "Python",
      lastMessage: "Can I hug you?",
      lastMessageTime: "Yesterday",
      isMarked: true,
      mark: 'Do Not Open!',
      markColor: Colors.red,
      markTextColor: Colors.white,
      isThatGroupChat: false),
  ChatModel(
      userPicture:
          "https://i.natgeofe.com/k/0a512abe-65d0-4330-9a08-d68e21bf7aad/cicada-grass_square.jpg",
      chatName: "Cicada",
      lastSender: "Cicada",
      lastMessage: "I hate my self",
      lastMessageTime: "12:30",
      isMarked: false,
      isThatGroupChat: false),
  ChatModel(
      userPicture:
          "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b3/Lepidocybium_flavobrunneum.jpg/640px-Lepidocybium_flavobrunneum.jpg",
      chatName: "Escolar",
      lastSender: "Escolar",
      lastMessage: ".........",
      lastMessageTime: "Yesterday",
      isMarked: false,
      isThatGroupChat: false),
];
