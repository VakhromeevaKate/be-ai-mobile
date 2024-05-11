import 'package:be_ai_mobile/theme/colors/light_colors.dart';
import 'package:flutter/material.dart';
// import 'package:localstorage/localstorage.dart';
import '../../generated/l10n.dart';

class CommonQuestions extends StatelessWidget {
  const CommonQuestions({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: Text(S.of(context).CommonQuestions),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.65,
          child: Expanded(
            child: ListView(
              padding: const EdgeInsets.all(8),
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: LightColors.kLightGreen,
                  ),
                  margin: const EdgeInsets.symmetric(vertical: 16),
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(S.of(context).YourSex),
                        ],
                      ),
                    ],
                  )
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: LightColors.kLightGreen,
                  ),
                  margin: const EdgeInsets.symmetric(vertical: 16),
                  padding: const EdgeInsets.all(8),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(S.of(context).YourAge),
                          ],
                        ),
                      ],
                    )
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: LightColors.kLightGreen,
                  ),
                  margin: const EdgeInsets.symmetric(vertical: 16),
                  padding: const EdgeInsets.all(8),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(S.of(context).YourHeight),
                          ],
                        ),
                      ],
                    )
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: LightColors.kLightGreen,
                  ),
                  margin: const EdgeInsets.symmetric(vertical: 16),
                  padding: const EdgeInsets.all(8),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(S.of(context).YourWeight),
                          ],
                        ),
                      ],
                    )
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: LightColors.kLightGreen,
                  ),
                  margin: const EdgeInsets.symmetric(vertical: 16),
                  padding: const EdgeInsets.all(8),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(S.of(context).YourDesiredWeight),
                          ],
                        ),
                      ],
                    )
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: LightColors.kLightGreen,
                  ),
                  margin: const EdgeInsets.symmetric(vertical: 16),
                  padding: const EdgeInsets.all(8),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(S.of(context).DoYouHaveDiseases),
                          ],
                        ),
                        Row(
                          children: [
                            Text(S.of(context).DiabetesMellitus),
                          ],
                        ),
                        Row(
                          children: [
                            Text(S.of(context).Atherosclerosis),
                          ],
                        ),
                        Row(
                          children: [
                            Text(S.of(context).PolycysticOvarySyndrome),
                          ],
                        ),
                        Row(
                          children: [
                            Text(S.of(context).ThyroidDisease),
                          ],
                        ),
                        Row(
                          children: [
                            Text(S.of(context).GlutenIntolerance),
                          ],
                        ),
                        Row(
                          children: [
                            Text(S.of(context).AnyOther),
                          ],
                        ),
                      ],
                    )
                ),
              ],
            )
          )
        ),
      ],
    );
  }
}