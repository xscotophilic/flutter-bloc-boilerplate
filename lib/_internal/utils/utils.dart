import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

class Utils {
  static void hideKeyboard() {
    SystemChannels.textInput.invokeMethod('TextInput.hide');
  }

  static bool get isMouseConnected =>
      RendererBinding.instance.mouseTracker.mouseIsConnected;

  static void unFocus() {
    primaryFocus?.unfocus();
  }
}
