library widget_chain;

export 'src/list_extensions.dart';
export 'src/widget_extensions.dart';
export 'src/widget_list_extensions.dart';

import 'package:flutter/material.dart';

class WidgetChain {
  /// a util function, just return the param widget itself
  /// this function could been used for chain programming,
  /// for example:
  ///   WidgetChain
  ///     .addNeighbor(Text('a'))
  ///     .addNeighbor(Icon(Icons.add))
  ///     .intoContainer()
  ///     ;
  static Widget addNeighbor(Widget widget) {
    return widget;
  }
}
