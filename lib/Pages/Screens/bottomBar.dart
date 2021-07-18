import 'package:flutter/material.dart';
import 'dart:core';

// ignore: must_be_immutable
class BottomBar extends StatefulWidget {
  VoidCallback onPressed;
  bool bottomIcons;
  String text;
  IconData icons;
  BottomBar({
      required this.onPressed,
      required this.bottomIcons,
      required this.icons,
      required this.text});

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      child: widget.bottomIcons == true
          ? Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(30)),
              padding: EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    widget.icons,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    widget.text,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            )
          : Icon(
              widget.icons,
              color: Colors.grey,
            ),
    );
  }
}
