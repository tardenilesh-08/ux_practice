// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

enum AniProps { width, height, color, opacity, translateY }

class partyAnimation extends StatelessWidget {
  final double delay;
  final Widget child;

  const partyAnimation({Key? key, required this.delay, required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TimelineTween<AniProps> _animTween = TimelineTween<AniProps>()
      ..addScene(
        begin: const Duration(milliseconds: 0),
        end: const Duration(
          microseconds: 500,
        ),
      ).animate(
        AniProps.opacity,
        tween: Tween(
          begin: 0.0,
          end: 1.0,
        ),
      )
      ..addScene(
        begin: const Duration(milliseconds: 0),
        end: const Duration(
          microseconds: 500,
        ),
        curve: Curves.easeOut,
      ).animate(
        AniProps.translateY,
        tween: Tween(
          begin: 120.0,
          end: 1.0,
        ),
      );

    return PlayAnimation<TimelineValue<AniProps>>(
      tween: _animTween,
      duration: Duration(
        milliseconds: (500 * delay).round(),
      ),
      child: child,
      builder: (context, child, value) => Opacity(
        opacity: value.get(AniProps.opacity),
        child: Transform.translate(
          offset: Offset(
            0.00,
            value.get(AniProps.translateY),
          ),
        ),
      ),
    );
  }
}
