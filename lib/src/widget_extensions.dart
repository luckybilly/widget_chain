import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

/// extension to make it is possible to use function calling instead of Widget Constructor
///
/// For example:
///   Container(
///     color: Colors.white,
///     Offstage(
///       offstage: false,
///       child: Text('hello'),
///     ),
///   );
/// now it is also can looks like this:
///   Text('hello')
///     .intoOffstage(offstage: false)
///     .intoContainer(color: Colors.white);
///
///
extension WidgetChantExt_Widget on Widget {
  List<Widget> addNeighbor(Widget widget) {
    return <Widget>[this, widget];
  }

  List<Widget> asList() {
    return [this];
  }

  Align intoAlign({
    Key key,
    Alignment alignment = Alignment.center,
    double widthFactor,
    double heightFactor,
  }) {
    return Align(
      key: key,
      alignment: alignment,
      widthFactor: widthFactor,
      heightFactor: heightFactor,
      child: this,
    );
  }

  ClipRRect intoClipRRect({
    Key key,
    BorderRadius borderRadius = BorderRadius.zero,
    CustomClipper<RRect> clipper,
    Clip clipBehavior = Clip.antiAlias,
  }) {
    return ClipRRect(
      key: key,
      borderRadius: borderRadius,
      clipper: clipper,
      clipBehavior: clipBehavior,
      child: this,
    );
  }

  ClipOval intoClipOval({
    Key key,
    BorderRadius borderRadius = BorderRadius.zero,
    CustomClipper<Rect> clipper,
    Clip clipBehavior = Clip.antiAlias,
  }) {
    return ClipOval(
      key: key,
      clipper: clipper,
      clipBehavior: clipBehavior,
      child: this,
    );
  }

  ClipPath intoClipPath({
    Key key,
    BorderRadius borderRadius = BorderRadius.zero,
    CustomClipper<Path> clipper,
    Clip clipBehavior = Clip.antiAlias,
  }) {
    return ClipPath(
      key: key,
      clipper: clipper,
      clipBehavior: clipBehavior,
      child: this,
    );
  }

  Offstage intoOffstage({
    Key key,
    bool offstage = true,
  }) {
    return Offstage(
      key: key,
      offstage: offstage,
      child: this,
    );
  }

  Padding intoPadding({
    Key key,
    EdgeInsetsGeometry padding,
  }) {
    return Padding(
      key: key,
      padding: padding,
      child: this,
    );
  }

  Positioned intoPositioned({
    Key key,
    double left,
    double top,
    double right,
    double bottom,
    double width,
    double height,
  }) {
    return Positioned(
      key: key,
      left: left,
      top: top,
      right: right,
      bottom: bottom,
      width: width,
      height: height,
      child: this,
    );
  }

  Center intoCenter({
    Key key,
    double widthFactor,
    double heightFactor,
  }) {
    return Center(
      key: key,
      widthFactor: widthFactor,
      heightFactor: heightFactor,
      child: this,
    );
  }

  Expanded intoExpanded({
    Key key,
    int flex = 1,
  }) {
    return Expanded(
      key: key,
      flex: flex,
      child: this,
    );
  }

  Flexible intoFlexible({
    Key key,
    int flex = 1,
    FlexFit fit = FlexFit.loose,
  }) {
    return Flexible(
      key: key,
      flex: flex,
      fit: fit,
      child: this,
    );
  }

  SizedBox intoSizedBox({
    Key key,
    double width,
    double height,
  }) {
    return SizedBox(
      key: key,
      width: width,
      height: height,
      child: this,
    );
  }

  LimitedBox intoLimitedBox({
    Key key,
    double maxWidth = double.infinity,
    double maxHeight = double.infinity,
  }) {
    return LimitedBox(
      key: key,
      maxWidth: maxWidth,
      maxHeight: maxHeight,
      child: this,
    );
  }

  OverflowBox intoOverflowBox({
    Key key,
    Alignment alignment = Alignment.center,
    double minWidth,
    double maxWidth,
    double minHeight,
    double maxHeight,
  }) {
    return OverflowBox(
      key: key,
      alignment: alignment,
      minWidth: minWidth,
      minHeight: minHeight,
      maxWidth: maxWidth,
      maxHeight: maxHeight,
      child: this,
    );
  }

  SizedOverflowBox intoSizedOverflowBox({
    Key key,
    @required Size size,
    Alignment alignment = Alignment.center,
  }) {
    return SizedOverflowBox(
      key: key,
      size: size,
      alignment: alignment,
      child: this,
    );
  }

  FittedBox intoFittedBox({
    Key key,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
  }) {
    return FittedBox(
      key: key,
      fit: fit,
      alignment: alignment,
      child: this,
    );
  }

  DecoratedBox intoDecoratedBox({
    Key key,
    @required Decoration decoration,
    DecorationPosition position = DecorationPosition.background,
  }) {
    return DecoratedBox(
      key: key,
      decoration: decoration,
      position: position,
      child: this,
    );
  }

  RotatedBox intoRotatedBox({
    Key key,
    @required int quarterTurns,
  }) {
    return RotatedBox(
      key: key,
      quarterTurns: quarterTurns,
      child: this,
    );
  }

  ConstrainedBox intoConstrainedBox({
    Key key,
    @required BoxConstraints constraints,
  }) {
    return ConstrainedBox(
      key: key,
      constraints: constraints,
      child: this,
    );
  }

  UnconstrainedBox intoUnconstrainedBox({
    Key key,
    TextDirection textDirection,
    Alignment alignment = Alignment.center,
    Axis constrainedAxis,
  }) {
    return UnconstrainedBox(
      key: key,
      textDirection: textDirection,
      alignment: alignment,
      constrainedAxis: constrainedAxis,
      child: this,
    );
  }

  AnimatedAlign intoAnimatedAlign({
    Key key,
    Alignment alignment = Alignment.center,
    Curve curve = Curves.linear,
    @required Duration duration,
    VoidCallback onEnd,
  }) {
    return AnimatedAlign(
      key: key,
      alignment: alignment,
      curve: curve,
      duration: duration,
      onEnd: onEnd,
      child: this,
    );
  }

  AnimatedPadding intoAnimatedPadding({
    Key key,
    @required EdgeInsetsGeometry padding,
    Curve curve = Curves.linear,
    @required Duration duration,
    VoidCallback onEnd,
  }) {
    return AnimatedPadding(
      key: key,
      padding: padding,
      curve: curve,
      duration: duration,
      onEnd: onEnd,
      child: this,
    );
  }

  AnimatedContainer intoAnimatedContainer({
    Key key,
    Alignment alignment,
    EdgeInsetsGeometry padding,
    Color color,
    Decoration decoration,
    Decoration foregroundDecoration,
    double width,
    double height,
    BoxConstraints constraints,
    EdgeInsetsGeometry margin,
    Matrix4 transform,
    Curve curve = Curves.linear,
    @required Duration duration,
    VoidCallback onEnd,
  }) {
    return AnimatedContainer(
      key: key,
      alignment: alignment,
      padding: padding,
      color: color,
      decoration: decoration,
      foregroundDecoration: foregroundDecoration,
      width: width,
      height: height,
      constraints: constraints,
      margin: margin,
      transform: transform,
      curve: curve,
      duration: duration,
      onEnd: onEnd,
      child: this,
    );
  }

  SingleChildScrollView intoSingleChildScrollView({
    Key key,
    Axis scrollDirection = Axis.vertical,
    bool reverse = false,
    EdgeInsetsGeometry padding,
    bool primary,
    ScrollPhysics physics,
    ScrollController controller,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
  }) {
    return SingleChildScrollView(
      key: key,
      scrollDirection: scrollDirection,
      reverse: reverse,
      padding: padding,
      primary: primary,
      physics: physics,
      controller: controller,
      dragStartBehavior: dragStartBehavior,
      child: this,
    );
  }

  FlatButton intoFlatButton({
    Key key,
    @required VoidCallback onPressed,
    VoidCallback onLongPress,
    ValueChanged<bool> onHighlightChanged,
    ButtonTextTheme textTheme,
    Color textColor,
    Color disabledTextColor,
    Color color,
    Color disabledColor,
    Color focusColor,
    Color hoverColor,
    Color highlightColor,
    Color splashColor,
    Brightness colorBrightness,
    EdgeInsetsGeometry padding = const EdgeInsets.all(0),
    ShapeBorder shape,
    Clip clipBehavior = Clip.none,
    FocusNode focusNode,
    bool autofocus = false,
    MaterialTapTargetSize materialTapTargetSize,
  }) {
    return FlatButton(
      key: key,
      onPressed: onPressed,
      onLongPress: onLongPress,
      onHighlightChanged: onHighlightChanged,
      textTheme: textTheme,
      textColor: textColor,
      disabledTextColor: disabledTextColor,
      color: color,
      disabledColor: disabledColor,
      focusColor: focusColor,
      hoverColor: hoverColor,
      highlightColor: highlightColor,
      splashColor: splashColor,
      colorBrightness: colorBrightness,
      padding: padding,
      shape: shape,
      clipBehavior: clipBehavior,
      focusNode: focusNode,
      autofocus: autofocus,
      materialTapTargetSize: materialTapTargetSize,
      child: this,
    );
  }

  GestureDetector onTap(GestureTapCallback onTap, {Key key}) {
    return intoGestureDetector(onTap: onTap, key: key);
  }

  GestureDetector onDoubleTap(GestureTapCallback onDoubleTap, {Key key}) {
    return intoGestureDetector(onDoubleTap: onDoubleTap, key: key);
  }

  GestureDetector onLongPress(GestureLongPressCallback onLongPress, {Key key}) {
    return intoGestureDetector(onLongPress: onLongPress, key: key);
  }

  GestureDetector intoGestureDetector({
    Key key,
    GestureTapDownCallback onTapDown,
    GestureTapUpCallback onTapUp,
    GestureTapCallback onTap,
    GestureTapCancelCallback onTapCancel,
    GestureTapDownCallback onSecondaryTapDown,
    GestureTapUpCallback onSecondaryTapUp,
    GestureTapCancelCallback onSecondaryTapCancel,
    GestureTapCallback onDoubleTap,
    GestureLongPressCallback onLongPress,
    GestureLongPressStartCallback onLongPressStart,
    GestureLongPressMoveUpdateCallback onLongPressMoveUpdate,
    GestureLongPressUpCallback onLongPressUp,
    GestureLongPressEndCallback onLongPressEnd,
    GestureDragDownCallback onVerticalDragDown,
    GestureDragStartCallback onVerticalDragStart,
    GestureDragUpdateCallback onVerticalDragUpdate,
    GestureDragEndCallback onVerticalDragEnd,
    GestureDragCancelCallback onVerticalDragCancel,
    GestureDragDownCallback onHorizontalDragDown,
    GestureDragStartCallback onHorizontalDragStart,
    GestureDragUpdateCallback onHorizontalDragUpdate,
    GestureDragEndCallback onHorizontalDragEnd,
    GestureDragCancelCallback onHorizontalDragCancel,
    GestureForcePressStartCallback onForcePressStart,
    GestureForcePressPeakCallback onForcePressPeak,
    GestureForcePressUpdateCallback onForcePressUpdate,
    GestureForcePressEndCallback onForcePressEnd,
    GestureDragDownCallback onPanDown,
    GestureDragStartCallback onPanStart,
    GestureDragUpdateCallback onPanUpdate,
    GestureDragEndCallback onPanEnd,
    GestureDragCancelCallback onPanCancel,
    GestureScaleStartCallback onScaleStart,
    GestureScaleUpdateCallback onScaleUpdate,
    GestureScaleEndCallback onScaleEnd,
    HitTestBehavior behavior,
    bool excludeFromSemantics = false,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
  }) {
    return GestureDetector(
      key: key,
      onTapDown: onTapDown,
      onTapUp: onTapUp,
      onTap: onTap,
      onTapCancel: onTapCancel,
      onSecondaryTapDown: onSecondaryTapDown,
      onSecondaryTapUp: onSecondaryTapUp,
      onSecondaryTapCancel: onSecondaryTapCancel,
      onDoubleTap: onDoubleTap,
      onLongPress: onLongPress,
      onLongPressStart: onLongPressStart,
      onLongPressMoveUpdate: onLongPressMoveUpdate,
      onLongPressUp: onLongPressUp,
      onLongPressEnd: onLongPressEnd,
      onVerticalDragDown: onVerticalDragDown,
      onVerticalDragStart: onVerticalDragStart,
      onVerticalDragUpdate: onVerticalDragUpdate,
      onVerticalDragEnd: onVerticalDragEnd,
      onVerticalDragCancel: onVerticalDragCancel,
      onHorizontalDragDown: onHorizontalDragDown,
      onHorizontalDragStart: onHorizontalDragStart,
      onHorizontalDragUpdate: onHorizontalDragUpdate,
      onHorizontalDragEnd: onHorizontalDragEnd,
      onHorizontalDragCancel: onHorizontalDragCancel,
      onForcePressStart: onForcePressStart,
      onForcePressPeak: onForcePressPeak,
      onForcePressUpdate: onForcePressUpdate,
      onForcePressEnd: onForcePressEnd,
      onPanDown: onPanDown,
      onPanStart: onPanStart,
      onPanUpdate: onPanUpdate,
      onPanEnd: onPanEnd,
      onPanCancel: onPanCancel,
      onScaleStart: onScaleStart,
      onScaleUpdate: onScaleUpdate,
      onScaleEnd: onScaleEnd,
      behavior: behavior,
      excludeFromSemantics: excludeFromSemantics,
      dragStartBehavior: dragStartBehavior,
      child: this,
    );
  }

  Container intoContainer({
    Key key,
    AlignmentGeometry alignment,
    EdgeInsetsGeometry padding,
    Color color,
    Decoration decoration,
    Decoration foregroundDecoration,
    double width,
    double height,
    BoxConstraints constraints,
    EdgeInsetsGeometry margin,
    Matrix4 transform,
  }) {
    return Container(
      key: key,
      alignment: alignment,
      padding: padding,
      color: color,
      decoration: decoration,
      foregroundDecoration: foregroundDecoration,
      width: width,
      height: height,
      constraints: constraints,
      margin: margin,
      transform: transform,
      child: this,
    );
  }
}
