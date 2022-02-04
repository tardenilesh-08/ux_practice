import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

enum AniProps {
  opacity,
  translateX,
}

class FoodDeliveryAnimation extends StatelessWidget {
  final double delay;
  final Widget child;

  const FoodDeliveryAnimation({
    Key? key,
    required this.delay,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TimelineTween<AniProps> _animTween = TimelineTween<AniProps>()
      ..addScene(
        begin: const Duration(milliseconds: 0),
        end: const Duration(
          milliseconds: 500,
        ),
      ).animate(
        AniProps.opacity,
        tween: Tween(
          begin: 0.0,
          end: 1.0,
        ),
      )
      ..addScene(
        begin: const Duration(
          microseconds: 0,
        ),
        end: const Duration(
          milliseconds: 500,
        ),
      ).animate(
        AniProps.translateX,
        tween: Tween(
          begin: 120.0,
          end: 0.0,
        ),
        curve: Curves.linear,
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
            value.get(AniProps.translateX),
            0.00,
          ),
          child: child,
        ),
      ),
    );
  }
}
