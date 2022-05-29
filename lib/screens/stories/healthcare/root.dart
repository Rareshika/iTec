import 'package:flutter/material.dart';
import 'package:itec/models/choices.dart';
import 'package:itec/models/story.dart';
import 'package:itec/shared/empty.dart';

List<bool> shouldPop = [false, false, false];
List<Choice> choices = [
  Choice(
      title: "Donating",
      description:"Kojo(who has some spare change), saw a money collecting box for a non profit health organization, what should he do?",
      definition: "",
      img: "",
      endMessage: "",
      nextWidget: HP1()),
  Choice(
      title: "Volunteer",
      description:"Kojo goes and volunteers at the hospital and in the end he gets the satisfaction of helping other people and treating them.",
      definition: "",
      img: "",
      endMessage: "",
      nextWidget: HP2())
];

class HP extends StatelessWidget {
  final Choice currChoice;
  HP({required this.currChoice});
  @override
  Widget build(BuildContext context) {
    return ChoicePage(
        currChoice: currChoice, choices: choices, isEnd: false, isGood: false);
  }
}

class HP1 extends StatelessWidget {
  HP1({Key? key}) : super(key: key);

  List<Choice> newChoices = [
    Choice(
        title: 'Does not donate',
        description: 'Not this time',
        img: "",
        endMessage: "",
        nextWidget: HP11(
            currChoice: Choice(
                title: 'Does not donate',
                description: 'Not this time',
                img: "",
                definition: "",
                endMessage:
                    "Kojo does not donate to the organization and he feels a little bad about that, because somebody needs that spare change more than he does.:<",
                nextWidget: Empty())),
        definition: ""),
    Choice(
        title: 'Donates',
        description: "It is for a good cause",
        definition: "",
        img: "",
        endMessage: "",
        nextWidget: HP12(
            currChoice: Choice(
                title: 'Donates',
                description: "It is for a good cause",
                img: "",
                endMessage:
                    "Kojo donates to the organization and he feels good for helping other people who need the spare change more than he does and ends up saving someone’s life.", 
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

class HP2 extends StatelessWidget {
  HP2({Key? key}) : super(key: key);

  List<Choice> newChoices = [
    Choice(
        title: 'Volunteers',
        description: 'Helping does not hurt',
        img: "",
        endMessage: "",
        nextWidget: HP21(
            currChoice: Choice(
                title: 'Volunteers',
                description: 'Helping does not hurt',
                img: "",
                definition: "",
                endMessage:
                    "Kojo goes and volunteers at the hospital and in the end he gets the satisfaction of helping other people and treating them.",
                nextWidget: Empty())),
        definition: ""),
    Choice(
        title: 'Does not volunteer',
        description: "Maybe another time",
        img: "",
        endMessage: "",
        nextWidget: HP22(
            currChoice: Choice(
                title: 'Does not volunteer',
                description: "Maybe another time",
                img: "",
                definition: "",
                endMessage:
                    "Kojo does not go and volunteer at the hospital and he feels guilty because he could but he did not help other people with their issues.",
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

class HP11 extends StatelessWidget {
  final Choice currChoice;
  HP11({required this.currChoice});

  @override
  Widget build(BuildContext context) {
    return ChoicePage(
        currChoice: currChoice, choices: [], isEnd: true, isGood: false);
  }
}

class HP12 extends StatelessWidget {
  final Choice currChoice;
  HP12({required this.currChoice});

  @override
  Widget build(BuildContext context) {
    shouldPop[0] = true;
    return ChoicePage(
        currChoice: currChoice, choices: [], isEnd: true, isGood: true);
  }
}

class HP21 extends StatelessWidget {
  final Choice currChoice;
  HP21({required this.currChoice});

  @override
  Widget build(BuildContext context) {
    return ChoicePage(
        currChoice: currChoice, choices: [], isEnd: true, isGood: false);
  }
}

class HP22 extends StatelessWidget {
  final Choice currChoice;
  HP22({required this.currChoice});

  @override
  Widget build(BuildContext context) {
    shouldPop[0] = true;
    return ChoicePage(
        currChoice: currChoice, choices: [], isEnd: true, isGood: true);
  }
}
