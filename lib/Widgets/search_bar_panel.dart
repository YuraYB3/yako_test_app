import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Shared/constants.dart';

class SearchBarPanel {
  static Widget searchBarWidget() {
    return Expanded(
      child: SizedBox(
        height: 48,
        child: TextField(
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.only(bottom: 5),
            labelStyle: const TextStyle(color: Colors.grey),
            hintText: 'Search...',
            prefixIcon: const Icon(
              Icons.search,
              color: Colors.black,
              size: 28,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            disabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: AppThemeColor.secondColor),
            ),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: AppThemeColor.secondColor),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
      ),
    );
  }

  static Widget searchSettingsWidget() {
    return GestureDetector(
      onTap: () {
        print('clicked!');
      },
      child: Container(
        width: 60,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: AppThemeColor.secondColor,
            width: 2,
          ),
        ),
        child: const Icon(
          CupertinoIcons.slider_horizontal_3,
          color: AppThemeColor.secondColor,
          size: 28,
        ),
      ),
    );
  }
}
