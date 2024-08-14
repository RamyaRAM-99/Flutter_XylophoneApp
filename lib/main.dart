import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'dart:async';

import 'package:flutter/widgets.dart';

void main() {
  runApp(const XyloPhoneApp());
}

class XyloPhoneApp extends StatelessWidget {
  const XyloPhoneApp({super.key});

  playSound(int noteName) {
    final player = AudioPlayer();
    player.setSource(AssetSource('note$noteName.wav'));
    player.resume();
  }

  Expanded styleButton(Color btnColor, int noteName) {
    return Expanded(
      child: TextButton(
          onPressed: () {
            playSound(noteName);
          },
          style: TextButton.styleFrom(
            backgroundColor: btnColor,
            shape:
                const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
          ),
          child: const Text('')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              styleButton(Colors.red, 1),
              styleButton(Colors.orange, 2),
              styleButton(Colors.yellow, 3),
              styleButton(Colors.green, 4),
              styleButton(Colors.teal, 5),
              styleButton(Colors.blue, 6),
              styleButton(Colors.purple, 7),
            ],
          ),
        ),
      ),
    );
  }
}
