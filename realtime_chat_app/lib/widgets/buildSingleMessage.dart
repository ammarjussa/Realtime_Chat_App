import 'package:flutter/material.dart';

Widget buildSingleMessage(
  int index,
  List<String> messages,
) {
  return Container(
    alignment: Alignment.centerLeft,
    child: Container(
      padding: EdgeInsets.all(20.0),
      margin: EdgeInsets.only(bottom: 20.0, left: 20.0),
      decoration: BoxDecoration(
          color: Colors.green, borderRadius: BorderRadius.circular(20.0)),
      child: Text(
        messages[index],
        style: TextStyle(color: Colors.white, fontSize: 15.0),
      ),
    ),
  );
}
