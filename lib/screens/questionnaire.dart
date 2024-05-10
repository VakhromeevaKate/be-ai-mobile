import 'package:be_ai_mobile/theme/colors/light_colors.dart';
import 'package:flutter/material.dart';

import '../generated/l10n.dart';

class QuestionnaireScreen extends StatefulWidget {
  const QuestionnaireScreen({super.key});

  @override
  State<QuestionnaireScreen> createState() => _QuestionnaireScreen();
}

class _QuestionnaireScreen extends State<QuestionnaireScreen> {

  var _currentStep = 0;
  var appTitle = 'Questionnaire';
  // var stepScreen = const Diary();

  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(appTitle),
          backgroundColor: LightColors.kLightGreen,
        ),
        body: Stepper(
          type: StepperType.horizontal,
          currentStep: _currentStep,
          onStepTapped: (int step) => setState(() => _currentStep = step),
          onStepContinue: _currentStep < 2 ? () => setState(() => _currentStep += 1) : null,
          onStepCancel: _currentStep > 0 ? () => setState(() => _currentStep -= 1) : null,
          steps: <Step>[
            Step(
              title: Text(S.of(context).Common),
              content: Text('This is the first step.'),
              isActive: _currentStep >= 0,
              state: _currentStep >= 0 ? StepState.complete : StepState.disabled,
            ),
            Step(
              title: Text(S.of(context).Activity),
              content: Text('This is the second step.'),
              isActive: _currentStep >= 0,
              state: _currentStep >= 1 ? StepState.complete : StepState.disabled,
            ),
            Step(
              title: Text(S.of(context).Meal),
              content: Text('This is the third step.'),
              isActive: _currentStep >= 0,
              state: _currentStep >= 2 ? StepState.complete : StepState.disabled,
            ),
          ],
        ),
    );
  }
}
