import 'dart:math';
import '../models/post.dart';

final Random _rand = Random();

int getRand(int max) => (_rand.nextDouble() * (max - 1) + 1).floor();

String getRandTime() {
  const units = ['m', 'h', 'd'];
  return '${getRand(6)}${units[getRand(4) - 1]}';
}

final List<Post> posts = [
  Post(
    userImg: 'assets/users/1.jpeg',
    user: 'Rayaa Ismail',
    img: 'assets/posts/1.jpeg',
    text: 'فريقك تحصل علي ركلة جزاء ف الدقيقة 94ف نهائي\n ابطال من تختار لتنفيذ ؟',
    time: getRandTime(),
    likes: getRand(100),
    comments: getRand(999),
    shares: getRand(20),
  ),
  Post(
    userImg: 'assets/users/2.jpeg',
    user: 'Sohyb Aweina',
    img: 'assets/posts/2.jpeg',
    text: 'تحشتها',
    time: getRandTime(),
    likes: getRand(100),
    comments: getRand(999),
    shares: getRand(20),
  ),
  Post(
    userImg: 'assets/users/3.jpeg',
    user: 'Levi Ackermann',
    img: 'assets/posts/3.jpeg',
    text: 'واش صافي عاقو بهاد النصاب اللي رون ليهوم الفرقة اللي الاغلبية مبغاش اتقبلها',
    time: getRandTime(),
    likes: getRand(100),
    comments: getRand(999),
    shares: getRand(20),
  ),
  Post(
    userImg: 'assets/users/4.jpeg',
    user: 'Mohamed DiDi',
    img: 'assets/posts/4.jpeg',
    text: '',
    time: getRandTime(),
    likes: getRand(100),
    comments: getRand(999),
    shares: getRand(20),
  ),
  Post(
    userImg: 'assets/users/5.jpeg',
    user: 'GR Adem',
    img: 'assets/posts/5.jpeg',
    text: 'عاجل:  شمشون كيحاول يلقا وصفة أمين مول طون',
    time: getRandTime(),
    likes: getRand(100),
    comments: getRand(999),
    shares: getRand(20),
  ),
  Post(
    userImg: 'assets/users/6.jpeg',
    user: 'Jack Smith',
    img: 'assets/posts/6.jpeg',
    text: '"If you take care of things , they last."',
    time: getRandTime(),
    likes: getRand(100),
    comments: getRand(999),
    shares: getRand(20),
  ),
  Post(
    userImg: 'assets/users/7.jpeg',
    user: 'Abd Lwahid',
    img: 'assets/posts/7.jpeg',
    text: 'true 😹',
    time: getRandTime(),
    likes: getRand(100),
    comments: getRand(999),
    shares: getRand(20),
  ),
  Post(
    userImg: 'assets/users/8.jpeg',
    user: 'Uchiha Bemo',
    img: 'assets/posts/8.jpeg',
    text: 'صورة مُسربة ليك وانت بتعوض فالترم التاني:',
    time: getRandTime(),
    likes: getRand(100),
    comments: getRand(999),
    shares: getRand(20),
  ),
  Post(
    userImg: 'assets/users/9.jpeg',
    user: 'Smail Draider',
    img: 'assets/posts/9.jpeg',
    text: '',
    time: getRandTime(),
    likes: getRand(100),
    comments: getRand(999),
    shares: getRand(20),
  ),
  Post(
    userImg: 'assets/users/10.jpeg',
    user: 'Zoe Tw',
    img: 'assets/posts/10.jpeg',
    text: 'it takes two اليوم برعاية',
    time: getRandTime(),
    likes: getRand(100),
    comments: getRand(999),
    shares: getRand(20),
  ),
  Post(
    userImg: 'assets/users/11.jpeg',
    user: 'سينغوكو سان',
    img: 'assets/posts/11.jpeg',
    text: '',
    time: getRandTime(),
    likes: getRand(100),
    comments: getRand(999),
    shares: getRand(20),
  ),
  Post(
    userImg: 'assets/users/12.jpeg',
    user: 'Ayman Lam',
    img: 'assets/posts/12.jpeg',
    text: 'اوفففف طلعو ليا هاد المواعن فكري 😓💔',
    time: getRandTime(),
    likes: getRand(100),
    comments: getRand(999),
    shares: getRand(20),
  ),
  Post(
    userImg: 'assets/users/13.jpeg',
    user: 'Youned Stark',
    img: 'assets/posts/13.jpeg',
    text: '',
    time: getRandTime(),
    likes: getRand(100),
    comments: getRand(999),
    shares: getRand(20),
  ),
];

String getRandUser() {
  final r = (Random().nextDouble() * (posts.length - 1)).floor();
  return posts[r].user.split(' ')[0];
}

List<Post> getPosts() {
  List<Post> table = List<Post>.from(posts);
  for (int i = 0; i < table.length; i++) {
    int r = (Random().nextDouble() * (table.length - 1)).floor();
    Post temp = table[i];
    table[i] = table[r];
    table[r] = temp;
  }
  return table;
}