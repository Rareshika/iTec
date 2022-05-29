import 'package:flutter/material.dart';
import 'package:itec/models/choices.dart';
import 'package:itec/models/story.dart';
import 'package:itec/shared/empty.dart';

List<bool> shouldPop = [false, false, false];
List<Choice> choices = [
  Choice(
      title: "Rehab",
      description:"Juan has been thinking about getting nicotine replacement therapy to help with his nicotine addiction and to set on the road to a healthy lifestyle, what do you think Juan should do:",
      definition: "",
      img: "",
      endMessage: "",
      nextWidget: SM1()),
  Choice(
      title: "The Slow race",
      description:"Juan heard that if he starts decreasing the amount of nicotine he can maybe once and for all get rid of his addiction that has been bugging him for a long period of time, do you think Juan should try this",
      definition: "",
      img: "",
      endMessage: "",
      nextWidget: SM2())
];

class SM extends StatelessWidget {
  final Choice currChoice;
  SM({required this.currChoice});
  @override
  Widget build(BuildContext context) {
    return ChoicePage(
        currChoice: currChoice, choices: choices, isEnd: false, isGood: false);
  }
}

class SM1 extends StatelessWidget {
  SM1({Key? key}) : super(key: key);

  List<Choice> newChoices = [
    Choice(
        title: 'Does not get therapy',
        description: 'Only a few more smokes',
        img: "",
        endMessage: "",
        nextWidget: SM11(
            currChoice: Choice(
                title: 'Does not get therapy',
                description: 'Only a few more smokes',
                img: "",
                definition: "",
                endMessage:
                    "Juan didn’t get the nicotine replacement therapy that he needed and his lung health keeps getting worse.",
                nextWidget: Empty())),
        definition: ""),
    Choice(
        title: 'Gets therapy',
        description: "I hope it works",
        definition: "",
        img: "",
        endMessage: "",
        nextWidget: SM12(
            currChoice: Choice(
                title: 'Gets therapy',
                description: "I hope it works",
                img: "",
                endMessage:
                    "Juan got the nicotine replacement therapy that he needed and was set straight and is enjoying a healthy and enjoyable life which his lungs thank him for.", 
                    nextWidget: Empty(),
        definition: ""),
        )
    )
  ];
  @override
  Widget build(BuildContext context) {
    if (shouldPop[0]) {
      Navigator.pop(context);
    }
    print('built');
    return ChoicePage(
        currChoice: choices[0],
        choices: newChoices,
        isEnd: false,
        isGood: false);
  }
}

class SM2 extends StatelessWidget {
  SM2({Key? key}) : super(key: key);

  List<Choice> newChoices = [
    Choice(
        title: 'Juan does not try this',
        description: 'I bet it would not work',
        img: "",
        endMessage: "",
        nextWidget: SM21(
            currChoice: Choice(
                title: 'Juan does not try this',
                description: 'I bet it would not work',
                img: "",
                definition: "",
                endMessage:
                    "Juan does not try to decrease the amount of nicotine that he consumes and unfortunately still has the same bad habits that will affect his health",
                nextWidget: Empty())),
        definition: ""),
    Choice(
        title: 'Juan tries this',
        description: "Lets make a change",
        img: "",
        endMessage: "",
        nextWidget: SM22(
            currChoice: Choice(
                title: 'Juan tries this',
                description: "Lets make a change",
                img: "",
                definition: "",
                endMessage:
                    "Juan ends up decreasing the amount of nicotine that he consumes and he saves his lungs and will live a healthy and fulfilling life.",
                nextWidget: Empty())),
        definition: ""),
  ];

  @override
  Widget build(BuildContext context) {
    return ChoicePage(
        currChoice: choices[1],
        choices: newChoices,
        isEnd: false,
        isGood: false);
  }
}

class SM11 extends StatelessWidget {
  final Choice currChoice;
  SM11({required this.currChoice});

  @override
  Widget build(BuildContext context) {
    return ChoicePage(
        currChoice: currChoice, choices: [], isEnd: true, isGood: false);
  }
}

class SM12 extends StatelessWidget {
  final Choice currChoice;
  SM12({required this.currChoice});

  @override
  Widget build(BuildContext context) {
    shouldPop[0] = true;
    return ChoicePage(
        currChoice: currChoice, choices: [], isEnd: true, isGood: true);
  }
}

class SM21 extends StatelessWidget {
  final Choice currChoice;
  SM21({required this.currChoice});

  @override
  Widget build(BuildContext context) {
    return ChoicePage(
        currChoice: currChoice, choices: [], isEnd: true, isGood: false);
  }
}

class SM22 extends StatelessWidget {
  final Choice currChoice;
  SM22({required this.currChoice});

  @override
  Widget build(BuildContext context) {
    shouldPop[0] = true;
    return ChoicePage(
        currChoice: currChoice, choices: [], isEnd: true, isGood: true);
  }
}
