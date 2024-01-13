import 'package:flutter/material.dart';
import 'dart:math';


Color randomColor() {
  return Color(Random().nextInt(0xffffffff));
}
class InfoModel {
  const InfoModel({
    required this.url,
    this.shimmerBaseColor,
    this.shimmerHighlightColor,
    this.shimmerBackColor,
    this.errorWidget,
  });

  final String url;
  final Color? shimmerBaseColor;
  final Color? shimmerHighlightColor;
  final Color? shimmerBackColor;
  final Widget? errorWidget;
}

final dataRandom = <InfoModel>[
  InfoModel(
    url:
    'https://source.unsplash.com/random/500x500',
    shimmerBaseColor: randomColor(),
    shimmerHighlightColor: randomColor(),
    shimmerBackColor: randomColor(),
  ), InfoModel(
    url:
    'https://source.unsplash.com/random/500x500',
    shimmerBaseColor: randomColor(),
    shimmerHighlightColor: randomColor(),
    shimmerBackColor: randomColor(),
  ), InfoModel(
    url:
    'https://source.unsplash.com/random/500x500',
    shimmerBaseColor: randomColor(),
    shimmerHighlightColor: randomColor(),
    shimmerBackColor: randomColor(),
  ), InfoModel(
    url:
    'https://source.unsplash.com/random/500x500',
    shimmerBaseColor: randomColor(),
    shimmerHighlightColor: randomColor(),
    shimmerBackColor: randomColor(),
  ), InfoModel(
    url:
    'https://source.unsplash.com/random/500x500',
    shimmerBaseColor: randomColor(),
    shimmerHighlightColor: randomColor(),
    shimmerBackColor: randomColor(),
  ), InfoModel(
    url:
    'https://source.unsplash.com/random/500x500',
    shimmerBaseColor: randomColor(),
    shimmerHighlightColor: randomColor(),
    shimmerBackColor: randomColor(),
  ), InfoModel(
    url:
    'https://source.unsplash.com/random/500x500',
    shimmerBaseColor: randomColor(),
    shimmerHighlightColor: randomColor(),
    shimmerBackColor: randomColor(),
  ), InfoModel(
    url:
    'https://source.unsplash.com/random/500x500',
    shimmerBaseColor: randomColor(),
    shimmerHighlightColor: randomColor(),
    shimmerBackColor: randomColor(),
  ), InfoModel(
    url:
    'https://source.unsplash.com/random/500x500',
    shimmerBaseColor: randomColor(),
    shimmerHighlightColor: randomColor(),
    shimmerBackColor: randomColor(),
  ),
];

final dataDefault = <InfoModel>[
  InfoModel(
    url:
    'https://source.unsplash.com/random/500x500',
  ),InfoModel(
    url:
    'https://source.unsplash.com/random/500x500',
  ),InfoModel(
    url:
    'https://source.unsplash.com/random/500x500',
  ),InfoModel(
    url:
    'https://source.unsplash.com/random/500x500',
  ),InfoModel(
    url:
    'https://source.unsplash.com/random/500x500',
  ), InfoModel(
    url:
    'https://source.unsplash.com/random/500x500',
  ), InfoModel(
    url:
    'https://source.unsplash.com/random/500x500',
  ), InfoModel(
    url:
    'https://source.unsplash.com/random/500x500',
  ), InfoModel(
    url:
    'https://source.unsplash.com/random/500x500',
  ), InfoModel(
    url:
    'https://source.unsplash.com/random/500x500',
  ), InfoModel(
    url:
    'https://source.unsplash.com/random/500x500',
  ), InfoModel(
    url:
    'https://source.unsplash.com/random/500x500',
  ),

];

final dataDefaultError = <InfoModel>[
  InfoModel(
    url:
    'https://source.unsplash.com/random/500x500',
    errorWidget: Image.network(
        'https://i0.wp.com/www.dobitaobyte.com.br/wp-content/uploads/2016/02/no_image.png?ssl=1'),
  ),

];