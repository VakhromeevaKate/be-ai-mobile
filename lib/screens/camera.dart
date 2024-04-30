import 'package:flutter/material.dart';

import '../theme/colors/light_colors.dart';

class Camera extends StatelessWidget {
  const Camera({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,

      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: Text('Take a photo of your food'),
        ),
        Center(
          child:
            IconButton(
              icon: const Icon(Icons.camera_alt),
              style: ElevatedButton.styleFrom(
                textStyle: const TextStyle(
                  fontSize: 32,
                ),
                backgroundColor: LightColors.kGreen,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              ),
              onPressed: (){
                Navigator.pushNamed(context, '/camera');
              },
            ),
        ),
      ],
    );
  }
}