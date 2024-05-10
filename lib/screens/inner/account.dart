import 'package:flutter/material.dart';

import '../../generated/l10n.dart';
import '../../theme/colors/light_colors.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: Text(S.of(context).Account),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/images/icon.png'),
            radius: 100,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                textStyle: const TextStyle(
                  fontSize: 32,
                ),
                backgroundColor: LightColors.kGreen,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              ),
              onPressed: (){
                // Navigator.pushNamed(context, '/home');
                Navigator.pushNamed(context, '/questionnaire');
              },
              child: Text(S.of(context).Questionnaire),
            ),
          ),
        ),
      ],
    );
  }
}