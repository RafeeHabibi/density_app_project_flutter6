import 'package:flutter/material.dart';
import 'package:density_app_project_flutter6/story_brain.dart';

void main() => runApp(const Destiny());

class Destiny extends StatelessWidget {
  const Destiny({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: StoryPage(),
    );
  }
}

class StoryPage extends StatefulWidget {
  const StoryPage({super.key});

  @override
  _StoryPageState createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {

  StoryBrain objStoryBrain = StoryBrain();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.blue,
                Colors.green,
              ],
            ),
          ),
          padding: const EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
          constraints: const BoxConstraints.expand(),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                  flex: 12,
                  child: Center(
                    child: Text(
                      objStoryBrain.getStory(),
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.justify,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        objStoryBrain.nextStory(1);
                      });
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.blue[700],
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(22)),
                    ),
                    child: Text(
                      objStoryBrain.getChoice1(),
                      textDirection: TextDirection.rtl,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                Expanded(
                  flex: 2,
                  child: Visibility(
                    visible: objStoryBrain.buttonShouldBeVisible(),
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          objStoryBrain.nextStory(2);
                        });
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.green[700],
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(22)),
                      ),
                      child: Text(
                        objStoryBrain.getChoice2(),
                        textDirection: TextDirection.rtl,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

