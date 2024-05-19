import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:localstorage/localstorage.dart';
import '../../generated/l10n.dart';
import '../../theme/colors/light_colors.dart';

class EatingHabits extends StatefulWidget {
  const EatingHabits({super.key});

  @override
  State<EatingHabits> createState() => _EatingHabits();
}

class _EatingHabits extends State<EatingHabits> {
  var skipBreakfastTimes = 0;

  var sugaryDrinksPerWeek = {
    "once": false,
    "from2to4": false,
    "from5to10": false,
    "moreThan11": false,
  };

  var cupsOfWaterPerDay = {
    "one": false,
    "from2to4": false,
    "from5to8": false,
    "moreThan9": false,
  };

  var fastFood = {
    "oncePerMonth": false,
    "upTo3TimesPerMonth": false,
    "upTo2TimesPerWeek": false,
    "upTo4TimesPerWeek": false,
    "moreThan5TimesPerWeek": false,
  };

  var alcohol = {
    "oncePerMonth": false,
    "upTo3TimesPerMonth": false,
    "upTo2TimesPerWeek": false,
    "upTo4TimesPerWeek": false,
    "moreThan5TimesPerWeek": false,
  };

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
                            Flexible(
                              child: Text(S.of(context).HowOftenDoYouSkipBreakfastInAWeek),
                            ),
                          ],
                        ),
                        const Row(
                          children: [
                            Text('0-7'),
                          ],
                        ),
                        TextField(
                          keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter.digitsOnly,
                            LengthLimitingTextInputFormatter(1),
                          ],
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(4.0),
                              borderSide:  const BorderSide(color: Colors.grey),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(4.0),
                              borderSide:  const BorderSide(color: LightColors.kGreen),
                            ),
                          ),
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
                            Checkbox(
                              tristate: true,
                              value: sugaryDrinksPerWeek["once"] == true,
                              onChanged: (bool? value) {
                                setState(() {
                                  if (value != null) {
                                    sugaryDrinksPerWeek["once"] = true;
                                    // medicines = "";
                                  } else {
                                    sugaryDrinksPerWeek["once"] = false;
                                  }
                                });
                              },
                            ),
                            Text(S.of(context).OneTimePerWeekOrLess),
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                              tristate: true,
                              value: sugaryDrinksPerWeek["from2to4"] == true,
                              onChanged: (bool? value) {
                                setState(() {
                                  if (value != null) {
                                    sugaryDrinksPerWeek["from2to4"] = true;
                                    // medicines = "";
                                  } else {
                                    sugaryDrinksPerWeek["from2to4"] = false;
                                  }
                                });
                              },
                            ),
                            Text(S.of(context).NTimesPerWeek("2-4")),
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                              tristate: true,
                              value: sugaryDrinksPerWeek["from5to10"] == true,
                              onChanged: (bool? value) {
                                setState(() {
                                  if (value != null) {
                                    sugaryDrinksPerWeek["from5to10"] = true;
                                    // medicines = "";
                                  } else {
                                    sugaryDrinksPerWeek["from5to10"] = false;
                                  }
                                });
                              },
                            ),
                            Text(S.of(context).NTimesPerWeek("5-10")),
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                              tristate: true,
                              value: sugaryDrinksPerWeek["moreThan11"] == true,
                              onChanged: (bool? value) {
                                setState(() {
                                  if (value != null) {
                                    sugaryDrinksPerWeek["moreThan11"] = true;
                                    // medicines = "";
                                  } else {
                                    sugaryDrinksPerWeek["moreThan11"] = false;
                                  }
                                });
                              },
                            ),
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
                            Flexible(
                              child: Text(S.of(context).HowManyCupsOfWaterDoYouDrinkPerDay),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                              tristate: true,
                              value: cupsOfWaterPerDay["one"] == true,
                              onChanged: (bool? value) {
                                setState(() {
                                  if (value != null) {
                                    cupsOfWaterPerDay["one"] = true;
                                    // medicines = "";
                                  } else {
                                    cupsOfWaterPerDay["one"] = false;
                                  }
                                });
                              },
                            ),
                            Text(S.of(context).OnePerDayOrLess),
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                              tristate: true,
                              value: cupsOfWaterPerDay["from2to4"] == true,
                              onChanged: (bool? value) {
                                setState(() {
                                  if (value != null) {
                                    cupsOfWaterPerDay["from2to4"] = true;
                                    // medicines = "";
                                  } else {
                                    cupsOfWaterPerDay["from2to4"] = false;
                                  }
                                });
                              },
                            ),
                            Text(S.of(context).NPerDay("2-4")),
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                              tristate: true,
                              value: cupsOfWaterPerDay["from5to8"] == true,
                              onChanged: (bool? value) {
                                setState(() {
                                  if (value != null) {
                                    cupsOfWaterPerDay["from5to8"] = true;
                                    // medicines = "";
                                  } else {
                                    cupsOfWaterPerDay["from5to8"] = false;
                                  }
                                });
                              },
                            ),
                            Text(S.of(context).NPerDay("5-8")),
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                              tristate: true,
                              value: cupsOfWaterPerDay["moreThan9"] == true,
                              onChanged: (bool? value) {
                                setState(() {
                                  if (value != null) {
                                    cupsOfWaterPerDay["moreThan9"] = true;
                                    // medicines = "";
                                  } else {
                                    cupsOfWaterPerDay["moreThan9"] = false;
                                  }
                                });
                              },
                            ),
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
                            Flexible(
                              child: Text(S.of(context).HowOftenDoYouEatFastFoodOrEatOut),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                              tristate: true,
                              value: fastFood["oncePerMonth"] == true,
                              onChanged: (bool? value) {
                                setState(() {
                                  if (value != null) {
                                    fastFood["oncePerMonth"] = true;
                                    // medicines = "";
                                  } else {
                                    fastFood["oncePerMonth"] = false;
                                  }
                                });
                              },
                            ),
                            Text(S.of(context).OnePerMonth),
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                              tristate: true,
                              value: fastFood["upTo3TimesPerMonth"] == true,
                              onChanged: (bool? value) {
                                setState(() {
                                  if (value != null) {
                                    fastFood["upTo3TimesPerMonth"] = true;
                                    // medicines = "";
                                  } else {
                                    fastFood["upTo3TimesPerMonth"] = false;
                                  }
                                });
                              },
                            ),
                            Text(S.of(context).NPerMonth('2-3')),
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                              tristate: true,
                              value: fastFood["upTo2TimesPerWeek"] == true,
                              onChanged: (bool? value) {
                                setState(() {
                                  if (value != null) {
                                    fastFood["upTo2TimesPerWeek"] = true;
                                    // medicines = "";
                                  } else {
                                    fastFood["upTo2TimesPerWeek"] = false;
                                  }
                                });
                              },
                            ),
                            Text(S.of(context).NTimesPerWeek('1-2')),
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                              tristate: true,
                              value: fastFood["upTo4TimesPerWeek"] == true,
                              onChanged: (bool? value) {
                                setState(() {
                                  if (value != null) {
                                    fastFood["upTo4TimesPerWeek"] = true;
                                    // medicines = "";
                                  } else {
                                    fastFood["upTo4TimesPerWeek"] = false;
                                  }
                                });
                              },
                            ),
                            Text(S.of(context).NTimesPerWeek('3-4')),
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                              tristate: true,
                              value: fastFood["moreThan5TimesPerWeek"] == true,
                              onChanged: (bool? value) {
                                setState(() {
                                  if (value != null) {
                                    fastFood["moreThan5TimesPerWeek"] = true;
                                    // medicines = "";
                                  } else {
                                    fastFood["moreThan5TimesPerWeek"] = false;
                                  }
                                });
                              },
                            ),
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
                            Flexible(
                              child: Text(S.of(context).HowOftenDoYouDrinkAlcohol),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                              tristate: true,
                              value: alcohol["oncePerMonth"] == true,
                              onChanged: (bool? value) {
                                setState(() {
                                  if (value != null) {
                                    alcohol["oncePerMonth"] = true;
                                    // medicines = "";
                                  } else {
                                    alcohol["oncePerMonth"] = false;
                                  }
                                });
                              },
                            ),
                            Text(S.of(context).OnePerMonth),
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                              tristate: true,
                              value: alcohol["upTo3TimesPerMonth"] == true,
                              onChanged: (bool? value) {
                                setState(() {
                                  if (value != null) {
                                    alcohol["upTo3TimesPerMonth"] = true;
                                    // medicines = "";
                                  } else {
                                    alcohol["upTo3TimesPerMonth"] = false;
                                  }
                                });
                              },
                            ),
                            Text(S.of(context).NPerMonth('2-3')),
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                              tristate: true,
                              value: alcohol["upTo2TimesPerWeek"] == true,
                              onChanged: (bool? value) {
                                setState(() {
                                  if (value != null) {
                                    alcohol["upTo2TimesPerWeek"] = true;
                                    // medicines = "";
                                  } else {
                                    alcohol["upTo2TimesPerWeek"] = false;
                                  }
                                });
                              },
                            ),
                            Text(S.of(context).NTimesPerWeek('1-2')),
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                              tristate: true,
                              value: alcohol["upTo4TimesPerWeek"] == true,
                              onChanged: (bool? value) {
                                setState(() {
                                  if (value != null) {
                                    alcohol["upTo4TimesPerWeek"] = true;
                                    // medicines = "";
                                  } else {
                                    alcohol["upTo4TimesPerWeek"] = false;
                                  }
                                });
                              },
                            ),
                            Text(S.of(context).NTimesPerWeek('3-4')),
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                              tristate: true,
                              value: alcohol["moreThan5TimesPerWeek"] == true,
                              onChanged: (bool? value) {
                                setState(() {
                                  if (value != null) {
                                    alcohol["moreThan5TimesPerWeek"] = true;
                                    // medicines = "";
                                  } else {
                                    alcohol["moreThan5TimesPerWeek"] = false;
                                  }
                                });
                              },
                            ),
                            Text(S.of(context).MoreThanNTimesPerWeek(5)),
                          ],
                        ),
                      ],
                    )
                ),
              ],
            )
        ),
      ],
    );
  }
}