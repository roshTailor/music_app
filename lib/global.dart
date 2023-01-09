import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

class Variable {
  static TextEditingController userName = TextEditingController();
  static String user_name = '', pswd = '';
  static TextEditingController password = TextEditingController();
  static GlobalKey<FormState> login = GlobalKey<FormState>();
  static bool rememberMe = false;
  static Duration position = Duration.zero, duration = Duration.zero;
  static AssetsAudioPlayer assetsAudioPlayer = AssetsAudioPlayer();

  static List<Map<String,dynamic>> audio = [
    {
      'name': 'Bandeya',
      'singer': 'Arijit Singh',
      'path': 'asset/Music/song/bandeya.mp3',
      'image': 'asset/Music/Jpg/bandeya.jpg',
      'height': 1.3,
    },
    {
      'name': 'Dhun Lagi',
      'singer': 'Sachin Jigar',
      'path': 'asset/Music/song/dhun.mp3',
      'image': 'asset/Music/Jpg/dhun.jpg',
      'height': 1,
    },
    {
      'name': 'Jaan Nisaar',
      'singer': 'Arijit Singh',
      'path': 'asset/Music/song/jaan.mp3',
      'image': 'asset/Music/Jpg/jaan.jpg',
      'height': 1.2,
    },
    {
      'name': 'Kesariya',
      'singer': 'Arijit Singh',
      'path': 'asset/Music/song/kesariya.mp3',
      'image': 'asset/Music/Jpg/kesariya.jpg',
      'height': 1.5,
    },
    {
      'name': 'Maan Meri Jaan',
      'singer': 'King',
      'path': 'asset/Music/song/maan.mp3',
      'image': 'asset/Music/Jpg/maan.jpg',
      'height': 1,
    },
    {
      'name': 'Jingle Bell',
      'singer': 'Yo Yo Honey Singh',
      'path': 'asset/Music/song/bell.mp3',
      'image': 'asset/Music/Jpg/bell.jpg',
      'height': 1.2,
    },
    {
      'name': 'Tu Aake Dekhle',
      'singer': 'King',
      'path': 'asset/Music/song/dekhle.mp3',
      'image': 'asset/Music/Jpg/dekhle.jpg',
      'height': 1.4,
    },
    {
      'name': 'Kehndi Hundi Si',
      'singer': 'Fazilpuria',
      'path': 'asset/Music/song/hundi.mp3',
      'image': 'asset/Music/Jpg/hundi.jpg',
      'height': 1.2,
    },
    {
      'name': 'Jhoome Jo Pathaan',
      'singer': 'Arijit Singh',
      'path': 'asset/Music/song/jhoome.mp3',
      'image': 'asset/Music/Jpg/jhoome.jpg',
      'height': 1.5,
    },
    {
      'name': 'Oops',
      'singer': 'King',
      'path': 'asset/Music/song/oops.mp3',
      'image': 'asset/Music/Jpg/oops.jpg',
      'height': 1.4,
    },
    {
      'name': 'Meethy Paan Di Galori',
      'singer': 'Nooran Sisters',
      'path': 'asset/Music/song/paan.mp3',
      'image': 'asset/Music/Jpg/paan.jpg',
      'height': 1.4,
    },
    {
      'name': 'Apna Bana Le',
      'singer': 'Arijit Singh',
      'path': 'asset/Music/song/sooraj.mp3',
      'image': 'asset/Music/Jpg/sooraj.jpg',
      'height': 1.5,
    },
    {
      'name': 'Madhanya',
      'singer': 'Rahul Vaidya',
      'path': 'asset/Music/song/Madhanya.mp3',
      'image': 'asset/Music/Jpg/madhanya.jpg',
      'height': 1.5,
    },
    {
      'name': 'Kyaa baat hai',
      'singer': 'Rahul Vaidya',
      'path': 'asset/Music/song/Kyaa baat hai!!.mp3',
      'image': 'asset/Music/Jpg/kyaa baat.jpg',
      'height': 1.5,
    },
  ];
}
