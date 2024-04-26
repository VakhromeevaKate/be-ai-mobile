import 'package:flutter/material.dart';

class Camera extends StatelessWidget {
  const Camera({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: Text('Camera Screen'),
        ),
      ],
    );
  }
}