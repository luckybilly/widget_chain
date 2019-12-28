import 'package:flutter/material.dart';

extension WidgetChantExt_List<T> on List<T> {

  List<E> buildAll<E>(E Function(T) builder) {
    return this.map<E>((item) {
      return builder(item);
    }).toList();
  }

  List<Widget> buildAllAsWidget(Widget Function(T) builder) {
    return this.map<Widget>((item) {
      return builder(item);
    }).toList();
  }

}
