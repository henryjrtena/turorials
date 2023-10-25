import 'package:flutter/material.dart';
import 'package:tutorials/utils/enums.dart';

extension LanguagesExt on Languages {
  Icon get icon {
    switch (this) {
      case Languages.arduino:
        return const Icon(Icons.sports_motorsports);
      case Languages.c:
        return const Icon(Icons.abc);
      case Languages.cplusplus:
        return const Icon(Icons.plus_one_outlined);
      case Languages.dart:
        return const Icon(Icons.dangerous);
      case Languages.java:
        return const Icon(Icons.coffee);
      case Languages.ruby:
        return const Icon(Icons.diamond);
      default:
        return const Icon(Icons.home);
    }
  }
}