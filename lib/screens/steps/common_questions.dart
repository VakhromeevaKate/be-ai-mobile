import 'package:be_ai_mobile/theme/colors/light_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:localstorage/localstorage.dart';
import '../../generated/l10n.dart';

const String commonPrefix = '@CommonQuestions';
const List<String> list = <String>['', 'Male', 'Female'];

class CommonQuestions extends StatefulWidget {
  const CommonQuestions({super.key});

  @override
  State<CommonQuestions> createState() => _CommonQuestions();
}

class _CommonQuestions extends State<CommonQuestions> {
  var sex = "";

  var personalData = {
    "age": 0,
    "height": 0,
    "weight": 0,
    "desiredWeight": 0,
  };

  var diseases = {
    "diabetesMellitus": false,
    "atherosclerosis": false,
    "polycysticOvarySyndrome": false,
    "thyroidDisease": false,
    "glutenIntolerance": false,
    "otherDiseases": false,
    "anyMedications": false
  };

  var otherDiseases = "";

  var medicines = "";

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          child: Text(
              S.of(context).CommonQuestions,
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
                          Text(S.of(context).YourSex),
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 0),
                        width: double.infinity,
                        height: 60,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(4.0),
                            color: Colors.white,
                        ),
                        child: DropdownButtonHideUnderline(
                          child: ButtonTheme(
                            alignedDropdown: true,
                            child: DropdownButton(
                              value: sex,
                              items: list.map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                              onChanged: (String? value) {
                                // This is called when the user selects an item.
                                setState(() {
                                  sex = value!;
                                });
                              },
                            ),
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
                            Text(S.of(context).YourAge),
                          ],
                        ),
                        TextField(
                          keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter.digitsOnly,
                            LengthLimitingTextInputFormatter(3),
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
                            Text(S.of(context).YourHeight),
                          ],
                        ),
                        TextField(
                          keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter.digitsOnly,
                            LengthLimitingTextInputFormatter(3),
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
                            Text(S.of(context).YourWeight),
                          ],
                        ),
                        TextField(
                          keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter.digitsOnly,
                            LengthLimitingTextInputFormatter(3),
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
                            Text(S.of(context).YourDesiredWeight),
                          ],
                        ),
                        TextField(
                          keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter.digitsOnly,
                            LengthLimitingTextInputFormatter(3),
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
                            Text(S.of(context).DoYouHaveDiseases),
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                              tristate: true,
                              value: diseases["diabetesMellitus"],
                              onChanged: (bool? value) {
                                setState(() {
                                  if (value != null) {
                                    diseases["diabetesMellitus"] = true;
                                  } else {
                                    diseases["diabetesMellitus"] = false;
                                  }
                                });
                              },
                            ),
                            Text(S.of(context).DiabetesMellitus),
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                              tristate: true,
                              value: diseases["atherosclerosis"],
                              onChanged: (bool? value) {
                                setState(() {
                                  if (value != null) {
                                    diseases["atherosclerosis"] = true;
                                  } else {
                                    diseases["atherosclerosis"] = false;
                                  }
                                });
                              },
                            ),
                            Text(S.of(context).Atherosclerosis),
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                              tristate: true,
                              value: diseases["polycysticOvarySyndrome"],
                              onChanged: (bool? value) {
                                setState(() {
                                  if (value != null) {
                                    diseases["polycysticOvarySyndrome"] = true;
                                  } else {
                                    diseases["polycysticOvarySyndrome"] = false;
                                  }
                                });
                              },
                            ),
                            Text(S.of(context).PolycysticOvarySyndrome),
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                              tristate: true,
                              value: diseases["thyroidDisease"],
                              onChanged: (bool? value) {
                                setState(() {
                                  if (value != null) {
                                    diseases["thyroidDisease"] = true;
                                  } else {
                                    diseases["thyroidDisease"] = false;
                                  }
                                });
                              },
                            ),
                            Text(S.of(context).ThyroidDisease),
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                              tristate: true,
                              value: diseases["glutenIntolerance"],
                              onChanged: (bool? value) {
                                setState(() {
                                  if (value != null) {
                                    diseases["glutenIntolerance"] = true;
                                  } else {
                                    diseases["glutenIntolerance"] = false;
                                  }
                                });
                              },
                            ),
                            Text(S.of(context).GlutenIntolerance),
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                              tristate: true,
                              value: diseases["otherDiseases"],
                              onChanged: (bool? value) {
                                setState(() {
                                  if (value != null) {
                                    diseases["otherDiseases"] = true;
                                  } else {
                                    diseases["otherDiseases"] = false;
                                    otherDiseases = "";
                                  }
                                });
                              },
                            ),
                            Text(S.of(context).AnyOther),
                          ],
                        ),
                        TextField(
                          keyboardType: TextInputType.text,
                          readOnly: diseases["otherDiseases"] == false,
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
                            Text(S.of(context).AreYouTakingMedications),
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                              tristate: true,
                              value: diseases["anyMedications"] == false,
                              onChanged: (bool? value) {
                                setState(() {
                                  if (value != null) {
                                    diseases["anyMedications"] = false;
                                    medicines = "";
                                  } else {
                                    diseases["anyMedications"] = true;
                                  }
                                });
                              },
                            ),
                            Text(S.of(context).No),
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                              tristate: true,
                              value: diseases["anyMedications"],
                              onChanged: (bool? value) {
                                setState(() {
                                  if (value != null) {
                                    diseases["anyMedications"] = true;
                                  } else {
                                    diseases["anyMedications"] = false;
                                    medicines = "";
                                  }
                                });
                              },
                            ),
                            Text(S.of(context).Yes),
                          ],
                        ),
                        TextField(
                          readOnly: diseases["anyMedications"] = false,
                          keyboardType: TextInputType.text,
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
              ],
            )
          )
        ),
      ],
    );
  }
}