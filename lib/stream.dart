import 'package:flutter/material.dart';

class ColorStream {
  final List<Color> colors = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
    Colors.purple,
    Colors.orange,
    Colors.black,
    Colors.pink,
    Colors.greenAccent,
    Colors.blueGrey,
  ];

  Stream<Color> getColors() async* {
  yield* Stream.periodic(
    const Duration(seconds: 1),
    (int t) {
      int index = t % colors.length;
      return colors[index];
    },
  );
}
}
