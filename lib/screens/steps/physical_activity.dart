import 'package:flutter/material.dart';
import '../../generated/l10n.dart';
import '../../theme/colors/light_colors.dart';

class PhysicalActivity extends StatefulWidget {
  const PhysicalActivity({super.key});

  @override
  State<PhysicalActivity> createState() => _PhysicalActivity();
}

class _PhysicalActivity extends State<PhysicalActivity> {
  var isPlayingSports = false;

  var hasRestrictions = false;

  var aerobicExercises = {
    "walking": false,
    "running": false,
    "cycling": false,
    "swimming": false,
    "fitness": false,
    "other": false,
    "noOne": false,
  };

  var customAerobic = "";

  var strengthExercises = {
    "treeWeight": false,
    "simulators": false,
    "yoga": false,
    "pilates": false,
    "fitness": false,
    "other": false,
    "noOne": false,
  };

  var aerobicTime = {
    "upTo60MinPerWeek": false,
    "upTo100MinPerWeek": false,
    "upTo150MinPerWeek": false,
    "upTo200MinPerWeek": false,
    "moreThan200MinPerWeek": false,
    "zeroMinPerWeek": false,
  };

  var strengthTime = {
  "upTo60MinPerWeek": false,
  "upTo100MinPerWeek": false,
  "upTo150MinPerWeek": false,
  "upTo200MinPerWeek": false,
  "moreThan200MinPerWeek": false,
  "zeroMinPerWeek": false,
};

  var customStrength = "";

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
                            Checkbox(
                              tristate: true,
                              value: isPlayingSports == true,
                              onChanged: (bool? value) {
                                setState(() {
                                  if (value != null) {
                                    isPlayingSports = true;
                                    // medicines = "";
                                  } else {
                                    isPlayingSports = false;
                                  }
                                });
                              },
                            ),
                            Text(S.of(context).Yes),
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                              tristate: true,
                              value: isPlayingSports == false,
                              onChanged: (bool? value) {
                                setState(() {
                                  if (value != null) {
                                    isPlayingSports = false;
                                    // medicines = "";
                                  } else {
                                    isPlayingSports = true;
                                  }
                                });
                              },
                            ),
                            Text(S.of(context).No),
                          ],
                        ),
                      ],
                    )
                ),
                if (isPlayingSports)
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
                              child: Text(S.of(context).WhatAerobicExercisesDoYouDo),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                              tristate: true,
                              value: aerobicExercises["walking"],
                              onChanged: (bool? value) {
                                setState(() {
                                  if (value != null) {
                                    aerobicExercises["walking"] = true;
                                  } else {
                                    aerobicExercises["walking"] = false;
                                  }
                                });
                              },
                            ),
                            Text(S.of(context).Walking),
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                              tristate: true,
                              value: aerobicExercises["running"],
                              onChanged: (bool? value) {
                                setState(() {
                                  if (value != null) {
                                    aerobicExercises["running"] = true;
                                  } else {
                                    aerobicExercises["running"] = false;
                                  }
                                });
                              },
                            ),
                            Text(S.of(context).Running),
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                              tristate: true,
                              value: aerobicExercises["cycling"],
                              onChanged: (bool? value) {
                                setState(() {
                                  if (value != null) {
                                    aerobicExercises["cycling"] = true;
                                  } else {
                                    aerobicExercises["cycling"] = false;
                                  }
                                });
                              },
                            ),
                            Text(S.of(context).Cycling),
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                              tristate: true,
                              value: aerobicExercises["swimming"],
                              onChanged: (bool? value) {
                                setState(() {
                                  if (value != null) {
                                    aerobicExercises["swimming"] = true;
                                  } else {
                                    aerobicExercises["swimming"] = false;
                                  }
                                });
                              },
                            ),
                            Text(S.of(context).Swimming),
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                              tristate: true,
                              value: aerobicExercises["fitness"],
                              onChanged: (bool? value) {
                                setState(() {
                                  if (value != null) {
                                    aerobicExercises["fitness"] = true;
                                  } else {
                                    aerobicExercises["fitness"] = false;
                                  }
                                });
                              },
                            ),
                            Text(S.of(context).Fitness),
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                              tristate: true,
                              value: aerobicExercises["other"],
                              onChanged: (bool? value) {
                                setState(() {
                                  if (value != null) {
                                    aerobicExercises["other"] = true;
                                  } else {
                                    aerobicExercises["other"] = false;
                                  }
                                });
                              },
                            ),
                            Text(S.of(context).AnyOther),
                          ],
                        ),
                        if (aerobicExercises["other"] == true)
                        TextField(
                          keyboardType: TextInputType.text,
                          readOnly: aerobicExercises["other"] == false,
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
                        Row(
                          children: [
                            Checkbox(
                              tristate: true,
                              value: aerobicExercises["noOne"],
                              onChanged: (bool? value) {
                                setState(() {
                                  if (value != null) {
                                    aerobicExercises["noOne"] = true;
                                  } else {
                                    aerobicExercises["noOne"] = false;
                                  }
                                });
                              },
                            ),
                            Text(S.of(context).IAmNotDoingIt),
                          ],
                        ),
                      ],
                    )
                ),
                if (isPlayingSports)
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
                              child: Text(S.of(context).WhatStrengthExercisesDoYouDo),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                              tristate: true,
                              value: strengthExercises["freeWeight"] == true,
                              onChanged: (bool? value) {
                                setState(() {
                                  if (value != null) {
                                    strengthExercises["freeWeight"] = true;
                                  } else {
                                    strengthExercises["freeWeight"] = false;
                                  }
                                });
                              },
                            ),
                            Text(S.of(context).FreeWeightTraining),
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                              tristate: true,
                              value: strengthExercises["simulators"] == true,
                              onChanged: (bool? value) {
                                setState(() {
                                  if (value != null) {
                                    strengthExercises["simulators"] = true;
                                  } else {
                                    strengthExercises["simulators"] = false;
                                  }
                                });
                              },
                            ),
                            Text(S.of(context).TrainingSimulators),
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                              tristate: true,
                              value: strengthExercises["yoga"] == true,
                              onChanged: (bool? value) {
                                setState(() {
                                  if (value != null) {
                                    strengthExercises["yoga"] = true;
                                  } else {
                                    strengthExercises["yoga"] = false;
                                  }
                                });
                              },
                            ),
                            Text(S.of(context).Yoga),
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                              tristate: true,
                              value: strengthExercises["pilates"] == true,
                              onChanged: (bool? value) {
                                setState(() {
                                  if (value != null) {
                                    strengthExercises["pilates"] = true;
                                  } else {
                                    strengthExercises["pilates"] = false;
                                  }
                                });
                              },
                            ),
                            Text(S.of(context).Pilates),
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                              tristate: true,
                              value: strengthExercises["other"] == true,
                              onChanged: (bool? value) {
                                setState(() {
                                  if (value != null) {
                                    strengthExercises["other"] = true;
                                  } else {
                                    strengthExercises["other"] = false;
                                  }
                                });
                              },
                            ),
                            Text(S.of(context).AnyOther),
                          ],
                        ),
                        if (strengthExercises["other"] == true)
                          TextField(
                            keyboardType: TextInputType.text,
                            readOnly: strengthExercises["other"] == false,
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
                        Row(
                          children: [
                            Checkbox(
                              tristate: true,
                              value: strengthExercises["noOne"] == true,
                              onChanged: (bool? value) {
                                setState(() {
                                  if (value != null) {
                                    strengthExercises["noOne"] = true;
                                  } else {
                                    strengthExercises["noOne"] = false;
                                  }
                                });
                              },
                            ),
                            Text(S.of(context).IAmNotDoingIt),
                          ],
                        ),
                      ],
                    )
                ),
                if (isPlayingSports)
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
                              child: Text(S.of(context).HowOftenDoYouDoStrengthExercises),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                              tristate: true,
                              value: strengthTime["upTo60MinPerWeek"] == true,
                              onChanged: (bool? value) {
                                setState(() {
                                  if (value != null) {
                                    strengthTime["upTo60MinPerWeek"] = true;
                                    // medicines = "";
                                  } else {
                                    strengthTime["upTo60MinPerWeek"] = false;
                                  }
                                });
                              },
                            ),
                            Text(S.of(context).NMinutesPerWeek("30-60")),
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                              tristate: true,
                              value: strengthTime["upTo100MinPerWeek"] == true,
                              onChanged: (bool? value) {
                                setState(() {
                                  if (value != null) {
                                    strengthTime["upTo100MinPerWeek"] = true;
                                    // medicines = "";
                                  } else {
                                    strengthTime["upTo100MinPerWeek"] = false;
                                  }
                                });
                              },
                            ),
                            Text(S.of(context).NMinutesPerWeek("60-100")),
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                              tristate: true,
                              value: strengthTime["upTo150MinPerWeek"] == true,
                              onChanged: (bool? value) {
                                setState(() {
                                  if (value != null) {
                                    strengthTime["upTo150MinPerWeek"] = true;
                                    // medicines = "";
                                  } else {
                                    strengthTime["upTo150MinPerWeek"] = false;
                                  }
                                });
                              },
                            ),
                            Text(S.of(context).NMinutesPerWeek("100-150")),
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                              tristate: true,
                              value: strengthTime["upTo200MinPerWeek"] == true,
                              onChanged: (bool? value) {
                                setState(() {
                                  if (value != null) {
                                    strengthTime["upTo200MinPerWeek"] = true;
                                    // medicines = "";
                                  } else {
                                    strengthTime["upTo200MinPerWeek"] = false;
                                  }
                                });
                              },
                            ),
                            Text(S.of(context).NMinutesPerWeek("150-200")),
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                              tristate: true,
                              value: strengthTime["moreThan200MinPerWeek"] == true,
                              onChanged: (bool? value) {
                                setState(() {
                                  if (value != null) {
                                    strengthTime["moreThan200MinPerWeek"] = true;
                                    // medicines = "";
                                  } else {
                                    strengthTime["moreThan200MinPerWeek"] = false;
                                  }
                                });
                              },
                            ),
                            Text(S.of(context).MoreThanNMinutesPerWeek("200")),
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                              tristate: true,
                              value: strengthTime["zeroMinPerWeek"] == true,
                              onChanged: (bool? value) {
                                setState(() {
                                  if (value != null) {
                                    strengthTime["zeroMinPerWeek"] = true;
                                    // medicines = "";
                                  } else {
                                    strengthTime["zeroMinPerWeek"] = false;
                                  }
                                });
                              },
                            ),
                            Text(S.of(context).IAmNotDoingIt),
                          ],
                        ),
                      ],
                    )
                ),
                if (isPlayingSports)
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
                              child: Text(S.of(context).HowOftenDoYouDoAerobicExercises),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                              tristate: true,
                              value: aerobicTime["upTo60MinPerWeek"] == true,
                              onChanged: (bool? value) {
                                setState(() {
                                  if (value != null) {
                                    aerobicTime["upTo60MinPerWeek"] = true;
                                    // medicines = "";
                                  } else {
                                    aerobicTime["upTo60MinPerWeek"] = false;
                                  }
                                });
                              },
                            ),
                            Text(S.of(context).NMinutesPerWeek("30-60")),
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                              tristate: true,
                              value: aerobicTime["upTo100MinPerWeek"] == true,
                              onChanged: (bool? value) {
                                setState(() {
                                  if (value != null) {
                                    aerobicTime["upTo100MinPerWeek"] = true;
                                    // medicines = "";
                                  } else {
                                    aerobicTime["upTo100MinPerWeek"] = false;
                                  }
                                });
                              },
                            ),
                            Text(S.of(context).NMinutesPerWeek("60-100")),
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                              tristate: true,
                              value: aerobicTime["upTo150MinPerWeek"] == true,
                              onChanged: (bool? value) {
                                setState(() {
                                  if (value != null) {
                                    aerobicTime["upTo150MinPerWeek"] = true;
                                    // medicines = "";
                                  } else {
                                    aerobicTime["upTo150MinPerWeek"] = false;
                                  }
                                });
                              },
                            ),
                            Text(S.of(context).NMinutesPerWeek("100-150")),
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                              tristate: true,
                              value: aerobicTime["upTo200MinPerWeek"] == true,
                              onChanged: (bool? value) {
                                setState(() {
                                  if (value != null) {
                                    aerobicTime["upTo200MinPerWeek"] = true;
                                    // medicines = "";
                                  } else {
                                    aerobicTime["upTo200MinPerWeek"] = false;
                                  }
                                });
                              },
                            ),
                            Text(S.of(context).NMinutesPerWeek("150-200")),
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                              tristate: true,
                              value: aerobicTime["moreThan200MinPerWeek"] == true,
                              onChanged: (bool? value) {
                                setState(() {
                                  if (value != null) {
                                    aerobicTime["moreThan200MinPerWeek"] = true;
                                    // medicines = "";
                                  } else {
                                    aerobicTime["moreThan200MinPerWeek"] = false;
                                  }
                                });
                              },
                            ),
                            Text(S.of(context).MoreThanNMinutesPerWeek("200")),
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                              tristate: true,
                              value: aerobicTime["zeroMinPerWeek"] == true,
                              onChanged: (bool? value) {
                                setState(() {
                                  if (value != null) {
                                    aerobicTime["zeroMinPerWeek"] = true;
                                    // medicines = "";
                                  } else {
                                    aerobicTime["zeroMinPerWeek"] = false;
                                  }
                                });
                              },
                            ),
                            Text(S.of(context).IAmNotDoingIt),
                          ],
                        ),
                      ],
                    )
                ),
                if (isPlayingSports)
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
                              child: Text(S.of(context).DoYouHaveAnyRestrictionsForPlayingSports),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                              tristate: true,
                              value: hasRestrictions == true,
                              onChanged: (bool? value) {
                                setState(() {
                                  if (value != null) {
                                    hasRestrictions = true;
                                    // medicines = "";
                                  } else {
                                    hasRestrictions = false;
                                  }
                                });
                              },
                            ),
                            Text(S.of(context).Yes),
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                              tristate: true,
                              value: hasRestrictions == false,
                              onChanged: (bool? value) {
                                setState(() {
                                  if (value != null) {
                                    hasRestrictions = false;
                                    // medicines = "";
                                  } else {
                                    hasRestrictions = true;
                                  }
                                });
                              },
                            ),
                            Text(S.of(context).No),
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