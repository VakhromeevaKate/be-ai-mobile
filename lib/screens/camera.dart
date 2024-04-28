import 'package:flutter/material.dart';

import '../theme/colors/light_colors.dart';

class Camera extends StatelessWidget {
  const Camera({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: Text('Take a photo of your food'),
        ),
        Row(
          children: <Widget>[
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  textStyle: const TextStyle(
                    fontSize: 20,
                  ),
                  backgroundColor: LightColors.kGreen,
                  foregroundColor: Colors.white
                ),
                onPressed: (){
                  Navigator.pushNamed(context, '/camera');
                },
                child: const Text('Take photo'),
              ),
            ),
          ],
        ),
      ],
    );
  }
}