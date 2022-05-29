import 'package:flutter/material.dart';
import 'package:itec/models/choices.dart';
import 'package:itec/models/story.dart';
import 'package:itec/shared/empty.dart';

List<bool> shouldPop = [false, false, false];
List<Choice> choices = [
  Choice(
      title: "Repellent vs No Repellent",
      description:
          "One night, Ajani decides to go for a walk after a long day. It’s time for him to dress in his long sleeved - clothes and put on his mosquito repellent: Do you think he should take the effort to put them on?",
      definition: "",
      img: "",
      endMessage: "",
      nextWidget: MAL1()),
  Choice(
      title: "Screen Protector",
      description:
          "One night, Ajani finds out his screen protector for bugs fell from his window and is really unmotivated to put it back? Do you think he should do it?",
      definition: "",
      img: "",
      endMessage: "",
      nextWidget: MAL2())
];

class MAL extends StatelessWidget {
  final Choice currChoice;
  MAL({required this.currChoice});
  @override
  Widget build(BuildContext context) {
    return ChoicePage(
        currChoice: currChoice, choices: choices, isEnd: false, isGood: false);
  }
}

class MAL1 extends StatelessWidget {
  MAL1({Key? key}) : super(key: key);

  List<Choice> newChoices = [
    Choice(
        title: 'Goes outside',
        description: 'I am going to follow the rules',
        img: "",
        endMessage: "",
        nextWidget: MAL11(
            currChoice: Choice(
                title: 'Goes outside with repellent',
                description: 'I am going to follow the rules',
                img: "",
                definition: "",
                endMessage:
                    "He decides to follow the rules and go for a happy walk",
                nextWidget: Empty())),
        definition: ""),
    Choice(
        title: 'Goes outside with no repellent',
        description: "I think I will be fine",
        definition: "",
        img: "",
        endMessage: "",
        nextWidget: MAL12(
            currChoice: Choice(
                title: 'Goes outside with no repellent',
                description: "After coming home, he finds a couple mosquito bites.",
                img: "",
                endMessage:
                    "He finds out he got Malaria, which caused him unneeded suffering", 
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

class MAL2 extends StatelessWidget {
  MAL2({Key? key}) : super(key: key);

  List<Choice> newChoices = [
    Choice(
        title: 'He puts on screen protector',
        description: 'Sure, lets put it',
        img: "",
        endMessage: "",
        nextWidget: MAL21(
            currChoice: Choice(
                title: 'He puts on screen protector',
                description: 'Sure, lets put it',
                img: "",
                definition: "",
                endMessage:
                    "A bit annoyed, he put it back and slept safely. If he chose wrong, this could have gone very bad.",
                nextWidget: Empty())),
        definition: ""),
    Choice(
        title: 'No need for screen protector',
        description: "No need",
        img: "",
        endMessage: "",
        nextWidget: MAL22(
            currChoice: Choice(
                title: 'No need for screen protector',
                description: "No need",
                img: "",
                definition: "",
                endMessage:
                    "He chose to follow his emotions and not put it back. The next day, he finds mosquito bites which led to him getting infected with Malaria.",
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

class MAL11 extends StatelessWidget {
  final Choice currChoice;
  MAL11({required this.currChoice});

  @override
  Widget build(BuildContext context) {
    return ChoicePage(
        currChoice: currChoice, choices: [], isEnd: true, isGood: true);
  }
}

class MAL12 extends StatelessWidget {
  final Choice currChoice;
  MAL12({required this.currChoice});

  @override
  Widget build(BuildContext context) {
    shouldPop[0] = true;
    return ChoicePage(
        currChoice: currChoice, choices: [], isEnd: true, isGood: false);
  }
}

class MAL21 extends StatelessWidget {
  final Choice currChoice;
  MAL21({required this.currChoice});

  @override
  Widget build(BuildContext context) {
    return ChoicePage(
        currChoice: currChoice, choices: [], isEnd: true, isGood: true);
  }
}

class MAL22 extends StatelessWidget {
  final Choice currChoice;
  MAL22({required this.currChoice});

  @override
  Widget build(BuildContext context) {
    shouldPop[0] = true;
    return ChoicePage(
        currChoice: currChoice, choices: [], isEnd: true, isGood: false);
  }
}
