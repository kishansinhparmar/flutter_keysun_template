import 'package:flutter/cupertino.dart';

class AppConst {
  static const PaddingAll = const EdgeInsets.all(21);
  static const PaddingAll8 = const EdgeInsets.all(8);
  static const PaddingAll4 = const EdgeInsets.all(4);

  /// Horizontal variations
  static const PaddingHorizontal =
  const EdgeInsets.symmetric(horizontal: 21, vertical: 0);
  static const PaddingHorizontal28 =
  const EdgeInsets.symmetric(horizontal: 28, vertical: 0);
  static const PaddingHorizontal12 =
  const EdgeInsets.symmetric(horizontal: 12, vertical: 0);
  static const PaddingHorizontal18 =
  const EdgeInsets.symmetric(horizontal: 18, vertical: 0);
  static const PaddingHorizontal8 =
  const EdgeInsets.symmetric(horizontal: 8, vertical: 0);
  static const PaddingHorizontal4 =
  const EdgeInsets.symmetric(horizontal: 4, vertical: 0);

  ///Vertical variations
  static const PaddingVertical =
  const EdgeInsets.symmetric(horizontal: 0, vertical: 21);
  static const PaddingVertical8 =
  const EdgeInsets.symmetric(horizontal: 0, vertical: 8);
  static const PaddingVertical4 =
  const EdgeInsets.symmetric(horizontal: 0, vertical: 4);

  static const smallScreenBreakpoint = 640;

  ///If you suppose to define in 3 parts then consider 960.0 breakpoint for larger.
  static const mediumScreenBreakpoint = 960.0;

//  static const mediumScreenBreakpoint = 768;
//  static const largeScreenBreakpoint = 1024;

//  static const extraLargeScreenBreakpoint = 1280;

  static const dialogSize = Size(300, 500);
}
