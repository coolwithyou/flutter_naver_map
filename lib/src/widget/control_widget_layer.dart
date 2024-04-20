// ignore_for_file: public_member_api_docs, sort_constructors_first
import "package:flutter/material.dart";
import "package:meta/meta.dart";

import "package:flutter_naver_map/flutter_naver_map.dart";

@internal
class ControlWidgetLayer extends StatelessWidget {
  final NaverMapController? controller;
  final NaverMapViewOptions options;
  const ControlWidgetLayer({
    super.key,
    required this.controller,
    required this.options,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        if (options.locationButtonEnable)
          Positioned(
            left: options.contentPadding.left,
            top: options.contentPadding.top,
            right: options.contentPadding.right,
            bottom: options.contentPadding.bottom,
            child: const LocationButtonWidget(),
          ),
        if (options.compassEnable)
          Positioned(
            left: options.contentPadding.left,
            top: options.contentPadding.top,
            right: options.contentPadding.right,
            bottom: options.contentPadding.bottom,
            child: const CompassWidget(),
          ),
      ],
    );
  }
}
