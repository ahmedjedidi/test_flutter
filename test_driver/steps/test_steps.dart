import 'package:flutter_driver/flutter_driver.dart';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';



class CheckGivenWidgets
    extends Given1WithWorld<String, FlutterWorld> {
  @override
  Future<void> executeStep(String input3) async {
    // TODO: implement executeStep

    final button = find.byValueKey(input3);
   
    bool buttonExists =
        await FlutterDriverUtils.isPresent(world.driver, button);

    expect(buttonExists, true);
  }

  @override
  // TODO: implement pattern
  RegExp get pattern => RegExp(r"I have {string} on screen");
}

class ClickLoginButton extends When1WithWorld<String, FlutterWorld> {
  @override
  Future<void> executeStep(String loginbtn) async {
    // TODO: implement executeStep
    final loginfinder = find.byValueKey(loginbtn);
    await FlutterDriverUtils.tap(world.driver, loginfinder);
  }

  @override
  RegExp get pattern => RegExp(r"I tap the {string} button");
}

class CheckIfHomePageIsPresent extends Then1WithWorld<String, FlutterWorld> {
  @override
  Future<void> executeStep(String input1) async {
    // TODO: implement executeStep
    final homefinder = find.byValueKey(input1);
    bool isPresent =
        await FlutterDriverUtils.isPresent(world.driver, homefinder);
    expect(isPresent, true);
    // await FlutterDriverUtils.waitForFlutter(world.driver);
  }

  @override
  // TODO: implement pattern
  RegExp get pattern => RegExp("I have {string} on screen");
}


class CheckGivenWidgets1 extends Given1WithWorld<String, FlutterWorld> {
  @override
  Future<void> executeStep(String input3) async {
    // TODO: implement executeStep

    final button = find.byValueKey(input3);
   
    bool buttonExists =
        await FlutterDriverUtils.isPresent(world.driver, button);

    expect(buttonExists, true);
  }

  @override
  // TODO: implement pattern
  RegExp get pattern => RegExp(r"I have {string}");
}

class ClickCardProduct extends When1WithWorld<String, FlutterWorld> {
  @override
  Future<void> executeStep(String loginbtn) async {
    // TODO: implement executeStep
    final loginfinder = find.byValueKey(loginbtn);
    await FlutterDriverUtils.tap(world.driver, loginfinder);
  }

  @override
  RegExp get pattern => RegExp(r"I tap the {string} button");
}

class CheckIfDetailProductIsPresent extends Then1WithWorld<String, FlutterWorld> {
  @override
  Future<void> executeStep(String input1) async {
    // TODO: implement executeStep
    final homefinder = find.byValueKey(input1);
    bool isPresent =
        await FlutterDriverUtils.isPresent(world.driver, homefinder);
    expect(isPresent, true);
    // await FlutterDriverUtils.waitForFlutter(world.driver);
  }

  @override
  // TODO: implement pattern
  RegExp get pattern => RegExp("I have {string} on screen");
}


class ScrollTillItemVisible
    extends Then2WithWorld<String, String, FlutterWorld> {
  @override
  Future<void> executeStep(String listKey, String itemKey) async {
    // TODO: implement executeStep
    final listFinder = find.byValueKey(listKey);
    final itemfinder = find.byValueKey(itemKey);
    bool isPresent = false;
    while (!isPresent) {
      await world.driver?.scroll(
          listFinder, 0.0, -1000.0, const Duration(milliseconds: 300),
          timeout: Duration(seconds: 20));
      isPresent = await FlutterDriverUtils.isPresent(world.driver, itemfinder);
    }
  }

  @override
  // TODO: implement pattern
  RegExp get pattern => RegExp(r"I scroll {string} till {string} is visible");
}


class ScrollTillItemVisible1 extends Then2WithWorld<String, String, FlutterWorld> {
  @override
  Future<void> executeStep(String listKey, String itemKey) async {
    // TODO: implement executeStep
    final listFinder = find.byValueKey(listKey);
    final itemfinder = find.byValueKey(itemKey);
    bool isPresent = false;
    while (!isPresent) {
      await world.driver?.scroll(
          listFinder, 0.0, -1000.0, const Duration(milliseconds: 300),
          timeout: Duration(seconds: 20));
      isPresent = await FlutterDriverUtils.isPresent(world.driver, itemfinder);
    }
  }

  @override
  // TODO: implement pattern
  RegExp get pattern => RegExp(r"I scroll {string} till {string} is visible");
}

class TapButtonNTimesStep extends When1WithWorld<String, FlutterWorld> {
  @override
  RegExp get pattern => RegExp(r"I tap the {string} button ");

  @override
  Future<void> executeStep(String buttonKey) async {
    final locator = find.byValueKey(buttonKey);
  
      await FlutterDriverUtils.tap(world.driver, locator, timeout: timeout);
    
  }
}

class GivenCounterIsSetTo extends Given1WithWorld<String, FlutterWorld> {
  @override
  RegExp get pattern => RegExp(r"the counter is set to {string}");

  @override
  Future<void> executeStep(String expectedCounter) async {
    final locator = find.byValueKey("counter");
    final actualCount = await FlutterDriverUtils.getText(world.driver!, locator);
    expectMatch(actualCount, expectedCounter);
  }
}