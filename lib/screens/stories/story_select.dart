import 'package:flutter/material.dart';
import 'package:itec/models/choices.dart';
import 'package:itec/models/story.dart';
import 'package:itec/screens/stories/global_health/root.dart';
import 'package:itec/screens/stories/life_expectancy/root.dart';
import 'package:itec/screens/stories/maternal_mortality/root.dart';
import 'package:itec/screens/stories/polio/root.dart';
import 'package:itec/shared/empty.dart';

List<String> badgeNames = [
  'global_health',
  'polio',
  'maternal_mortality',
  'child_mortaliy',
  'malaria',
  'suicide',
  'burden_of_diseases',
  'eradication_of_diseases',
  'cause_of_death',
  'financing_healthcare',
  'smoking'
];

List<Choice> choices = [
  Choice(
      title: 'Global Health',
      definition:
          'Health is the most important aspect of our lives, both mentally and physically, meaning global health is the key to a functional and happy society.',
      description:
          'John is a 16 yo boy. He attends a normal school just as you do, but now he faces some challenges',
      img: "assets/26.png",
      endMessage: "",
      nextWidget: GH(
        currChoice: Choice(
            title: 'Global Health',
            definition:
                'Health is the most important aspect of our lives, both mentally and physically, meaning global health is the key to a functional and happy society.',
            description:
                'John is a 16 yo boy. He attends a normal school just as you do, but now he faces some challenges',
            img: "assets/26.png",
            nextWidget: Empty(),
            endMessage: ""),
      )),
  Choice(
    title: 'Polio',
    definition:
        'Polio is a deadly disease which spreads easily in less developed areas.',
    description: 'Aamina is a young african girl who went on a hike',
    img: "assets/27.png",
    endMessage: "",
    nextWidget: PO(
      currChoice: Choice(
        title: 'Polio',
        definition:
            'Polio is a deadly disease which spreads easily in less developed areas.',
        description: 'Aamina is a young african girl who went on a hike',
        img: "assets/27.png",
        endMessage: "",
        nextWidget: Empty(),
      ),
    ),
  ),
  Choice(
    title: 'Life Expectancy',
    definition: 'How much do people live on average',
    description:
        'Barry is an 18 year old young man, with some of his most important exams coming up.',
    img: "assets/28.png",
    endMessage: "",
    nextWidget: LE(
      currChoice: Choice(
        title: 'Life Expectancy',
        definition: 'How much do people live on average',
        description:
            'Barry is an 18 year old young man, with some of his most important exams coming up.',
        img: "assets/28.png",
        endMessage: "",
        nextWidget: Empty(),
      ),
    ),
  ),
  Choice(
    title: 'Maternal Mortality',
    definition: 'Mothers who die upon giving birth',
    description:
        "Nala is a young mother giving birth to her first child. She still doesn't really know how this works.",
    img: "assets/29.png",
    endMessage: "",
    nextWidget: MM(
      currChoice: Choice(
        title: 'Maternal Mortality',
        definition: 'Mothers who die upon giving birth',
        description:
            "Nala is a young mother giving birth to her first child. She still doesn't really know how this works.",
        img: "assets/29.png",
        endMessage: "",
        nextWidget: Empty(),
      ),
    ),
  ),
  Choice(
      title: 'Malaria',
      definition:
          'Malaria is a very dangerous and highly contagious disease, most commonly in Africa. This disease is transmitted by mosquitoes, so there numerous ways to prevent it.',
      description:
          ' In this story, we follow a 20 - year old African man named Ajani, who lives by himself. Even though, he knows it’s for the best, he always questions the following things',
      img: "",
      endMessage: "",
      nextWidget: MAL(
        currChoice: Choice(
            title: 'Malaria',
            definition:
                'Malaria is a very dangerous and highly contagious disease, most commonly in Africa. This disease is transmitted by mosquitoes, so there numerous ways to prevent it.',
            description:
                'In this story, we follow a 20 - year old African man named Ajani, who lives by himself. Even though, he knows it’s for the best, he always questions the following things',
            img: "",
            nextWidget: Empty(),
            endMessage: ""),
      )),
  Choice(
      title: 'Suicide',
      definition:
          'Suicide is a serious condition where a person injurs himself in the intent to die.',
      description:
          'Jacob is a 17 year old boy that fights with depression. He feels very unmotivated and sad and the tests that are coming up add to the already unimaginable pressure.',
      img: "",
      endMessage: "",
      nextWidget: SUI(
        currChoice: Choice(
            title: 'Malaria',
            definition:
                'Suicide is a serious condition where a person injurs himself in the intent to die.',
            description:
                'Jacob is a 17 year old boy that fights with depression. He feels very unmotivated and sad and the tests that are coming up add to the already unimaginable pressure.',
            img: "",
            nextWidget: Empty(),
            endMessage: ""),
      )),
  Choice(
      title: 'Burden of diseases',
      definition:
          'The spreading and carrying of diseases',
      description:
          'Bjorn is a 25 year old man. He likes to go out a lot with friends and party.',
      img: "",
      endMessage: "",
      nextWidget: BD(
        currChoice: Choice(
            title: 'Global Health',
            definition:
                'The spreading and carrying of diseases',
            description:
                'Bjorn is a 25 year old man. He likes to go out a lot with friends and party',
            img: "",
            nextWidget: Empty(),
            endMessage: ""),
      )),
  Choice(
      title: 'Eradication of diseases',
      definition:
          'To reduce the number  of diseases and infections to zero.',
      description:
          'Muhammed was thinking about the problems that diseases cause every year and now he wants to help other people by finding out ways to prevent diseases',
      img: "",
      endMessage: "",
      nextWidget: ERAD(
        currChoice: Choice(
            title: 'Eradication of diseases',
            definition:
                'To reduce the number  of diseases and infections to zero.',
            description:
                'Muhammed was thinking about the problems that diseases cause every year and now he wants to help other people by finding out ways to prevent diseases',
            img: "",
            nextWidget: Empty(),
            endMessage: ""),
      )),
  Choice(
      title: 'Causes of death',
      definition:
          'People unfortunately can die from a lot of factors.',
      description:
          'Lin has been started realizing that everyone dies and wants to live as long as he can while still living a happy life',
      img: "",
      endMessage: "",
      nextWidget: CD(
        currChoice: Choice(
            title: 'Causes of death',
            definition:
                'People unfortunately can die from a lot of factors.',
            description:
                'Lin has been started realizing that everyone dies and wants to live as long as he can while still living a happy life',
            img: "",
            nextWidget: Empty(),
            endMessage: ""),
      )),
  Choice(
      title: 'Financing healthcare',
      definition:
          'In some countries, healthcare is not free which is a financial problem to a lot of people',
      description:
          'Kojo wants to start helping with other people’s health but doesnt know what he should do about that',
      img: "",
      endMessage: "",
      nextWidget: CD(
        currChoice: Choice(
            title: 'Financing healthcare',
            definition:
                'In some countries, healthcare is not free which is a financial problem to a lot of people',
            description:
                'Kojo wants to start helping with other people’s health but doesnt know what he should do about that',
            img: "",
            nextWidget: Empty(),
            endMessage: ""),
      )),
  Choice(
      title: 'Smoking',
      definition:
          'Consuming burnt nicotine products that can lead to health issues.',
      description:
          'Kojo has a smoking addiction and tries to get rid of it',
      img: "",
      endMessage: "",
      nextWidget: SM(
        currChoice: Choice(
            title: 'Financing healthcare',
            definition:
                'Consuming burnt nicotine products that can lead to health issues.',
            description:
                'Kojo has a smoking addiction and tries to get rid of it',
            img: "",
            nextWidget: Empty(),
            endMessage: ""),
      )),
];

class StorySelect extends StatefulWidget {
  const StorySelect({Key? key}) : super(key: key);

  @override
  State<StorySelect> createState() => _StorySelectState();
}

class _StorySelectState extends State<StorySelect> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('Lessons'),
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: choices.length,
        itemBuilder: (BuildContext context, int index) {
          return ChoiceCard(choice: choices[index]);
        },
      ),
    );
  }
}
