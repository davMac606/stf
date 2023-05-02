
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Som extends StatefulWidget {
  const Som({super.key});

  @override
  State<Som> createState() => _SomState();
}

class _SomState extends State<Som> {
  String linkSom =
      'https://static.vecteezy.com/system/resources/previews/003/611/805/original/sound-speaker-icon-on-white-background-free-vector.jpg';
//'https://static.vecteezy.com/system/resources/previews/003/611/449/original/do-not-make-a-loud-noise-no-speaker-no-sound-icon-free-vector.jpg';
  String mensagem = "On";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Image.network(linkSom),
        Text(mensagem),
        ElevatedButton(onPressed: () {
          setState(() {
            mudaEstado();
          });
        }, child: Text("Turn on/off")),
      ]),
    ));
  }

  void mudaEstado() {
    if (mensagem == "Off") {
      mensagem = "On";
      linkSom =
          'https://static.vecteezy.com/system/resources/previews/003/611/805/original/sound-speaker-icon-on-white-background-free-vector.jpg';
    } else {
      mensagem = "Off";
      linkSom =
          'https://static.vecteezy.com/system/resources/previews/003/611/449/original/do-not-make-a-loud-noise-no-speaker-no-sound-icon-free-vector.jpg';
          
    }
  }
}
