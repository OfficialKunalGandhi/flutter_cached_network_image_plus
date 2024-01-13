library flutter_cached_network_image_plus;

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'defaults.dart';
import 'widgets/widgets.dart';

///beautiful widgets that are cached and have nice Shimmer effect
class CacheNetworkImagePlus extends StatelessWidget {
  CacheNetworkImagePlus({
    Key? key,
    required this.imageUrl,
    this.boxFit = BoxFit.fill,
    this.width = 300,
    this.height = 300,
    this.shimmerDirection = ShimmerDirection.ltr,
    this.shimmerDuration = const Duration(milliseconds: 1500),
    this.cacheKey,
    this.shimmerBaseColor,
    this.shimmerHighlightColor,
    this.shimmerBackColor,
    this.errorWidget,
    this.boxDecoration,
    this.color,
    this.alignment,
    this.imageBuilder,
    this.borderRadius,
    this.padding,
    this.margin,
    this.backgroundColor,
    this.boxShadow,
  }) : super(key: key);

  final String imageUrl;
  final double width;
  final double height;
  final double? borderRadius;
  final EdgeInsets? padding;
  final List<BoxShadow>? boxShadow;
  final Color? backgroundColor;
  final EdgeInsets? margin;
  final ShimmerDirection shimmerDirection;
  final Duration shimmerDuration;
  final BoxFit boxFit;
  final String? cacheKey;
  final Color? shimmerBaseColor;
  final Color? shimmerHighlightColor;
  final Color? shimmerBackColor;
  final Widget? errorWidget;
  final BoxDecoration? boxDecoration;
  final Color? color;
  final Alignment? alignment;
  final ImageWidgetBuilder? imageBuilder;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: backgroundColor,
          boxShadow:boxShadow ?? [],
          borderRadius: BorderRadius.circular(borderRadius ?? 0)),
      clipBehavior: borderRadius == null ? Clip.none : Clip.hardEdge,
      padding: padding,
      margin: margin,
      child: CachedNetworkImage(
        alignment: alignment ?? Alignment.center,
        color: color,
        imageUrl: imageUrl,
        cacheKey: cacheKey,
        fit: boxFit,
        width: width,
        height: height,
        imageBuilder: imageBuilder,
        placeholder: (context, url) => ShimmerWidget(
          width: width,
          height: height,
          shimmerDirection: shimmerDirection,
          shimmerDuration: shimmerDuration,
          baseColor: shimmerBaseColor ?? defaultShimmerBaseColor,
          highlightColor: shimmerHighlightColor ?? defaultShimmerHighlightColor,
          backColor: shimmerBackColor ?? defaultShimmerBackColor,
          boxDecoration: boxDecoration,
        ),
        errorWidget: (context, url, error) =>
            errorWidget ??
            ErrorsWidget(
              width: width,
              height: height,
            ),
      ),
    );
  }
}
