import 'package:colorize/colorize.dart';
import 'package:flutter/material.dart';

class Console {
  static void printChunks(Colorize text) {
    final RegExp pattern = RegExp('.{1,800}'); // 800 is the size of each chunk
    pattern
        .allMatches(text.toString())
        .forEach((RegExpMatch match) => debugPrint(match.group(0)));
  }

  static void log(String text, [data]) {
    Colorize txt = Colorize(text);
    Console.printChunks(txt);

    if (data != null) {
      Colorize dataColor = Colorize(data.toString());
      Console.printChunks(dataColor);
    }
  }

  static void info(String text, [data]) {
    Colorize txt = Colorize(text);
    txt.blue();
    Console.printChunks(txt);

    if (data != null) {
      Colorize dataColor = Colorize(data.toString());
      dataColor.blue();
      Console.printChunks(dataColor);
    }
  }

  static void success(String text, [data]) {
    Colorize txt = Colorize(text);
    txt.green();
    Console.printChunks(txt);

    if (data != null) {
      Colorize dataColor = Colorize(data.toString());
      dataColor.green();
      Console.printChunks(dataColor);
    }
  }

  static void warning(String text, [data]) {
    Colorize txt = Colorize(text);
    txt.yellow();
    Console.printChunks(txt);

    if (data != null) {
      Colorize dataColor = Colorize(data.toString());
      dataColor.yellow();
      Console.printChunks(dataColor);
    }
  }

  static void danger(String text, [data]) {
    Colorize txt = Colorize(text);
    txt.red();
    Console.printChunks(txt);

    if (data != null) {
      Colorize dataColor = Colorize(data.toString());
      dataColor.red();
      Console.printChunks(dataColor);
    }
  }
}
