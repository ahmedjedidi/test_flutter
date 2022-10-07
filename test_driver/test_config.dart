import 'dart:async';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';
import 'package:glob/glob.dart';

import 'hooks/hook_exemple.dart';
import 'steps/test_steps.dart';
Future<void> main() {
  final config = FlutterTestConfiguration()
   ..features = [Glob(r"test_driver/features/**.feature")]
        ..reporters = [StdoutReporter(),ProgressReporter(),
      TestRunSummaryReporter()]
 // you can include the "StdoutReporter()" without the message level parameter for verbose log information
       //..hooks = [HookExample()]
    ..stepDefinitions = [
      CheckGivenWidgets(),
      ClickLoginButton(),
      CheckIfHomePageIsPresent(),
      ScrollTillItemVisible1(),
      CheckGivenWidgets1(),
      ClickCardProduct(),
      CheckIfDetailProductIsPresent(),
      ScrollTillItemVisible(),
      TapButtonNTimesStep(),
      GivenCounterIsSetTo()
            ] 
            ..restartAppBetweenScenarios=false
        ..customStepParameterDefinitions = []
    ..targetAppPath = "test_driver/app.dart";
    // ..tagExpression = "@smoke" // uncomment to see an example of running scenarios based on tag expressions
  return GherkinRunner().execute(config);
}