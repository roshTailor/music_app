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
<<<<<<< HEAD
    return SafeArea(
      top: true,
      left: true,
      right: true,
      minimum: const EdgeInsets.only(left: 10, right: 10, top: 60),
=======
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(begin: Alignment.bottomCenter, colors: [
          Colors.white,
          Color(0xFFFFCCA9),
        ]),
      ),
>>>>>>> origin/master
      child: ListView(
        children: Variable.audio
            .map((e) => ListTile(
                  onTap: () {
                    // Navigator.of(context).push();
<<<<<<< HEAD
                    Variable.musicIndex=e as int;
                    Navigator.pushNamed(context, 'music');
=======
                    //Navigator.pushNamed(context, 'music');
>>>>>>> origin/master
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
<<<<<<< HEAD
                      color: Color(0xFFFF8D44),
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
=======
                      color: Color(0xFFD46117),
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
>>>>>>> origin/master
                      letterSpacing: 0.8,
                    ),
                  ),
                  subtitle: Text(
                    e['singer'],
<<<<<<< HEAD
                    style: const TextStyle(
                      color: Colors.grey,
=======
                    style: TextStyle(
                      color: Colors.grey.shade600,
>>>>>>> origin/master
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
<<<<<<< HEAD
                        Variable.assetsAudioPlayer.isPlaying.value==true
                            ? Variable.assetsAudioPlayer.playOrPause()
                            : Variable.assetsAudioPlayer.stop();
=======
                        // Variable.assetsAudioPlayer.isPlaying.value == true
                        //     ? Variable.assetsAudioPlayer.playOrPause()
                        //     : Variable.assetsAudioPlayer.stop();
                        Variable.assetsAudioPlayer.playOrPause();
>>>>>>> origin/master
                      });
                    },
                    child: Icon(
                      Variable.assetsAudioPlayer.isPlaying.value
                          ? CupertinoIcons.stop_fill
                          : CupertinoIcons.play_arrow_solid,
<<<<<<< HEAD
                      color: Colors.grey,
=======
                      color: Colors.grey.shade600,
>>>>>>> origin/master
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
