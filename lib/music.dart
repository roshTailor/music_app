import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'global.dart';

class Music extends StatefulWidget {
  const Music({Key? key}) : super(key: key);

  @override
  State<Music> createState() => _MusicState();
}

class _MusicState extends State<Music> {
  //
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   Variable.assetsAudioPlayer.open(Audio(''),
  //   autoStart: true,
  //   showNotification: true,
  //   );
  //
  //   Variable.assetsAudioPlayer.currentPosition.listen((curPosition) {
  //     setState(() {
  //       Variable.position=curPosition;
  //     });
  //   });
  //
  //   Variable.assetsAudioPlayer.current.listen((totalDuration) {
  //     setState(() {
  //       Variable.duration = totalDuration!.audio.duration;
  //     });
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      left: true,
      right: true,
      minimum: const EdgeInsets.only(left: 10, right: 10, top: 60),
      child: ListView(
        children: Variable.audio
            .map((e) => ListTile(
                  onTap: () {
                    // Navigator.of(context).push();
                    //Navigator.pushNamed(context, 'music');
                  },
                  leading: Container(
                    height: 70,
                    width: 65,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                        image: AssetImage(e['image']),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  title: Text(
                    e['name'],
                    style: const TextStyle(
                      color: Color(0xFFFF8D44),
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      letterSpacing: 0.8,
                    ),
                  ),
                  subtitle: Text(
                    e['singer'],
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ),
                  trailing: GestureDetector(
                    onTap: () {
                      setState(() {
                        Variable.assetsAudioPlayer.open(
                          Audio('${e['path']}'),
                          showNotification: true,
                        );
                        Variable.assetsAudioPlayer.isPlaying.value==true
                            ? Variable.assetsAudioPlayer.playOrPause()
                            : Variable.assetsAudioPlayer.stop();
                      });
                    },
                    child: Icon(
                      Variable.assetsAudioPlayer.isPlaying.value
                          ? CupertinoIcons.stop_fill
                          : CupertinoIcons.play_arrow_solid,
                      color: Colors.grey,
                      size: 25,
                    ),
                  ),
                  //tileColor: const Color(0xFFFFE5D4),
                ))
            .toList(),
      ),
    );
  }
}
