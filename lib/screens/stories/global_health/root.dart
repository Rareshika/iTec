import 'package:flutter/material.dart';
import 'package:itec/models/choices.dart';
import 'package:itec/models/story.dart';

List<Story> choices = [
  Story(title: "Burger VS Salad", description: "John has been gaining some weight recently. He's been thinking about what to eat at dinner today. What do you think he should do?", definition: ""),
  Story(title: "Is fitness really worth it?", description: "John’s friends started going to the gym recently and invited him to join them. He starts questioning if it is really worth it.", definition: ""),
  Story(title: "Am I wasting my time?", description: "John started high school recently. His colleagues try to befriend him, but fail. He thinks about having a conversation with them.", definition: "")
];

class GH1 extends StatelessWidget {
  const GH1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Global Health'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: Colors.red,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                  'John is a 16 yo boy. He attends a normal school just as you do, but now he faces some challenges:'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Pick a scenario:'),
            ],
          ),
          Row(
            children: [
              ChoiceCard(story: choices[0]),
              ChoiceCard(story: choices[1]),
              ChoiceCard(story: choices[2])
            ],
          ),
        ],
      ),
    );
  }
}
