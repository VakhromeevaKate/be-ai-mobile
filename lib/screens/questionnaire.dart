import 'package:be_ai_mobile/screens/steps/common_questions.dart';
import 'package:be_ai_mobile/screens/steps/eating_habits.dart';
import 'package:be_ai_mobile/screens/steps/physical_activity.dart';
import 'package:be_ai_mobile/theme/colors/light_colors.dart';
import 'package:flutter/material.dart';
import '../generated/l10n.dart';

const FINAL_STEP = 2;

class QuestionnaireScreen extends StatefulWidget {
  const QuestionnaireScreen({super.key});

  @override
  State<QuestionnaireScreen> createState() => _QuestionnaireScreen();
}

class _QuestionnaireScreen extends State<QuestionnaireScreen> {

  var _currentStep = 0;
  var appTitle = 'Questionnaire';

  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(appTitle),
          backgroundColor: LightColors.kLightGreen,
        ),
        body: Theme(
            data: ThemeData(
                hintColor: LightColors.kGreen,
                primarySwatch: Colors.green,
                colorScheme: const ColorScheme.light(
                    primary: LightColors.kGreen)
            ),
            child: Stepper(
                type: StepperType.horizontal,
                currentStep: _currentStep,
                onStepTapped: (int step) => setState(() => _currentStep = step),
                onStepContinue: _currentStep < FINAL_STEP ? () =>
                    setState(() => _currentStep += 1) : () => Navigator.pushNamed(context, '/home'),
                onStepCancel: _currentStep > 0 ? () =>
                    setState(() => _currentStep -= 1) : null,
                controlsBuilder:
                    (BuildContext context, ControlsDetails details) {
                  return Row(
                    children: [
                      TextButton(
                        onPressed: details.onStepCancel,
                        child: Text(S.of(context).Return),
                      ),
                      TextButton(
                        onPressed: details.onStepContinue,
                        child: Text(S.of(context).Continue),
                      ),
                    ],
                  );
                },
                steps: <Step>[
                  Step(
                    title: Text(S
                        .of(context)
                        .Common),
                    content: const CommonQuestions(),
                    isActive: _currentStep >= 0,
                    state: _currentStep >= 1 ? StepState.complete : StepState
                        .disabled,
                  ),
                  Step(
                    title: Text(S
                        .of(context)
                        .Activity),
                    content: const PhysicalActivity(),
                    isActive: _currentStep >= 1,
                    state: _currentStep >= 2 ? StepState.complete : StepState
                        .disabled,
                  ),
                  Step(
                    title: Text(S
                        .of(context)
                        .Meal),
                    content: const EatingHabits(),
                    isActive: _currentStep >= 2,
                  )
                ]
            )
        )
    );
  }
}