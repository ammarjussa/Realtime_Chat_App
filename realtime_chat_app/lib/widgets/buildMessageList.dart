import 'package:flutter/material.dart';

import 'buildSingleMessage.dart';

Widget buildMessageList(double height, double width, List<String> messages,
    ScrollController scrollController) {
  return Container(
    height: height * 0.8,
    width: width,
    child: ListView.builder(
        controller: scrollController,
        itemCount: messages.length,
        itemBuilder: (BuildContext context, int index) {
          return buildSingleMessage(index, messages);
        }),
  );
}
