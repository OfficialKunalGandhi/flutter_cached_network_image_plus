import 'package:flutter/material.dart';

///Widget default to show errors when cannot load image
class ErrorsWidget extends StatelessWidget {
  ErrorsWidget({
    super.key,
    required this.width,
    required this.height,
  });

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      color: Colors.white,
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(Icons.error, color: Colors.red),
          Text('Error loading Image')
        ],
      ),
    );
  }
}
