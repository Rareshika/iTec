import 'package:flutter/material.dart';
import 'package:itec/models/choices.dart';
import 'package:itec/models/story.dart';
import 'package:itec/shared/empty.dart';

List<bool> shouldPop = [false, false, false];
List<Choice> choices = [
  Choice(
      title: "Diseases",
      description:
          "Lately, Bjorn has been feeling a bit under the weather. He still wants to party, but is a bit scared of infecting someone. What do you think he should do?",
      definition: "",
      img: "",
      endMessage: "",
      nextWidget: BD2()),
  Choice(
      title: "Animals, carriers of diseases?",
      description:"In a forest, Bjorn finds some cute animals and is tempted to pet them, should he follow his instincts?"
          "",
      definition: "",
      img: "",
      endMessage: "",
      nextWidget: BD1())
];

class BD extends StatelessWidget {
  final Choice currChoice;
  BD({required this.currChoice});
  @override
  Widget build(BuildContext context) {
    return ChoicePage(
        currChoice: currChoice, choices: choices, isEnd: false, isGood: false);
  }
}

class BD1 extends StatelessWidget {
  BD1({Key? key}) : super(key: key);

  List<Choice> newChoices = [
    Choice(
        title: 'Pets the animals',
        description: 'They are harmless, right?',
        img: "",
        endMessage: "",
        nextWidget: BD11(
            currChoice: Choice(
                title: 'Pets the animals',
                description: 'They are harmless, right?',
                img: "",
                definition: "",
                endMessage:
                    "Bjorn's immune system was weak, but as the adventurer he is, he went into the forest and found some cute animals that looked harmless. Sadly, those animals carried a disease which poor Bjorn got.",
                nextWidget: Empty())),
        definition: ""),
    Choice(
        title: 'Ignores the animals',
        description: "They might be carrying some kind of disease",
        definition: "",
        img: "",
        endMessage: "",
        nextWidget: BD12(
            currChoice: Choice(
                title: 'Ignores the animals',
                description: "They might be carrying some kind of disease",
                img: "",
                endMessage:
                    "Bjorn, being a bit sick, as the adventurer he is, went into the forest and found some cute animals that looked harmless. Thankfully, he ignored the animals and continued his journey.", 
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

class BD2 extends StatelessWidget {
  BD2({Key? key}) : super(key: key);

  List<Choice> newChoices = [
    Choice(
        title: 'He chooses to isolate himself',
        description: 'Semms like the right choice',
        img: "",
        endMessage: "",
        nextWidget: BD21(
            currChoice: Choice(
                title: 'He chooses to isolate himself',
                description: 'Semms like the right choice',
                img: "",
                definition: "",
                endMessage:
                    "It turns out Bjorn really is sick, but because of his responsible actions, everyone else was safe.",
                nextWidget: Empty())),
        definition: ""),
    Choice(
        title: 'Lets party',
        description: "I want to party",
        img: "",
        endMessage: "",
        nextWidget: BD22(
            currChoice: Choice(
                title: 'Lets party',
                description: "I want to party",
                img: "",
                definition: "",
                endMessage:
                    "Bjorn really was sick, but the party was also sick. Unfortunately, everyone who intended the party is now ill.",
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

class BD11 extends StatelessWidget {
  final Choice currChoice;
  BD11({required this.currChoice});

  @override
  Widget build(BuildContext context) {
    return ChoicePage(
        currChoice: currChoice, choices: [], isEnd: true, isGood: false);
  }
}

class BD12 extends StatelessWidget {
  final Choice currChoice;
  BD12({required this.currChoice});

  @override
  Widget build(BuildContext context) {
    shouldPop[0] = true;
    return ChoicePage(
        currChoice: currChoice, choices: [], isEnd: true, isGood: true);
  }
}

class BD21 extends StatelessWidget {
  final Choice currChoice;
  BD21({required this.currChoice});

  @override
  Widget build(BuildContext context) {
    return ChoicePage(
        currChoice: currChoice, choices: [], isEnd: true, isGood: true);
  }
}

class BD22 extends StatelessWidget {
  final Choice currChoice;
  BD22({required this.currChoice});

  @override
  Widget build(BuildContext context) {
    shouldPop[0] = true;
    return ChoicePage(
        currChoice: currChoice, choices: [], isEnd: true, isGood: false);
  }
}
