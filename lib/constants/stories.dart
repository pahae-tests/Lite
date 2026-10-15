import 'dart:math';
import '../models/story.dart';

int getRand(int max) => (Random().nextDouble() * (max - 1) + 1).floor();

final List<Story> stories = [
  Story(user: 'Monsef EL', img: 'assets/stories/1.jpeg', sum: getRand(4)),
  Story(user: 'Amine XI', img: 'assets/stories/2.jpeg', sum: getRand(4)),
  Story(user: 'Simo Merouah', img: 'assets/stories/3.jpeg', sum: getRand(4)),
  Story(user: 'Saad Choukri', img: 'assets/stories/4.jpeg', sum: getRand(4)),
  Story(user: 'RaYan III', img: 'assets/stories/5.jpeg', sum: getRand(4)),
  Story(user: 'Azedine Attoufy', img: 'assets/stories/6.jpeg', sum: getRand(4)),
];

String getRandUserStory() {
  final r = (Random().nextDouble() * (stories.length - 1)).floor();
  return stories[r].user;
}

List<Story> getStories() {
  List<Story> table = List<Story>.from(stories);
  for (int i = 0; i < table.length; i++) {
    int r = (Random().nextDouble() * (table.length - 1)).floor();
    Story temp = table[i];
    table[i] = table[r];
    table[r] = temp;
  }
  return table;
}