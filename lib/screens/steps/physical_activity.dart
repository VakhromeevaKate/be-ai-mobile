import 'package:flutter/material.dart';
import '../../generated/l10n.dart';
import '../../theme/colors/light_colors.dart';

class PhysicalActivity extends StatelessWidget {
  const PhysicalActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          child: Text(
            S.of(context).Activity,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
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
                                Text(S.of(context).DoYouPlaySports),
                              ],
                            ),
                            Row(
                              children: [
                                Text(S.of(context).Yes),
                              ],
                            ),
                            Row(
                              children: [
                                Text(S.of(context).No),
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
                                Text(S.of(context).WhatAerobicExercisesDoYouDo),
                              ],
                            ),
                            Row(
                              children: [
                                Text(S.of(context).Walking),
                              ],
                            ),
                            Row(
                              children: [
                                Text(S.of(context).Running),
                              ],
                            ),
                            Row(
                              children: [
                                Text(S.of(context).Cycling),
                              ],
                            ),
                            Row(
                              children: [
                                Text(S.of(context).Swimming),
                              ],
                            ),
                            Row(
                              children: [
                                Text(S.of(context).Fitness),
                              ],
                            ),
                            Row(
                              children: [
                                Text(S.of(context).AnyOther),
                              ],
                            ),
                            Row(
                              children: [
                                Text(S.of(context).IAmNotDoingIt),
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
                                Text(S.of(context).WhatStrengthExercisesDoYouDo),
                              ],
                            ),
                            Row(
                              children: [
                                Text(S.of(context).FreeWeightTraining),
                              ],
                            ),
                            Row(
                              children: [
                                Text(S.of(context).TrainingSimulators),
                              ],
                            ),
                            Row(
                              children: [
                                Text(S.of(context).Yoga),
                              ],
                            ),
                            Row(
                              children: [
                                Text(S.of(context).Pilates),
                              ],
                            ),
                            Row(
                              children: [
                                Text(S.of(context).AnyOther),
                              ],
                            ),
                            Row(
                              children: [
                                Text(S.of(context).IAmNotDoingIt),
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
                                Text(S.of(context).HowOftenDoYouDoStrengthExercises),
                              ],
                            ),
                            Row(
                              children: [
                                Text(S.of(context).NMinutesPerWeek("30-60")),
                              ],
                            ),
                            Row(
                              children: [
                                Text(S.of(context).NMinutesPerWeek("60-100")),
                              ],
                            ),
                            Row(
                              children: [
                                Text(S.of(context).NMinutesPerWeek("100-150")),
                              ],
                            ),
                            Row(
                              children: [
                                Text(S.of(context).NMinutesPerWeek("150-200")),
                              ],
                            ),
                            Row(
                              children: [
                                Text(S.of(context).NMinutesPerWeek("150-200")),
                              ],
                            ),
                            Row(
                              children: [
                                Text(S.of(context).MoreThanNMinutesPerWeek(200)),
                              ],
                            ),
                            Row(
                              children: [
                                Text(S.of(context).IAmNotDoingIt),
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
                                Text(S.of(context).HowOftenDoYouDoAerobicExercises),
                              ],
                            ),
                            Row(
                              children: [
                                Text(S.of(context).NMinutesPerWeek("30-60")),
                              ],
                            ),
                            Row(
                              children: [
                                Text(S.of(context).NMinutesPerWeek("60-100")),
                              ],
                            ),
                            Row(
                              children: [
                                Text(S.of(context).NMinutesPerWeek("100-150")),
                              ],
                            ),
                            Row(
                              children: [
                                Text(S.of(context).NMinutesPerWeek("150-200")),
                              ],
                            ),
                            Row(
                              children: [
                                Text(S.of(context).NMinutesPerWeek("150-200")),
                              ],
                            ),
                            Row(
                              children: [
                                Text(S.of(context).MoreThanNMinutesPerWeek(200)),
                              ],
                            ),
                            Row(
                              children: [
                                Text(S.of(context).IAmNotDoingIt),
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
                                Text(S.of(context).DoYouHaveAnyRestrictionsForPlayingSports),
                              ],
                            ),
                            Row(
                              children: [
                                Text(S.of(context).Yes),
                              ],
                            ),
                            Row(
                              children: [
                                Text(S.of(context).No),
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