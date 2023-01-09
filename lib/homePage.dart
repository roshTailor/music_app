import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/video.dart';

import 'gallery.dart';
import 'music.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  final page = [
    const Music(),
    const Gallery(),
    const Video(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: page[index],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color(0xFFFF8D44),
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        backgroundColor: const Color(0xffFEFEFE),
        currentIndex: index,
        onTap: (val) {
          setState(() {
            index = val;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.music_albums),
            label: "Music",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.photo_on_rectangle),
            label: "Gallery",
          ),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.video_camera), label: "Video"),
        ],
      ),
    );
  }
}
