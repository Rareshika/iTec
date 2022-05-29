import 'package:flutter/material.dart';
import 'package:itec/models/choices.dart';
import 'package:itec/models/story.dart';
import 'package:itec/screens/stories/global_health/root.dart';
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
      img: "",
      endMessage: "",
      nextWidget: GH(
        currChoice: Choice(
            title: 'Global Health',
            definition:
                'Health is the most important aspect of our lives, both mentally and physically, meaning global health is the key to a functional and happy society.',
            description:
                'John is a 16 yo boy. He attends a normal school just as you do, but now he faces some challenges',
            img: "",
            nextWidget: Empty(),
            endMessage: ""),
      )),
  // Story(
  //     title: 'Polio',
  //     definition:
  //         'Polio is a deadly disease which spreads easily in less developed areas.',
  //     description: 'Aamina is a young african girl who went on a hike.'),
  // Story(
  //     title: 'Life Expectancy',
  //     definition: 'How much will people live on average',
  //     description:
  //         'Barry is an 18 year old young man, with some of his most important exams coming up.'),
  // Story(
  //   title: 'Maternal Mortality',
  //   definition: 'Mothers who die upon giving birth',
  //   description:
  //       "Nala is a young mother giving birth to her first child. She still doesn't really know how this works.",
  // ),
  // Story(
  //   title: 'Child Mortality',
  //   definition:
  //       "It represents the number of deaths of children between the ages of one and five years old.	",
  //   description: "25 year old Mary is going to have a baby soon…",
  // ),
  // Story(
  //   title: 'Malaria',
  //   definition:
  //       'Malaria is a very dangerous and highly contagious disease, most commonly in Africa.',
  //   description:
  //       'In this story, we follow a 20 - year old African man named Ajani, who lives by himself.',
  // ),
  // Story(
  //   title: 'Suicide',
  //   definition:
  //       'Suicide is a serious condition where a person injurs himself in the intent to end his life.',
  //   description:
  //       "Jacob is a 17 year old boy that fights with depression. He feels very unmotivated and sad...",
  // ),
  // Story(
  //   title: 'Burden of diseases',
  //   definition: 'The spreading and carrying of diseases',
  //   description:
  //       "Bjorn is a 25 year old man. He likes to go out a lot with friends and party",
  // ),
  // Story(
  //     title: 'Eradication of diseases',
  //     definition: 'To reduce the number  of diseases and infections to zero.',
  //     description:
  //         'Muhammed was thinking about the problems that diseases cause every year...'),
  // Story(
  //     title: 'Causes of death',
  //     definition: 'People unfortunately can die from a lot of factors.',
  //     description:
  //         "Lin has been started realizing that everyone dies and wants to live as long as he can..."),
  // Story(
  //     title: 'Financing healthcare',
  //     definition: "Helping healthcare by doing something freely for them.",
  //     description:
  //         "Kojo wants to start helping with other people’s health but doesn't know what he should do..."),
  // Story(
  //     title: 'Smoking',
  //     definition:
  //         "Consuming burnt nicotine products that can lead to health issues.",
  //     description:
  //         "Juan has been having some issues lately with his smoking addictions..."),
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
        title: Text('Povestioare'),
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
