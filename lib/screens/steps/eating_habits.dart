import 'package:flutter/material.dart';
// import 'package:localstorage/localstorage.dart';
import '../../generated/l10n.dart';
import '../../theme/colors/light_colors.dart';

class EatingHabits extends StatelessWidget {
  const EatingHabits({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          child: Text(
            S.of(context).EatingHabits,
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
                                Text(S.of(context).HowOftenDoYouSkipBreakfastInAWeek),
                              ],
                            ),
                            const Row(
                              children: [
                                Text('1-7'),
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
                                Flexible( child:
                                    Text(S.of(context).HowOftenDoYouDrinkSugaryDrinks),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text(S.of(context).OneTimePerWeekOrLess),
                              ],
                            ),
                            Row(
                              children: [
                                Text(S.of(context).NTimesPerWeek("2-4")),
                              ],
                            ),
                            Row(
                              children: [
                                Text(S.of(context).NTimesPerWeek("5-10")),
                              ],
                            ),
                            Row(
                              children: [
                                Text(S.of(context).MoreThanNTimesPerWeek(11)),
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
                                Text(S.of(context).HowManyCupsOfWaterDoYouDrinkPerDay),
                              ],
                            ),
                            Row(
                              children: [
                                Text(S.of(context).OnePerDayOrLess),
                              ],
                            ),
                            Row(
                              children: [
                                Text(S.of(context).NPerDay("2-4")),
                              ],
                            ),
                            Row(
                              children: [
                                Text(S.of(context).NPerDay("5-8")),
                              ],
                            ),
                            Row(
                              children: [
                                Text(S.of(context).MoreThanNPerDay(9)),
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
                                Text(S.of(context).HowOftenDoYouEatFastFoodOrEatOut),
                              ],
                            ),
                            Row(
                              children: [
                                Text(S.of(context).OnePerMonth),
                              ],
                            ),
                            Row(
                              children: [
                                Text(S.of(context).NPerMonth('2-3')),
                              ],
                            ),
                            Row(
                              children: [
                                Text(S.of(context).NTimesPerWeek('1-2')),
                              ],
                            ),
                            Row(
                              children: [
                                Text(S.of(context).NTimesPerWeek('3-4')),
                              ],
                            ),
                            Row(
                              children: [
                                Text(S.of(context).MoreThanNTimesPerWeek(5)),
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
                                Text(S.of(context).HowOftenDoYouDrinkAlcohol),
                              ],
                            ),
                            Row(
                              children: [
                                Text(S.of(context).OnePerMonth),
                              ],
                            ),
                            Row(
                              children: [
                                Text(S.of(context).NPerMonth('2-3')),
                              ],
                            ),
                            Row(
                              children: [
                                Text(S.of(context).NTimesPerWeek('1-2')),
                              ],
                            ),
                            Row(
                              children: [
                                Text(S.of(context).NTimesPerWeek('3-4')),
                              ],
                            ),
                            Row(
                              children: [
                                Text(S.of(context).MoreThanNTimesPerWeek(5)),
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