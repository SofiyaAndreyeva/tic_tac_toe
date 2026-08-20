import 'package:flutter/material.dart';

extension SpaceExt on num {
  SizedBox get spaceH => SizedBox(height: toDouble());
  SizedBox get spaceW => SizedBox(width: toDouble());
}
