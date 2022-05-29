import 'package:flutter/material.dart';
import 'package:itec/models/choices.dart';
import 'package:itec/models/story.dart';
import 'package:itec/shared/empty.dart';

List<bool> shouldPop = [false, false, false];
List<Choice> choices = [
  Choice(
      title: "Vaccinations",
      description:
          "His mom asks him if he wants to get vaccinated, what should he do?",
      definition: "",
      img: "",
      endMessage: "",
      nextWidget: ERAD1()),
  Choice(
      title: "Washing hands",
      description:"Muhammed’s just came home from school and is going to eat, what should he do next to stay healthy and strong?"
          "",
      definition: "",
      img: "",
      endMessage: "",
      nextWidget: ERAD2())
];

class ERAD extends StatelessWidget {
  final Choice currChoice;
  ERAD({required this.currChoice});
  @override
  Widget build(BuildContext context) {
    return ChoicePage(
        currChoice: currChoice, choices: choices, isEnd: false, isGood: false);
  }
}

class ERAD1 extends StatelessWidget {
  ERAD1({Key? key}) : super(key: key);

  List<Choice> newChoices = [
    Choice(
        title: 'Gets vaccinated',
        description: 'It should be ok',
        img: "",
        endMessage: "",
        nextWidget: ERAD11(
            currChoice: Choice(
                title: 'Gets vaccinated',
                description: 'It should be ok',
                img: "",
                definition: "",
                endMessage:
                    "So…Muhammed chose to get vaxxed, now he feels happy knowing that he and others are protected by diseases and are out of harm’s way.",
                nextWidget: Empty())),
        definition: ""),
    Choice(
        title: 'Does not get vaccinated',
        description: "Surely, it won't do any harm",
        definition: "",
        img: "",
        endMessage: "",
        nextWidget: ERAD12(
            currChoice: Choice(
                title: 'Does not get vaccinated',
                description: "Surely, it won't do any harm",
                img: "",
                endMessage:
                    "So…Muhammed chose not to get vaccinated and he will end up endangering not only himself but other people as well by giving them easily preventable diseases.", 
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

class ERAD2 extends StatelessWidget {
  ERAD2({Key? key}) : super(key: key);

  List<Choice> newChoices = [
    Choice(
        title: 'Washes hands',
        description: 'Semms like the right choice',
        img: "",
        endMessage: "",
        nextWidget: ERAD21(
            currChoice: Choice(
                title: 'Washes hands',
                description: 'Semms like the right choice',
                img: "",
                definition: "",
                endMessage:
                    "Well…Muhammed did wash his hands before eating and so he ate clean food and he is going to keep being healthy and he easily prevented himself from getting sick.",
                nextWidget: Empty())),
        definition: ""),
    Choice(
        title: 'Does not wash',
        description: "The germs should not be a problem",
        img: "",
        endMessage: "",
        nextWidget: ERAD22(
            currChoice: Choice(
                title: 'Does not wash',
                description: "The germs should not be a problem",
                img: "",
                definition: "",
                endMessage:
                    "Well…Muhammed did not wash his hands and ate food with bacteria on it that could lead to him being sick and ending up hating this decision.",
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

class ERAD11 extends StatelessWidget {
  final Choice currChoice;
  ERAD11({required this.currChoice});

  @override
  Widget build(BuildContext context) {
    return ChoicePage(
        currChoice: currChoice, choices: [], isEnd: true, isGood: true);
  }
}

class ERAD12 extends StatelessWidget {
  final Choice currChoice;
  ERAD12({required this.currChoice});

  @override
  Widget build(BuildContext context) {
    shouldPop[0] = true;
    return ChoicePage(
        currChoice: currChoice, choices: [], isEnd: true, isGood: false);
  }
}

class ERAD21 extends StatelessWidget {
  final Choice currChoice;
  ERAD21({required this.currChoice});

  @override
  Widget build(BuildContext context) {
    return ChoicePage(
        currChoice: currChoice, choices: [], isEnd: true, isGood: true);
  }
}

class ERAD22 extends StatelessWidget {
  final Choice currChoice;
  ERAD22({required this.currChoice});

  @override
  Widget build(BuildContext context) {
    shouldPop[0] = true;
    return ChoicePage(
        currChoice: currChoice, choices: [], isEnd: true, isGood: false);
  }
}
