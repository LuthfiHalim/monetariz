import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class BaseContainer extends StatelessWidget {
  final Widget? child;
  final Color? color;
  final BorderRadius? borderRadius;
  final Border? border;
  final double? width, height;
  final EdgeInsets? padding, margin;
  final Alignment alignment;
  final List<BoxShadow>? shadow;
  final LinearGradient? gradient;
  final DecorationImage? image;
  final BoxShape? shape;
  final BoxConstraints? constraints;

  const BaseContainer({
    super.key,
    this.alignment = Alignment.center,
    this.padding,
    this.margin,
    this.width,
    this.height,
    this.child,
    this.color,
    this.image,
    this.gradient,
    this.borderRadius,
    this.shadow,
    this.border,
    this.shape,
    this.constraints,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      margin: margin,
      width: width,
      height: height,
      alignment: alignment,
      constraints: constraints,
      decoration: BoxDecoration(
        image: image,
        gradient: gradient,
        border: border,
        color: color,
        shape: shape ?? BoxShape.rectangle,
        borderRadius: borderRadius,
        boxShadow: shadow,
      ),
      child: child,
    );
  }
}
