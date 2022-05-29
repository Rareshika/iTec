import 'package:flutter/material.dart';
import 'package:itec/models/choices.dart';
import 'package:itec/models/story.dart';
import 'package:itec/shared/empty.dart';

List<bool> shouldPop = [false, false, false];
List<Choice> choices = [
  Choice(
      title: "Smoking",
      description:"Lin was hanging out with one of his older friends who ended up offering him a cigarette to smoke with him, what should he do?",
      definition: "",
      img: "",
      endMessage: "",
      nextWidget: CD1()),
  Choice(
      title: "Driving",
      description:"Lin wanted to drive his father’s car even though he did not get his father’s approval and doesn’t have a driver’s license. What do you think he should do?"
          "",
      definition: "",
      img: "",
      endMessage: "",
      nextWidget: CD2())
];

class CD extends StatelessWidget {
  final Choice currChoice;
  CD({required this.currChoice});
  @override
  Widget build(BuildContext context) {
    return ChoicePage(
        currChoice: currChoice, choices: choices, isEnd: false, isGood: false);
  }
}

class CD1 extends StatelessWidget {
  CD1({Key? key}) : super(key: key);

  List<Choice> newChoices = [
    Choice(
        title: 'Smoking',
        description: 'It is harmless, right?',
        img: "",
        endMessage: "",
        nextWidget: CD11(
            currChoice: Choice(
                title: 'Smokes the cigar',
                description: 'It is harmless, right?',
                img: "",
                definition: "",
                endMessage:
                    "So…Lin smokes the cigar given to him by his older friend, now he wants to do that again, which in the end, will lead to an addiction that can cause unfortunate health complications.",
                nextWidget: Empty())),
        definition: ""),
    Choice(
        title: 'Does not smoke',
        description: "Better safe than sorry",
        definition: "",
        img: "",
        endMessage: "",
        nextWidget: CD12(
            currChoice: Choice(
                title: 'Does not smoke',
                description: "Better safe than sorry",
                img: "",
                endMessage:
                    "So…Lin respectfully rejected his older friend’s offer to smoke a cigarette and ended up being a healthy and a more responsible person.", 
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

class CD2 extends StatelessWidget {
  CD2({Key? key}) : super(key: key);

  List<Choice> newChoices = [
    Choice(
        title: 'Drives the car',
        description: 'It should be fun',
        img: "",
        endMessage: "",
        nextWidget: CD21(
            currChoice: Choice(
                title: 'Drives the car',
                description: 'It should be fun',
                img: "",
                definition: "",
                endMessage:
                    "Lin drives his father’s car and crashes it and minorly injures himself, which his father scolds him about, and he ends up feeling bad and guilty about it.",
                nextWidget: Empty())),
        definition: ""),
    Choice(
        title: 'Does not drive the car',
        description: "I think this is safer",
        img: "",
        endMessage: "",
        nextWidget: CD22(
            currChoice: Choice(
                title: 'Does not drive the car',
                description: "I think this is safer",
                img: "",
                definition: "",
                endMessage:
                    "Lin drives his father’s car and crashes it and minorly injures himself, which his father scolds him about, and he ends up feeling bad and guilty about it.",
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

class CD11 extends StatelessWidget {
  final Choice currChoice;
  CD11({required this.currChoice});

  @override
  Widget build(BuildContext context) {
    return ChoicePage(
        currChoice: currChoice, choices: [], isEnd: true, isGood: false);
  }
}

class CD12 extends StatelessWidget {
  final Choice currChoice;
  CD12({required this.currChoice});

  @override
  Widget build(BuildContext context) {
    shouldPop[0] = true;
    return ChoicePage(
        currChoice: currChoice, choices: [], isEnd: true, isGood: true);
  }
}

class CD21 extends StatelessWidget {
  final Choice currChoice;
  CD21({required this.currChoice});

  @override
  Widget build(BuildContext context) {
    return ChoicePage(
        currChoice: currChoice, choices: [], isEnd: true, isGood: false);
  }
}

class CD22 extends StatelessWidget {
  final Choice currChoice;
  CD22({required this.currChoice});

  @override
  Widget build(BuildContext context) {
    shouldPop[0] = true;
    return ChoicePage(
        currChoice: currChoice, choices: [], isEnd: true, isGood: true);
  }
}
