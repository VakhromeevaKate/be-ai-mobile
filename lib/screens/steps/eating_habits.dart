import 'package:flutter/material.dart';
import '../../generated/l10n.dart';

class EatingHabits extends StatelessWidget {
  const EatingHabits({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: Text(S.of(context).EatingHabits),
        ),
      ],
    );
  }
}